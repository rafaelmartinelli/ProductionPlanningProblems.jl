struct Solution
    profit::Float64
    production::Vector{Float64}
end

function Base.show(io::IO, solution::Solution)
    @printf(io, "PPP Solution")
    @printf(io, " (profit = %.2f)", solution.profit)
end
