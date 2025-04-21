#include <iostream>

#include <fmt/core.h>
#include <fmt/color.h>

#include "Neuron/NeuronMap.hpp"

int main() {
    fmt::print(fg(fmt::rgb(0, 162, 255)),"The Ai Experiment v1\n");
    fmt::print(fg(fmt::rgb(238, 78, 57)), "by Joshua Gessner\n");

    NeuronMap* map = NeuronMap::getInstance();

    NeuronID n1 = map->createNeuron();
    NeuronID n2 = map->createNeuron();
    NeuronID n3 = map->createNeuron();

    Neuron* n1e = map->getNeuron(n1);
    Neuron* n2e = map->getNeuron(n2);
    Neuron* n3e = map->getNeuron(n3);

    n1e->addSynapse({n2, 200});
    n1e->addSynapse({n3, 100});
    n2e->addSynapse({n3, 200});

    n1e->receivedInput(400000);

    return 0;
}