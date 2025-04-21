#pragma once

#include <unordered_map>
#include "Neuron/Neuron.hpp"

class NeuronMap {
private:
    uint16_t current_block_id = 0;
    uint32_t next_neuron_index = 0;

    std::unordered_map<NeuronID, Neuron*> neurons;

    static NeuronMap* map;
public:
    static NeuronMap* getInstance();

    NeuronID createNeuron();

    Neuron* getNeuron(const NeuronID& id);
};