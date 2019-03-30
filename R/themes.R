### Themes

#' Commons Library Green theme
#'
#' @param subtitle Boolean to indicate whether the plot has a subtitle. This
#'   argument controls the spacing after the title, so that it is smaller when
#'   a subtitle is present. The default is TRUE.
#' @param axes A string to indicate which axes should have axis lines and
#'   ticks. Designate the axes to show by including a particular character in
#'   the string: "t" for top, "r" for right, "b" for bottom, "l" for left. You
#'   will need to position the axes correctly with ggplot, and turn on any
#'   secondary axes, in order for the specified axes lines and ticks to be
#'   displayed. The default is "b", meaning only the bottom x axis is shown by
#'   default.
#' @param grid A string to indicate which gridlines should be shown. Designate
#'   which gridlines to show by including a particular character in the string:
#'   "h" for horizontal, "v" for vertical. The default is "h", meaning
#'   only the horizontal gridlines are shown by default.
#' @export

theme_commonslib_green <- function (subtitle = TRUE, axes = "b", grid = "h") {

    # Baseline theme

    theme_commonslib_green <- ggthemes::theme_foundation(
        base_size = 10,
        base_family = "Open Sans") %+replace%
        ggplot2::theme(
            plot.background = ggplot2::element_rect(
                fill = "#edf7f2",
                size = 0),
            plot.margin = ggplot2::margin(
                t = 20,
                r = 20,
                b = 20,
                l = 20, unit = "pt"),
            plot.title = ggplot2::element_text(
                color = "#303030",
                face = "bold",
                hjust = 0,
                size = 15,
                margin = ggplot2::margin(
                    t = 0,
                    r = 0,
                    b = 5,
                    l = 0, unit = "pt")),
            plot.subtitle = ggplot2::element_text(
                color = "#303030",
                face = "plain",
                hjust = 0,
                size = 11,
                margin = ggplot2::margin(
                    t = 0,
                    r = 0,
                    b = 20,
                    l = 0, unit = "pt")),
            plot.caption = ggplot2::element_text(
                color = "#303030",
                hjust = 1,
                size = 10,
                margin = ggplot2::margin(
                    t = 10,
                    r = 0,
                    b = 0,
                    l = 0, unit = "pt")),
            panel.border = ggplot2::element_blank(),
            panel.background = ggplot2::element_blank(),
            panel.grid.major = ggplot2::element_blank(),
            panel.grid.minor = ggplot2::element_blank(),
            axis.line = ggplot2::element_line(),
            axis.line.x.top = ggplot2::element_blank(),
            axis.line.y.right = ggplot2::element_blank(),
            axis.line.x.bottom = ggplot2::element_blank(),
            axis.line.y.left = ggplot2::element_blank(),
            axis.ticks = ggplot2::element_blank(),
            axis.title.x = ggplot2::element_text(
                color = "#303030",
                size = 11,
                margin = ggplot2::margin(
                    t = 10,
                    r = 0,
                    b = 0,
                    l = 0, unit = "pt")),
            axis.title.x.top = ggplot2::element_text(
                margin = ggplot2::margin(
                    t = 0,
                    b = 10, unit = "pt")),
            axis.title.y = ggplot2::element_text(
                color = "#303030",
                size = 11,
                angle = 90,
                margin = ggplot2::margin(
                    t = 0,
                    r = 10,
                    b = 0,
                    l = 0, unit = "pt")),
            axis.title.y.right = ggplot2::element_text(
                margin = ggplot2::margin(
                    r = 0,
                    l = 10, unit = "pt")),
            axis.text = ggplot2::element_text(
                color = "#303030",
                size = 10),
            axis.text.x = ggplot2::element_text(
                margin = ggplot2::margin(
                    t = 3,
                    r = 0,
                    b = 0,
                    l = 0, unit = "pt")),
            axis.text.x.top = ggplot2::element_text(
                margin = ggplot2::margin(
                    t = 0,
                    b = 3, unit = "pt")),
            axis.text.y = ggplot2::element_text(
                hjust = 1,
                margin = ggplot2::margin(
                    t = 0,
                    r = 3,
                    b = 0,
                    l = 0, unit = "pt")),
            axis.text.y.right = ggplot2::element_text(
                hjust = 0,
                margin = ggplot2::margin(
                    r = 0,
                    l = 3, unit = "pt")),
            legend.background = ggplot2::element_rect(
                fill = "#edf7f2",
                size = 0),
            legend.key = ggplot2::element_rect(
                color = "#edf7f2",
                fill = "#edf7f2"),
            legend.title = ggplot2::element_text(
                color = "#303030",
                face = "bold",
                size = 10),
            legend.text = ggplot2::element_text(
                color = "#303030",
                size = 10)
        )

    # Subtitle

    if (! subtitle) {
        theme_commonslib_green <- theme_commonslib_green + ggplot2::theme(
            plot.title = ggplot2::element_text(
                margin = ggplot2::margin(b = 20, unit = "pt")))
    }

    # Axes

    axis_line <- ggplot2::element_line(color = "#303030", size = 0.3)

    if (stringr::str_detect(axes, "t")) {
        theme_commonslib_green <- theme_commonslib_green %+replace%
            ggplot2::theme(
                axis.line.x.top = axis_line,
                axis.ticks.x.top = axis_line)
    }

    if (stringr::str_detect(axes, "r")) {
        theme_commonslib_green <- theme_commonslib_green %+replace%
            ggplot2::theme(
                axis.line.y.right = axis_line,
                axis.ticks.y.right = axis_line)
    }

    if (stringr::str_detect(axes, "b")) {
        theme_commonslib_green <- theme_commonslib_green %+replace%
            ggplot2::theme(
                axis.line.x.bottom = axis_line,
                axis.ticks.x.bottom = axis_line)
    }

    if (stringr::str_detect(axes, "l")) {
        theme_commonslib_green <- theme_commonslib_green %+replace%
            ggplot2::theme(
                axis.line.y.left = axis_line,
                axis.ticks.y.left = axis_line)
    }

    # Grid

    grid_line <- ggplot2::element_line(color = "#c0c0c0",size = 0.2)

    if (stringr::str_detect(grid, "v")) {
        theme_commonslib_green <- theme_commonslib_green %+replace%
            ggplot2::theme(panel.grid.major.x = grid_line)
    }

    if (stringr::str_detect(grid, "h")) {
        theme_commonslib_green <- theme_commonslib_green %+replace%
            ggplot2::theme(panel.grid.major.y = grid_line)
    }

    theme_commonslib_green
}
