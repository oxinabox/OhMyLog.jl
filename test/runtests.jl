using OhMyLog
using Test

@testset "forcerepeat overwrite" begin
    @info "A"^8 overwrite_lastlog=true
    sleep(0.5)
    @info "B"^8 overwrite_lastlog=true
    sleep(0.5)
    @info "C"^8 overwrite_lastlog=true
    sleep(0.5)
    @info "D"^8 overwrite_lastlog=true
    sleep(0.5)
    @info "E"^8 overwrite_lastlog=true
    sleep(0.5)

    @info "F"^3 n=2 overwrite_lastlog=true 
    sleep(0.5)
    @info "G"^3 n=3 m=3  overwrite_lastlog=true 
     sleep(0.5)
    @info "H"^3  overwrite_lastlog=true 


end

@testset "repeat overwrite" begin
    for ii in 1:10
        @info "It happen" ii
        sleep(0.5)
    end
    
    for ii in 1:10
        @info "Different thing happen" ii doubleii=2ii
        sleep(0.5)
    end
end


@testset "don't repeat overwrite" begin
    for ii in 1:10
        @info "seperate happen" ii overwrite_lastlog=false
        sleep(0.5)
    end
end
