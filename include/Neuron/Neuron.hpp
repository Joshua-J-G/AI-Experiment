#pragma once

#include <cstdint>
#include <stdint.h>
#include <string>

#include <vector>
#include <deque>
#include <chrono>

// i could do block indexing 
// or i could create a dynamicint class. 
// i have to figure out which is better for the gpu though

// this uses 6 bytes instead of 8 for using uint64_t  
struct NeuronID 
{
    uint16_t blockID;
    uint32_t neuronIndex;

    bool operator==(const NeuronID& other) const {
        return blockID == other.blockID && neuronIndex == other.neuronIndex;
    }

    std::string toString() const {
        return "block: " + std::to_string(blockID) + " index: " + std::to_string(neuronIndex); 
    }


};

namespace std {
    template<>
    struct hash<NeuronID> {
        std::size_t operator()(const NeuronID& id) const noexcept {
            std::size_t h1 = std::hash<uint16_t>{}(id.blockID);
            std::size_t h2 = std::hash<uint32_t>{}(id.neuronIndex);
            return h1 ^ (h2 << 1);
        }
    };
}

struct Synapse {
    NeuronID target;
    uint16_t weight;
};

struct SpikeRecord {
    uint32_t synapseID;
    uint32_t depth;
};


class Neuron
{
private:
    NeuronID neuronID;

    uint16_t membrainPotential;
    uint16_t restingPotential;
    uint16_t threshold;
    uint8_t refractoryTimer;
    uint8_t refractoryPeriod;

    bool spiked;

    std::vector<Synapse> synapses;

    std::chrono::steady_clock::time_point lastInputTime;
    
    std::deque<SpikeRecord> spikeHistory;

    void spike(uint32_t depth);
    void recordSpike(uint32_t depth, uint32_t synapseID);
public:
    Neuron(NeuronID id, uint16_t resting = 1000, uint16_t thresh = 40, uint8_t refactory = 3);
    ~Neuron();

    bool didSpike() const { return spiked; }
    const std::vector<Synapse>& getSynapses() const { return synapses; }

    void addSynapse(const Synapse& syn);

    void receivedInput(uint16_t input, uint32_t depth = 0);

    void rewardAmmount(uint8_t ammount);
};

