Selection Strength
================

``` r
suppressMessages(library(tidyverse))
suppressMessages(library(Hmisc))
suppressMessages(library(ggpubr))
```

## Estimate Selection strength using deterministic model

grid search over pairs of s and h

``` r
h_list <- seq(0, 1, 0.005)
s_list <- seq(0, 0.2, 0.001)

gs <- cross_df(list(h=h_list, s=s_list))
```

recursion equation for trajectory of Duffy-null allele frequency over 20
generations with selection

``` r
p_t1 <- function(pt, s, h) {
  qt <- 1-pt
  w <- 1-(2*pt*qt*s*h) - ((qt^2)*s)
  delta_p <- (((pt*h*s) + (qt*s*(1-h)))/w) * pt*qt
  pt1 <- pt + delta_p
  return(pt1)
}

p_20 <- function(gen, pt, s, h) {
  if (gen==19) {
    return(pt)
  } else {
    pt1 <- p_t1(pt, s, h)
    return(p_20(gen+1, pt1, s, h))
  }
}
```

various initial allele frequencies

``` r
freq_65 <- mapply(FUN=p_20, gen=0, pt=0.65, s=gs$s, h=gs$h)

freq_70 <- mapply(FUN=p_20, gen=0, pt=0.70, s=gs$s, h=gs$h)

freq_75 <- mapply(FUN=p_20, gen=0, pt=0.75, s=gs$s, h=gs$h)

gs$freq_65 <- freq_65

gs$freq_70 <- freq_70

gs$freq_75 <- freq_75
```

search for pairs of s and h that result in final frequency close to
current Duffy-null allele frequency

``` r
f20 <- 0.83
e <- 0.01

gs$color_65 <- ifelse(abs(gs$freq_65 - f20) <= e, "color_65", NA)
gs$color_70 <- ifelse(abs(gs$freq_70 - f20) <= e, "color_70", NA)
gs$color_75 <- ifelse(abs(gs$freq_75 - f20) <= e, "color_75", NA)
```

plot results of grid
search

``` r
colors <- c("color_65"="#000000", "color_70"="#383838", "color_75"="#808080")

gridsearch_plot <- ggplot(gs) +
  geom_point(aes(x=h, y=s, fill=color_65, color=color_65)) +
  geom_point(aes(x=h, y=s, fill=color_70, color=color_70)) +
  geom_point(aes(x=h, y=s, fill=color_75, color=color_75)) +
  scale_fill_manual(values=colors, guide=FALSE) +
  scale_color_manual(values=colors, labels=c("0.65", "0.70", "0.75")) +
  labs(x="dominance coefficient (h)", y="selection coefficient (s)", color = "initial freq") +
  theme_classic() +
  theme(aspect.ratio = 1, legend.position = c(0.8,0.8))
```

## Plot estimate of selection coefficient using ABC

load results of ABC (see ABC.md)

``` r
load("accepted_sims_additive.RData")

additive_s <- accepted_sims$additive_s
```

``` r
prior_s <- runif(1000, min=0, max=0.2)
y <- dunif(prior_s, min=0, max = 0.2)

ABC_additive_plot <- ggplot() +
  geom_histogram(aes(x = additive_s, y=..density..), color = "#000000", fill = "#000000", alpha = 0.75, binwidth = 0.004) +
  xlab("selection coefficient (s)") +
  geom_line(aes(x=prior_s, y = y)) +
  geom_area(aes(x=prior_s, y = y), alpha = 0.25) +
  geom_hline(yintercept = 0, color = "white", size = 0.77) +
  geom_segment(aes(x=0, y=0, xend=0, yend=y), linetype = "dashed") +
  geom_segment(aes(x=0.2, y=0, xend=0.2, yend=y), linetype = "dashed") +
  theme_classic() +
  theme(aspect.ratio = 1)
```

``` r
ggarrange(gridsearch_plot, ABC_additive_plot, nrow=1, ncol=2, heights=c(1,1), widths=c(1,1), align = "hv")
```

![](SelectionStrength_files/figure-gfm/unnamed-chunk-11-1.png)<!-- -->
