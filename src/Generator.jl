function generateProductionPlanningProblem(num_products::Int64, num_resources::Int64 = 0; 
    min_value::Int64 = 1000, max_value::Int64 = 10000)::Union{ProductionPlanningProblem, Nothing}
    
    if num_resources == 0
        num_resources = num_products
    end

    if !checkInput(num_products, num_resources, min_value, max_value)
        return nothing
    end

    profits = rand(min_value:0.01:max_value, num_products)
    availabilities = rand(min_value:0.01:max_value, num_resources)
    consumptions = rand((min_value / 100.0 / num_products):0.01:(max_value / 100.0 / num_products), num_resources, num_products)

    return ProductionPlanningProblem(profits, availabilities, consumptions)
end

function checkInput(num_products::Int64, num_resources::Int64, min_value::Int64, max_value::Int64)
    ok = true

    if num_products < 1
        @error("Number of products must be greater than zero.")
        ok = false
    end
    
    if num_resources < 1
        @error("Number of resources must be greater than zero.")
        ok = false
    end
    
    if min_value < 0
        @error("Minimum value must be nonnegative.")
        ok = false
    end

    if max_value < 0
        @error("Maximum value must be nonnegative.")
        ok = false
    end

    if min_value > max_value
        @error("Maximum value must be greater or equal than minimum value.")
        ok = false
    end

    return ok
end
