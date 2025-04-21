#include "Neuron/NeuronMap.hpp"

NeuronMap* NeuronMap::map = nullptr; 

NeuronMap* NeuronMap::getInstance() {
    if(map == nullptr){
        map = new NeuronMap();
    }

    return map;
}

NeuronID NeuronMap::createNeuron() {
    NeuronID id{current_block_id, next_neuron_index++};
    neurons[id] = new Neuron(id);
    return id;
}

Neuron* NeuronMap::getNeuron(const NeuronID& id){
    auto neuron = neurons.find(id);
    if(neuron != neurons.end()) return neuron->second;
    return nullptr;
}