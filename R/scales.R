### Scales

# Functions -------------------------------------------------------------------

#' Function to extract commonslib_green colors as hex codes
#'
#' @param ... Names of colors in \code{commonslib_green_colors}.
#' @export

get_commonslib_green_colors <- function(...) {
    colors <- c(...)
    if (is.null(colors))
        return (commonslib_green_colors)
    commonslib_green_colors[colors]
}

#' Return a function which interpolates a commonslib_green color palette
#'
#' @param palette Name of palette in \code{commonslib_green_palettes}.
#' @param reverse Boolean to indicate whether the palette should be reversed.
#' @param ... Additional arguments to pass to \code{colorRampPalette}.
#' @export

get_commonslib_green_palette <- function(
    palette = "main",
    reverse = FALSE, ...) {

    p <- commonslib_green_palettes[[palette]]
    if (reverse) p <- rev(p)
    grDevices::colorRampPalette(p, ...)
}

#' Color scale for commonslib_green colors
#'
#' @param palette Name of palette in \code{commonslib_green_palettes}.
#' @param discrete Boolean to indicate if color aesthetic is discrete.
#' @param reverse Boolean to indicate whether palette should be reversed.
#' @param ... Additional arguments passed to \code{discrete_scale} or
#'   \code{scale_color_gradientn}, depending on the value of \code{discrete}.
#' @export

scale_color_commonslib_green <- function(
    palette = "main",
    discrete = TRUE,
    reverse = FALSE, ...) {

    p <- get_commonslib_green_palette(palette = palette, reverse = reverse)

    if (discrete) {
        ggplot2::discrete_scale(
            "color", paste0("commonslib_green_", palette), palette = p, ...)
    } else {
        ggplot2::scale_color_gradientn(colors = p(256), ...)
    }
}

#' Fill scale for commonslib_green colors
#'
#' @param palette Name of palette in \code{commonslib_green_palettes}.
#' @param discrete Boolean to indicate if color aesthetic is discrete.
#' @param reverse Boolean to indicate whether palette should be reversed.
#' @param ... Additional arguments passed to \code{discrete_scale} or
#'   \code{scale_color_gradientn}, depending on the value of \code{discrete}.
#' @export

scale_fill_commonslib_green <- function(
    palette = "main",
    discrete = TRUE,
    reverse = FALSE, ...) {

    p <- get_commonslib_green_palette(palette = palette, reverse = reverse)

    if (discrete) {
        ggplot2::discrete_scale(
            "fill", paste0("commonslib_green_", palette), palette = p, ...)
    } else {
        ggplot2::scale_fill_gradientn(colors = p(256), ...)
    }
}

# Values ----------------------------------------------------------------------

commonslib_green_colors <- c(
    green1 = "#1b432e",
    green2 = "#36845b",
    green3 = "#60bd8c",
    green4 = "#a3dabd",
    blue   = "#4472c4",
    lilac  = "#a474c7",
    purple = "#633684",
    orange = "#d25f15")

commonslib_green_palettes <- list(
    main  = get_commonslib_green_colors(
        "green1", "green2", "green3", "green4", "blue", "lilac", "purple"),
    green = get_commonslib_green_colors(
        "green1", "green2", "green3", "green4"),
    monotone  = get_commonslib_green_colors("green2"),
    twotone = get_commonslib_green_colors("green2", "green3"),
    highlight = get_commonslib_green_colors()
)
