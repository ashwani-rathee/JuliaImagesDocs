using MultiDocumenter

clonedir = mktempdir()

docs = [
    MultiDocumenter.MegaDropdownNav("Mega Debugger", [
        MultiDocumenter.Column("High Level Packages", [
            MultiDocumenter.MultiDocRef(
                upstream = joinpath(clonedir, "ImageFiltering"),
                path = "filter",
                name = "ImageFiltering",
                giturl = "https://github.com/JuliaImages/ImageFiltering.jl.git",
            ),
            MultiDocumenter.MultiDocRef(
                upstream = joinpath(clonedir, "DitherPunk"),
                path = "dither",
                name = "DitherPunk",
                giturl = "https://github.com/JuliaImages/DitherPunk.jl.git",
            ),
        ]),
        MultiDocumenter.Column("Visualisation", [
            MultiDocumenter.MultiDocRef(
                upstream = joinpath(clonedir, "ImageView"),
                path = "imgview",
                name = "ImageView",
                giturl = "https://github.com/JuliaImages/ImageView.jl.git",
            ),
            MultiDocumenter.MultiDocRef(
                upstream = joinpath(clonedir, "ImageInTerminal"),
                path = "imginterminal",
                name = "ImageInTerminal",
                giturl = "https://github.com/JuliaImages/ImageInTerminal.jl.git",
            ),
        ]),
    ]),
    MultiDocumenter.MultiDocRef(
        upstream = joinpath(clonedir, "DataSets"),
        path = "data",
        name = "DataSets",
        giturl = "https://github.com/JuliaComputing/DataSets.jl.git",
        # or use ssh instead for private repos:
        # giturl = "git@github.com:JuliaComputing/DataSets.jl.git",
    ),
]

outpath = joinpath(@__DIR__, "out")

MultiDocumenter.make(
    outpath,
    docs;
    search_engine = MultiDocumenter.SearchConfig(
        index_versions = ["stable"],
        engine = MultiDocumenter.FlexSearch
    )
)