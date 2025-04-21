#include "Neuron/Neuron.hpp"

#include "Neuron/NeuronMap.hpp"

#include <fmt/base.h>

Neuron::Neuron(NeuronID id, uint16_t resting, uint16_t thresh, uint8_t refactory) :
    neuronID(id), membrainPotential(resting), restingPotential(resting), threshold(thresh), 
     refractoryTimer(0), refractoryPeriod(refactory), spiked(false){

}

void Neuron::addSynapse(const Synapse& syn){
    synapses.push_back(syn);
}

void Neuron::recordSpike(uint32_t depth, uint32_t synapseID){
    spikeHistory.push_back({synapseID, depth});
}

void Neuron::spike(uint32_t depth){
    spiked = true;

    fmt::print("Neuron: {}, Spiked! at Depth: {}\n", neuronID.toString(), depth);
    depth++;

    for(uint32_t i = 0; i < synapses.size(); i++){
        Synapse synapse = synapses[i];
        uint16_t outputSignal = membrainPotential * synapse.weight / 65535;

        Neuron* n = NeuronMap::getInstance()->getNeuron(synapse.target);
        if(n == nullptr) return;
    
        n->receivedInput(outputSignal, depth);        
    }
}

void Neuron::receivedInput(uint16_t input, uint32_t depth){

    auto now = std::chrono::steady_clock::now();
    auto elapsed = std::chrono::duration_cast<std::chrono::milliseconds>(now - lastInputTime).count();

    if (refractoryTimer > 0) {
        uint8_t ticks = static_cast<uint8_t>(elapsed / 100);
        if(ticks >= refractoryTimer){
            refractoryTimer = 0;
        } else {
            refractoryTimer -= ticks;
            lastInputTime = now;
            return;
        }
    }

    

    if(membrainPotential > restingPotential && elapsed > 0){
        uint16_t decay = static_cast<uint16_t>((elapsed / 100));
        membrainPotential = (membrainPotential > decay) ? membrainPotential - decay : restingPotential;
    }

    membrainPotential += input;

    if(membrainPotential >= threshold) {
        spike(depth);
    }

    

    lastInputTime = now;
}

void Neuron::rewardAmmount(uint8_t ammount){
    while (!spikeHistory.empty())
    {
        SpikeRecord record = spikeHistory.front();
        spikeHistory.pop_front();

        // ok so i may want to change this because exp has a huge perfromance impact
        float decay = std::exp(-0.1f * record.depth);

        int16_t rewardDelta = static_cast<int16_t>(ammount * decay);

        uint32_t newWeight = synapses[record.synapseID].weight + rewardDelta;

        if(newWeight > UINT16_MAX) newWeight = UINT16_MAX;
        
        synapses[record.synapseID].weight = static_cast<uint16_t>(newWeight);
    }
    
}