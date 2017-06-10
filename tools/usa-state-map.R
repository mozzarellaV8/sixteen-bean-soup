library(maps)
library(mapproj)
library(maptools)
library(fiftystater)
library(dplyr)
library(ggplot2)

# Function: Capwords ----------------------------------------------------------

# from tolower() documentation
capwords <- function(s, strict = FALSE) {

  cap <- function(s) paste(toupper(substring(s, 1, 1)),
                           {s <- substring(s, 2); if(strict) tolower(s) else s},
                           sep = "", collapse = " " )

  sapply(strsplit(s, split = " "), cap, USE.NAMES = !is.null(names(s)))

}

# Alaska and Hawaii maps ------------------------------------------------------

# load fifty states data
data("fifty_states")
fifty_states

# rename columns for binding
colnames(fifty_states) <- c("lon", "lat", "order", "hole", "piece", "NAME", "group")
fifty_states$NAME <- capwords(fifty_states$NAME)

# test map out
ggplot(fifty_states, aes(lon, lat, group = group)) +
  geom_path() + coord_map("polyconic")


# Theme for faceted maps ------------------------------------------------------

pd.map <- theme_minimal(base_size = 12.75, base_family = "Open Sans") +
  theme(plot.margin = unit(c(0.15, 0.15, 0.15, 0.15), "cm"),
        axis.title = element_text(family = "Times", face = "italic", size = 14),
        axis.title.x = element_text(margin = margin(15, 0, 0, 0)),
        axis.title.y = element_text(margin = margin(0, 15, 0, 0)),
        axis.text = element_blank(),
        panel.grid = element_blank(),
        strip.text = element_text(size = 12,
                                  hjust = 0,
                                  vjust = 0),
        legend.text = element_text(size = 12,
                                   hjust = 1,
                                   vjust = 1),
        legend.position = "bottom")
