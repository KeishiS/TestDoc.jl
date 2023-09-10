using TestDoc
using Documenter

DocMeta.setdocmeta!(TestDoc, :DocTestSetup, :(using TestDoc); recursive=true)

makedocs(;
    modules=[TestDoc],
    authors="KeishiS <sando.keishi.sp@alumni.tsukuba.ac.jp> and contributors",
    repo="https://github.com/KeishiS/TestDoc.jl/blob/{commit}{path}#{line}",
    sitename="TestDoc.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://KeishiS.github.io/TestDoc.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/KeishiS/TestDoc.jl",
    devbranch="main",
)
