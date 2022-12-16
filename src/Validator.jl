function validateSolution(data::ProductionPlanningProblem, solution::Solution)::Bool
    violated = Int64[]
    for i in 1:nr(data)
        consumption = sum(data.consumptions[i, :] .* solution.production)
        if consumption - data.availabilities[i] > EPS
            push!(violated, i)
        end
    end

    if length(violated) > 0
        @warn("Violated availability of resources: $violated.")
        return false
    end
    return true
end
