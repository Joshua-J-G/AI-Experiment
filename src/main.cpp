#include <iostream>

#include <fmt/core.h>
#include <fmt/color.h>

int main() {
    fmt::print(fg(fmt::rgb(0, 162, 255)),"The Ai Experiment v1\n");
    fmt::print(fg(fmt::rgb(238, 78, 57)), "by Joshua Gessner\n");

    


    return 0;
}