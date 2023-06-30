using MultiDocumenter

clonedir = mktempdir()

docs = [
    MultiDocumenter.MultiDocRef(
        upstream = joinpath(clonedir, "ImageFiltering"),
        path = "imgfilter",
        name = "ImageFiltering",
        giturl = "https://github.com/JuliaImages/ImageFiltering.jl.git",
    ),
    MultiDocumenter.MegaDropdownNav("Packages", [

        MultiDocumenter.Column("High-Level Packages", [
            # DitherPunk.jl provides various image dithering operations.
            # ImageBinarization.jl provides various image binarization algorithms.
            # ImageContrastAdjustment.jl* supports image contrast enhancement and manipulation.
            # ImageMorphology.jl* provides several morphological operations for image processing.
            # ImageFiltering.jl* supports basic filtering operations.
            # ImageFeatures.jl is a package for identifying and characterizing "keypoints" (salient features) in images.
            # ImageQualityIndexes.jl* provides several image quality assessment indexes, e.g., PSNR and SSIM.
            # ImageTransformations.jl* provides functions related to geometric transformations.
            # ImageSegmentation.jl provides several image segmentation algorithms.
            # ImageInpainting.jl provides image inpainting algorithms in Julia
            MultiDocumenter.MultiDocRef(
                upstream = joinpath(clonedir, "ImageFiltering"),
                path = "imgfilter",
                name = "ImageFiltering",
                giturl = "https://github.com/JuliaImages/ImageFiltering.jl.git",
                branch = "stable"
            ),
            MultiDocumenter.MultiDocRef(
                upstream = joinpath(clonedir, "DitherPunk"),
                path = "dither",
                name = "DitherPunk",
                giturl = "https://github.com/JuliaImages/DitherPunk.jl.git",
            ),
            # MultiDocumenter.MultiDocRef(
            #     upstream = joinpath(clonedir, "ImageBinarization.jl"),
            #     path = "debug",
            #     name = "ImageBinarization",
            #     giturl = "https://github.com/JuliaImages/ImageBinarization.jl.git",
            # ),
            # MultiDocumenter.MultiDocRef(
            #     upstream = joinpath(clonedir, "ImageContrastAdjustment.jl"),
            #     path = "debug",
            #     name = "ImageContrastAdjustment",
            #     giturl = "https://github.com/JuliaImages/ImageContrastAdjustment.jl.git"
            # ),
            # MultiDocumenter.MultiDocRef(
            #     upstream = joinpath(clonedir, "ImageMorphology.jl"),
            #     path = "debug",
            #     name = "ImageMorphology",
            #     giturl = "https://github.com/JuliaImages/ImageMorphology.jl.git"
            # ),
            # MultiDocumenter.MultiDocRef(
            #     upstream = joinpath(clonedir, "ImageFeatures.jl"),
            #     path = "debug",
            #     name = "ImageFeatures",
            #     giturl = "https://github.com/JuliaImages/ImageFeatures.jl.git"
            # ),

            # MultiDocumenter.MultiDocRef(
            #     upstream = joinpath(clonedir, "ImageQualityIndexes.jl"),
            #     path = "debug",
            #     name = "ImageQualityIndexes",
            #     giturl = "https://github.com/JuliaImages/ImageQualityIndexes.jl.git"
            # # ),
            # MultiDocumenter.MultiDocRef(
            #     upstream = joinpath(clonedir, "ImageTransformations.jl"),
            #     path = "debug",
            #     name = "ImageTransformations",
            #     giturl = "https://github.com/JuliaImages/ImageTransformations.jl.git"
            # ),
            # MultiDocumenter.MultiDocRef(
            #     upstream = joinpath(clonedir, "ImageSegmentation.jl"),
            #     path = "debug",
            #     name = "ImageSegmentation",
            #     giturl = "https://github.com/JuliaImages/ImageSegmentation.jl.git"
            # ),
            # MultiDocumenter.MultiDocRef(
            #     upstream = joinpath(clonedir, "ImageInpainting.jl"),
            #     path = "debug",
            #     name = "ImageInpainting",
            #     giturl = "https://github.com/JuliaImages/ImageInpainting.jl.git"
            # ),
        ]),
        # MultiDocumenter.Column("Traits and Utilities", [
        #     # ImageAxes.jl supports AxisArrays.jl* to endow the axes with "meaning".
        #     # ImageMetadata.jl is a simple package providing utilities for working with images that have metadata attached.
        #     # ImageDraw.jl let you draw shapes on an image.
        #     # ImageDistances.jl is a Distances.jl wrapper for images.
        #     # OffsetArrays.jl supports arrays with arbitrary indices offsets.
        #     # MappedViews.jl provides lazy in-place transformations of arrays.
        #     # PaddedViews.jl add virtual padding to the edges of an array. It also allows you to composite multiple images together.
        #     # TestImages.jl provides several "standard" test images.
        #     MultiDocumenter.MultiDocRef(
        #         upstream = joinpath(clonedir, "ImageAxes.jl"),
        #         path = "inf",
        #         name = "ImageAxes",
        #         giturl = "https://github.com/JuliaImages/ImageAxes.jl.git",
        #     ),
        #     MultiDocumenter.MultiDocRef(
        #         upstream = joinpath(clonedir, "ImageMetadata.jl"),
        #         path = "debug",
        #         name = "ImageMetadata",
        #         giturl = "https://github.com/JuliaImages/ImageMetadata.jl.git",
        #     ),
        #     MultiDocumenter.MultiDocRef(
        #         upstream = joinpath(clonedir, "ImageDraw.jl"),
        #         path = "debug",
        #         name = "ImageDraw",
        #         giturl = "https://github.com/JuliaImages/ImageDraw.jl.git",
        #     ),
        #     # MultiDocumenter.MultiDocRef(
        #     #     upstream = joinpath(clonedir, "ImageDistances.jl"),
        #     #     path = "debug",
        #     #     name = "ImageDistances",
        #     #     giturl = "https://github.com/JuliaImages/ImageDistances.jl.git",
        #     # ),
        #     # MultiDocumenter.MultiDocRef(
        #     #     upstream = joinpath(clonedir, "OffsetArrays.jl"),
        #     #     path = "debug",
        #     #     name = "OffsetArrays",
        #     #     giturl = "https://github.com/JuliaArrays/OffsetArrays.jl.git",
        #     # ),
        #     # MultiDocumenter.MultiDocRef(
        #     #     upstream = joinpath(clonedir, "MappedArrays.jl"),
        #     #     path = "debug",
        #     #     name = "MappedArrays",
        #     #     giturl = "https://github.com/JuliaArrays/MappedArrays.jl.git",
        #     # ),
        #     # MultiDocumenter.MultiDocRef(
        #     #     upstream = joinpath(clonedir, "PaddedViews.jl"),
        #     #     path = "debug",
        #     #     name = "PaddedViews",
        #     #     giturl = "https://github.com/JuliaArrays/PaddedViews.jl.git",
        #     # ),
        #     MultiDocumenter.MultiDocRef(
        #         upstream = joinpath(clonedir, "TestImages.jl"),
        #         path = "debug",
        #         name = "TestImages",
        #         giturl = "https://github.com/JuliaImages/TestImages.jl.git",
        #     ),
        #     # ImageShow is used to support image display in Juno and IJulia. This happens automatically if you are using Images.
        #     # ImageInTerminal is used to support image display in terminal.
        #     # ImageView is an image display GUI. (For OSX and Windows platforms, Julia at least v1.3 is required)
        #     # MultiDocumenter.MultiDocRef(
        #     #     upstream = joinpath(clonedir, "ImageShow.jl"),
        #     #     path = "debug",
        #     #     name = "ImageShow",
        #     #     giturl = "https://github.com/JuliaImages/ImageShow.jl.git",
        #     # ),
        #     # MultiDocumenter.MultiDocRef(
        #     #     upstream = joinpath(clonedir, "ImageInTerminal.jl"),
        #     #     path = "debug",
        #     #     name = "ImageInTerminal",
        #     #     giturl = "https://github.com/JuliaImages/ImageInTerminal.jl.git",
        #     # ),
        #     # MultiDocumenter.MultiDocRef(
        #     #     upstream = joinpath(clonedir, "ImageView.jl"),
        #     #     path = "debug",
        #     #     name = "ImageView",
        #     #     giturl = "https://github.com/JuliaImages/ImageView.jl.git",
        #     # ),

                    
        # ]),
        # ColorTypes.jl*, Colors.jl* and ColorVectorSpace.jl* provides pixel-level definitions and functions.
        # FixedPointNumbers.jl* provides several data types (e.g., N0f8) for image storage usage.
        # ImageCore.jl* provides various basic and convenient views, traits and functions to support image processing algorithms.
        # ImageBase.jl
        # MultiDocumenter.Column("Low Level Packages",[
        #     # MultiDocumenter.MultiDocRef(
        #     #     upstream = joinpath(clonedir, "ColorTypes.jl"),
        #     #     path = "debug",
        #     #     name = "ColorTypes",
        #     #     giturl = "https://github.com/JuliaColors/ColorTypes.jl.git",
        #     # ),
        #     MultiDocumenter.MultiDocRef(
        #         upstream = joinpath(clonedir, "Colors.jl"),
        #         path = "debug",
        #         name = "Colors",
        #         giturl = "https://github.com/JuliaGraphics/Colors.jl.git",
        #     ),
        #     # MultiDocumenter.MultiDocRef(
        #     #     upstream = joinpath(clonedir, "ColorVectorSpace.jl"),
        #     #     path = "debug",
        #     #     name = "ColorVectorSpace",
        #     #     giturl = "https://github.com/JuliaColors/ColorVectorSpace.jl.git",
        #     # ),
        #     # MultiDocumenter.MultiDocRef(
        #     #     upstream = joinpath(clonedir, "FixedPointNumbers.jl"),
        #     #     path = "debug",
        #     #     name = "FixedPointNumbers",
        #     #     giturl = "https://github.com/JuliaMath/FixedPointNumbers.jl.git",
        #     # ),
        #     # MultiDocumenter.MultiDocRef(
        #     #     upstream = joinpath(clonedir, "ImageCore.jl"),
        #     #     path = "debug",
        #     #     name = "ImageCore",
        #     #     giturl = "https://github.com/JuliaImages/ImageCore.jl.git",
        #     # ),
        #     # MultiDocumenter.MultiDocRef(
        #     #     upstream = joinpath(clonedir, "ImageBase.jl"),
        #     #     path = "debug",
        #     #     name = "ImageBase",
        #     #     giturl = "https://github.com/JuliaImages/ImageBase.jl.git",
        #     # ),
        # ]),
    ]),
]

outpath = joinpath(@__DIR__, "Overview")

MultiDocumenter.make(
    outpath,
    docs;
    search_engine = MultiDocumenter.SearchConfig(
        index_versions = ["stable"],
        engine = MultiDocumenter.FlexSearch
    ),
    rootpath = "/stable/",
)