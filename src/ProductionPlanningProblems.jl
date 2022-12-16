module ProductionPlanningProblems

export ProductionPlanningProblem, Solution
export loadProductionPlanningProblem, generateProductionPlanningProblem
export np, nr
export validateSolution

const EPS = 1e-3

using Printf

include("Data.jl")
include("Loader.jl")
include("Generator.jl")
include("Solution.jl")
include("Validator.jl")

end
