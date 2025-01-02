@testset "MyBar" begin
    p = MyBar(1,1)
    @test mysum(p) == 2
    @test myprod(p) == 1
end