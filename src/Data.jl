struct ProductionPlanningProblem
    profits::Vector{Float64}
    availabilities::Vector{Float64}
    consumptions::Matrix{Float64}
end

np(data::ProductionPlanningProblem)::Int64 = length(data.profits)
nr(data::ProductionPlanningProblem)::Int64 = length(data.availabilities)

function Base.show(io::IO, data::ProductionPlanningProblem)
    @printf(io, "PPP Data")
    @printf(io, " (|P| = %d,", np(data))
    @printf(io, " |R| = %d)", nr(data))
end
