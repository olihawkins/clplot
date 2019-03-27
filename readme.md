# clplot

clplot is a ggplot2 theme for the House of Commons Library. It is currently in development so theme elements and scale colours are likely to change in future.

## Installation

Install from GitHub using devtools.

``` r
install.packages("devtools")
devtools::install_github("olihawkins/clplot")
```

## Theme

Set the theme for the session with:

```r
library(ggplot2)
library(clplot)

theme_set(theme_commonslib_green())
```

Or apply the theme directly to a specific plot with `+ theme_commonslib_green()`.

---

_clplot_::__theme_commonslib_green__(_subtitle = TRUE_, _axes = "b"_, _grid = "h"_)

Sets the theme with the following arguments:

* __subtitle__ Boolean to indicate whether the plot has a subtitle. This argument controls the spacing after the title, so that it is smaller when a subtitle is present. The default is TRUE.
* __axes__ A string to indicate which axes should have axis lines and ticks. Designate the axes to show by including a particular character in the string: "t" for top, "r" for right, "b" for bottom, "l" for left. You will need to position the axes correctly with ggplot, and turn on any secondary axes, in order for the specified axes lines and ticks to be displayed. The default is "b", meaning only the bottom x axis is shown by default.
* __grid__ A string to indicate which gridlines should be shown. Designate which gridlines to show by including a particular character in the string: "h" for horizontal, "v" for vertical. The default is "h", meaning only the horizontal gridlines are shown by default.

---

## Scale

Use `+ scale_color_commonslib_green()` or `+ scale_fill_commonslib_green()` as approriate. Both functions have the same signature.

---

_clplot_::__scale_color_commonslib_green__(_palette = "main"_, _discrete = TRUE_, _reverse = FALSE_, _..._)
_clplot_::__scale_fill_commonslib_green__(_palette = "main"_, _discrete = TRUE_, _reverse = FALSE_, _..._)

Sets the scales with the following arguments:

* __palette__ The name of a palette. Valid names are:
    * _main_ - greens, blues, purples
    * _green_ - just greens
    * _monotone_ - a single mid-dark green
    * _twotone_ - two contrasting greens
    * _highlight_ - same as _main_ but with an orange for highlighting
* __discrete__ Boolean to indicate if color aesthetic is discrete.
* __reverse__ Boolean to indicate whether palette should be reversed.
* __...__ Additional arguments passed to `discrete_scale` or `scale_color_gradientn`, depending on the value of `discrete`.

---
