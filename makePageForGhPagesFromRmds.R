myjekyllsite = c("http://ricardomayerb.github.io/learnjk/")

KnitPost <- function(input, base.url = myjekyllsite) {
  require(knitr)
  opts_knit$set(base.url = base.url)
  fig.path <- paste0("figs/", sub(".Rmd$", "", basename(input)), "/")
  opts_chunk$set(fig.path = fig.path)
  opts_chunk$set(fig.cap = "center")
  render_jekyll()
  knit(input, envir = parent.frame())
}

KnitPost("2014-01-17-bgp-new-post3.Rmd")
