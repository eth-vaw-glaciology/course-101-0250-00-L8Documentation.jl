using Test

include("../scripts/car_travels.jl")

@testset "update_position" begin
    @test update_position(0.0, 10, 1, 1, 200)[1] ≈ 10.0
    @test update_position(0.0, 10, 1, 1, 200)[2] == 1

    @test update_position(0.0, 10, -1, 1, 200)[1] ≈ -10.0
    @test update_position(0.0, 10, -1, 1, 200)[2] == 1

    @test update_position(0.0, 10, -1, 1, 200)[1] ≈ -10.0
    @test update_position(0.0, 10, -1, 1, 200)[2] == 1
end
