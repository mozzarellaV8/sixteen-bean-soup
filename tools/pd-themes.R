# simple modifications to ggplot2 themes:
# fonts, sizes, margins

library(ggplot2)

pd.theme <- theme_minimal(base_size = 12.75, base_family = "Open Sans") +
  theme(plot.margin = unit(c(0.25, 0.25, 0.25, 0.25), "cm"),
        axis.title = element_text(family = "Times", face = "italic", size = 14),
        axis.title.x = element_text(margin = margin(15, 0, 0, 0)),
        axis.title.y = element_text(margin = margin(0, 15, 0, 0)))

pd.theme.plus <- theme_minimal(base_size = 12.75, base_family = "Open Sans") +
  theme(plot.margin = unit(c(0.25, 0.25, 0.25, 0.25), "cm"),
        plot.title = element_text(family = "Times", face = "italic", size = 16),
        plot.subtitle = element_text(family = "Times", size = 12),
        axis.title = element_text(family = "Times", face = "italic", size = 14),
        axis.title.x = element_text(margin = margin(15, 0, 0, 0)),
        axis.title.y = element_text(margin = margin(0, 15, 0, 0)),
        legend.title = element_text(family = "Times", face = "italic", size = 12))

pd.scatter <- theme_minimal(base_size = 12, base_family = "Open Sans") +
  theme(plot.margin = unit(c(0.15, 0.15, 0.15, 0.15), "cm"),
        axis.title = element_text(family = "Times", face = "italic", size = 12),
        axis.title.x = element_text(margin = margin(15, 0, 0, 0)),
        axis.title.y = element_text(margin = margin(0, 15, 0, 0)),
        axis.line = element_line(color = "black"))

pd.classic <- theme_classic(base_size = 12, base_family = "Open Sans") +
  theme(plot.margin = unit(c(1, 1, 1, 1), "cm"),
        axis.title = element_text(family = "Times", face = "italic", size = 12),
        axis.title.x = element_text(margin = margin(15, 0, 0, 0)),
        axis.title.y = element_text(margin = margin(0, 15, 0, 0)))

pd.facet <- theme_minimal(base_size = 12, base_family = "Open Sans") +
  theme(plot.margin = unit(c(0.15, 0.15, 0.15, 0.15), "cm"),
        axis.title = element_text(family = "Times", face = "italic", size = 12),
        axis.title.x = element_text(margin = margin(15, 0, 0, 0)),
        axis.title.y = element_text(margin = margin(0, 15, 0, 0)),
        panel.background = element_rect(fill = NA, color = "black"),
        strip.background = element_rect(fill = NA, color = "black"))

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
