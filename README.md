# ProductionPlanningProblems.jl

[![Stable](https://img.shields.io/badge/docs-stable-blue.svg)](https://rafaelmartinelli.github.io/ProductionPlanningProblems.jl/stable)
[![Dev](https://img.shields.io/badge/docs-dev-blue.svg)](https://rafaelmartinelli.github.io/ProductionPlanningProblems.jl/dev)
[![Build Status](https://github.com/rafaelmartinelli/ProductionPlanningProblems.jl/workflows/CI/badge.svg)](https://github.com/rafaelmartinelli/ProductionPlanningProblems.jl/actions)
[![Coverage](https://codecov.io/gh/rafaelmartinelli/ProductionPlanningProblems.jl/branch/main/graph/badge.svg)](https://codecov.io/gh/rafaelmartinelli/ProductionPlanningProblems.jl)
[![Project Status: Active – The project has reached a stable, usable state and is being actively developed.](https://www.repostatus.org/badges/latest/active.svg)](https://www.repostatus.org/#active)

This package generates Production Planning Problem instances.

## Usage

The type used by the package is `ProductionPlanningProblem`, defined as follows:

```julia
struct ProductionPlanningProblem
    profits::Vector{Float64}         # Profit for each product
    availabilities::Vector{Float64}  # Availability for each resource
    consumptions::Matrix{Float64}    # Resource x product consumption
end
```

Also, two helper functions are defined to obtain the number of products (```np```) and the number of resources (```nr```).

To generate an instance, use the following:

```julia
data = generateProductionPlanningProblem(num_products, num_resources; min_value, max_value)
```

Only the first argument is mandatory, and ```num_resouces``` defaults to ```num_products```.

## Installation

ProductionPlanningProblems is _NOT_ a registered Julia Package.  
You can install ProductionPlanningProblems through the Julia package manager.  
Open Julia's interactive session (REPL) and type:

```julia
] add https://github.com/rafaelmartinelli/ProductionPlanningProblems.jl
```

## Other packages

- [KnapsackLib.jl](https://github.com/rafaelmartinelli/Knapsacks.jl): Knapsack algorithms in Julia
- [GAPLib.jl](https://github.com/rafaelmartinelli/GAPLib.jl): Generalized Assignment Problem Lib
- [BPPLib.jl](https://github.com/rafaelmartinelli/BPPLib.jl): Bin Packing and Cutting Stock Lib
- [CARPData.jl](https://github.com/rafaelmartinelli/CARPData.jl): Capacitated Arc Routing Problem Lib
- TODO
