using MyPkgTest
using Documenter

DocMeta.setdocmeta!(MyPkgTest, :DocTestSetup, :(using MyPkgTest); recursive=true)

makedocs(;
    modules=[MyPkgTest],
    authors="PDE2718",
    sitename="MyPkgTest.jl",
    format=Documenter.HTML(;
        canonical="https://PDE2718.github.io/MyPkgTest.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/PDE2718/MyPkgTest.jl",
    devbranch="main",
)
