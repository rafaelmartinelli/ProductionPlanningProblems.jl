function generateProductionPlanningProblem(num_products::Int64, num_resources::Int64 = 0; 
    min_value::Int64 = 100, max_value::Int64 = 1000)::Union{ProductionPlanningProblem, Nothing}
    
    if num_resources == 0
        num_resources = num_products
    end

    if num_products < 1 || num_resources < 1 || min_value < 0 || max_value < 0 || min_value > max_value
        return nothing
    end

    profits = rand(min_value:0.01:max_value, num_products)
    availabilities = rand(min_value:0.01:max_value, num_resources)
    consumptions = rand(min_value:0.01:max_value, num_resources, num_products)

    return ProductionPlanningProblem(profits, availabilities, consumptions)
end
