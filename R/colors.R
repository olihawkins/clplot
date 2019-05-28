### Colors

#' Commons Library colors
#' @export

commonslib_colors <- c(
    "green_1" = "#1b432e",
    "green_2" = "#36845b",
    "green_3" = "#60bd8c",
    "green_4" = "#a3dabd",
    "blue"    = "#4472c4",
    "lilac"   = "#a474c7",
    "purple"  = "#633684",
    "orange"  = "#d25f15")

#' Get the hex code for a commons library color
#' @param color_name The name of the color.
#' @export

commonslib_color <- function (color_name) {
    unname(commonslib_colors[color_name])
}
