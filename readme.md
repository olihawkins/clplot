# clplot

clplot is a ggplot2 theme for the House of Commons Library. It is currently in development so theme elements and scale colors are likely to change in future.

## Fonts

This theme uses Open Sans as the default font, but an alternative font can be specified in the call to `theme_commonslib`.

On Windows, the system wide fonts may not be avilable in R by default. If this is the case, you can make them available with the extrafont package in the following way.

```r
install.packages("extrafont")
library(extrafont)
font_import()
loadfonts(device = "win")
```

You will only need to do the above step once. After that, loading the extrafont package in your script with `library(extrafont)` is enough to make the fonts available.

Note that on MacOS Open Sans is not installed on the system by default, but it is freely available to download and install. You don't need to use extrafont to use system fonts in R on a Mac.

## Installation

Install from GitHub using devtools.

``` r
install.packages("devtools")
devtools::install_github("olihawkins/clplot")
```

## Colors

The base colors that are used by the theme are available in a named vector called `commonslib_colors`. You can use these with `scale_manual()` in ggplot2 to map specific colors to categorical variables.

The base color names are:

* __green_1__
* __green_2__
* __green_3__
* __green_4__
* __blue__
* __lilac__
* __purple__
* __orange__

## Theme

Set the theme for the session with:

```r
library(ggplot2)
library(clplot)

theme_set(theme_commonslib())
```

Or apply the theme directly to a specific plot with `+ theme_commonslib()`.

---

_clplot_::__theme_commonslib__(_subtitle = TRUE_, _axes = "b"_, _grid = "h"_)

Sets the theme with the following arguments:

* __background__  A hexidecimal color code for the canvas color. The default is "#edf7f2".
* __family__ The font family name to use for the chart as a string. The default is "Open Sans".
* __subtitle__ Boolean to indicate whether the plot has a subtitle. This argument controls the spacing after the title, so that it is smaller when a subtitle is present. The default is TRUE.
* __axes__ A string to indicate which axes should have axis lines and ticks. Designate the axes to show by including a particular character in the string: "t" for top, "r" for right, "b" for bottom, "l" for left. You will need to position the axes correctly with ggplot, and turn on any secondary axes, in order for the specified axes lines and ticks to be displayed. The default is "bl", meaning both axes are shown by default.
* __grid__ A string to indicate which gridlines should be shown. Designate which gridlines to show by including a particular character in the string: "h" for horizontal, "v" for vertical. The default is an empty string, meaning no gridlines are shown by default.

---

## Scales

Use `scale_color_commonslib()` or `scale_fill_commonslib()` as approriate. Both functions have the same signature.

---

_clplot_::__scale_color_commonslib__(_palette = "main"_, _discrete = TRUE_, _reverse = FALSE_, _..._)
_clplot_::__scale_fill_commonslib__(_palette = "main"_, _discrete = TRUE_, _reverse = FALSE_, _..._)

Sets the scales with the following arguments:

* __palette__ The name of a palette. Valid names are:
    * _main_ - greens, blues, purples
    * _green_ - just greens
    * _twotone_ - two contrasting greens
* __discrete__ Boolean to indicate if color aesthetic is discrete.
* __reverse__ Boolean to indicate whether palette should be reversed.
* __...__ Additional arguments passed to `discrete_scale` or `scale_color_gradientn`, depending on the value of `discrete`.

---
