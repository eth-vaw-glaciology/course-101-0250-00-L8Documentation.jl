using Test

include("../scripts/car_travels.jl")

@testset "update_position" begin
    @test update_position(0.0, 10, 1, 1, 200) == (10,1)
    @test update_position(0.0, 10, -1, 1, 200) == (-10,1)
    @test update_position(0.0, 10, -1, 1, 200) == (-10,1)
end
