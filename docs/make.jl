using MultiDocumenter

clonedir = mktempdir()

docs = [
    MultiDocumenter.MultiDocRef(
        upstream = joinpath(clonedir, "Home"),
        path = "stable",
        name = "Home",
        giturl = "https://github.com/JuliaImages/juliaimages.github.io.git",
        branch = "master",
        # or use ssh instead for private repos:
        # giturl = "git@github.com:JuliaComputing/DataSets.jl.git",
    ),
    MultiDocumenter.MegaDropdownNav("Package Ecosystem", [
        MultiDocumenter.Column("High Level Packages", [
            MultiDocumenter.MultiDocRef(
                upstream = joinpath(clonedir, "ImageFiltering"),
                path = "filter",
                name = "ImageFiltering",
                giturl = "https://github.com/JuliaImages/ImageFiltering.jl.git",
            ),
            # ImageCorners.jl
            MultiDocumenter.MultiDocRef(
                upstream = joinpath(clonedir, "ImageCorners"),
                path = "corners",
                name = "ImageCorners",
                giturl = "https://github.com/JuliaImages/ImageCorners.jl.git",
            ),
            # ColorQuantization.jl
            MultiDocumenter.MultiDocRef(
                upstream = joinpath(clonedir, "ColorQuantization"),
                path = "quantization",
                name = "ColorQuantization",
                giturl = "https://github.com/JuliaImages/ColorQuantization.jl.git",
            ),
            # OpenCV.jl
            MultiDocumenter.MultiDocRef(
                upstream = joinpath(clonedir, "OpenCV"),
                path = "opencv",
                name = "OpenCV",
                giturl = "https://github.com/JuliaImages/OpenCV.jl.git",
            ),
            # ImageSmooth
            MultiDocumenter.MultiDocRef(
                upstream = joinpath(clonedir, "ImageSmooth"),
                path = "smooth",
                name = "ImageSmooth",
                giturl = "https://github.com/JuliaImages/ImageSmooth.jl.git",
            ),
            # ImageTransformations
            MultiDocumenter.MultiDocRef(
                upstream = joinpath(clonedir, "ImageTransformations"),
                path = "transformations",
                name = "ImageTransformations",
                giturl = "https://github.com/JuliaImages/ImageTransformations.jl.git",
            ),

            # QRCoders.jl
            # MultiDocumenter.MultiDocRef(
            #     upstream = joinpath(clonedir, "QRCoders"),
            #     path = "qrcoders",
            #     name = "QRCoders",
            #     giturl = "https://github.com/JuliaImages/QRCoders.jl.git",
            # ),
            # ImageTransformations
            # MultiDocumenter.MultiDocRef(
            #     upstream = joinpath(clonedir, "ImageTransformations"),
            #     path = "transformations",
            #     name = "ImageTransformations",
            #     giturl = "https://github.com/JuliaImages/ImageTransformations.jl.git",
            # ),

            # works
            # ImageFeatures
            MultiDocumenter.MultiDocRef(
                upstream = joinpath(clonedir, "ImageFeatures"),
                path = "features",
                name = "ImageFeatures",
                giturl = "https://github.com/JuliaImages/ImageFeatures.jl.git",
            ),
            # ImageBinarization.jl
            # MultiDocumenter.MultiDocRef(
            #     upstream = joinpath(clonedir, "ImageBinarization"),
            #     path = "binarization",
            #     name = "ImageBinarization",
            #     giturl = "https://github.com/JuliaImages/ImageBinarization.jl.git",
            # ),

            # works
            # ExifViewer
            MultiDocumenter.MultiDocRef(
                upstream = joinpath(clonedir, "ExifViewer"),
                path = "exif",
                name = "ExifViewer",
                giturl = "https://github.com/JuliaImages/ExifViewer.jl.git",
            ),
            # ImageMorphology
            # MultiDocumenter.MultiDocRef(
            #     upstream = joinpath(clonedir, "ImageMorphology"),
            #     path = "morphology",
            #     name = "ImageMorphology",
            #     giturl = "https://github.com/JuliaImages/ImageMorphology.jl.git",
            # ),
        ]),
        MultiDocumenter.Column("Visualisation & Drawing", [
            # works
            MultiDocumenter.MultiDocRef(
                upstream = joinpath(clonedir, "ImageDraw"),
                path = "imgdraw",
                name = "ImageDraw",
                giturl = "https://github.com/JuliaImages/ImageDraw.jl.git",
            ),
        ]),
    ]),

]

outpath = joinpath(@__DIR__, "overview")

MultiDocumenter.make(
    outpath,
    docs;
    search_engine = MultiDocumenter.SearchConfig(
        index_versions = ["stable"],
        engine = MultiDocumenter.FlexSearch
    ),
)