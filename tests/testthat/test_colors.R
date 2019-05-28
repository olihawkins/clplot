### Test color functions
context("Color functions")

# Tests -----------------------------------------------------------------------

test_that("commonslib_color returns the correct color for a color name", {
    purrr::map(names(commonslib_colors), function(color_name) {
        expect_equal(
            commonslib_color(color_name),
            unname(commonslib_colors[color_name]))
    })
})
