library(SingleCellExperiment)

file <- system.file("extdata", "example_anndata.h5ad",
                    package = "zellkonverter")
outfile <- tempfile(fileext = ".h5ad")

names <- list(
    assays = c("X", "counts"),
    colData = "louvain",
    rowData = c("n_counts", "highly_variable", "means", "dispersions",
                "dispersions_norm"),
    metadata = c("louvain", "neighbors", "pca", "rank_genes_groups", "umap"),
    redDim = c("X_pca", "X_umap"),
    varm = "PCs",
    colPairs = c("connectivities", "distances")
)

missing <- list()

test_that("Reading H5AD works", {
    sce <- readH5AD(file)
    expect_s4_class(sce, "SingleCellExperiment")
})

sce <- suppressWarnings(readH5AD(file))

test_that("SCE is valid", {
    validateH5ADSCE(sce, names, missing)
})

test_that("Writing H5AD works", {
    writeH5AD(sce, outfile)
    expect_true(file.exists(outfile))
})

test_that("Round trip is as expected", {
    out <- readH5AD(outfile)
    expectSCE(out, sce)
})
