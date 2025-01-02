using MyPkgTest
using Documenter

# DocMeta.setdocmeta!(MyPkgTest, :DocTestSetup, :(using MyPkgTest); recursive=true)

makedocs(;
    modules=[MyPkgTest],
    authors="PDE2718",
    sitename="MyPkgTest.jl",
    format=Documenter.HTML(;
        canonical="https://PDE2718.github.io/MyPkgTest.jl",
        edit_link="main",
        assets=String[],
        # https://documenter.juliadocs.org/stable/man/latex/
        mathengine=
        Documenter.KaTeX(
            Dict(:delimiters => [
                Dict(:left => raw"$",   :right => raw"$",   display => false),
                Dict(:left => raw"$$",  :right => raw"$$",  display => true),
                Dict(:left => raw"\[",  :right => raw"\]",  display => true),
                ],
                :macros => Dict("\\RR" => "\\mathbb{R}",
                    raw"\Xi" => raw"X_{i}",
                    raw"\Ru" => raw"R_{\mathrm{univ.}}",
                    raw"\Pstd" => raw"P_{\mathrm{std}}",
                    raw"\Tstd" => raw"T_{\mathrm{std}}",
                ),
            )
        )
    ),
    pages=[
        "Home" => "index.md",
        "CustomInfo" => "custom1.md",
        "TheSecondPage" => "custom2.md",
    ],
)

deploydocs(;
    repo="github.com/PDE2718/MyPkgTest.jl",
    target = "gh-pages",
    devbranch="main",
    devurl="main",
    versions = ["main" => "main"],
)
