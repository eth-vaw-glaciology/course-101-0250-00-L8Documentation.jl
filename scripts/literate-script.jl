using Literate

# directory where the markdown files are put
md_dir = joinpath(@__DIR__, "md")
Literate.markdown("car_travel.jl", md_dir, execute=true, documenter=false, credit=false)
