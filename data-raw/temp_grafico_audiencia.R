library(dplyr)
library(ggplot2)

rick_and_morty <- readr::read_rds("data/rick_and_morty.rds")
rick_and_morty %>%
  mutate(num_temporada = as.factor(num_temporada)) %>%
  ggplot(aes(
    x = num_episodio,
    y = qtd_espectadores_EUA,
    fill = num_temporada)
  ) +
  geom_col() +
  labs(
    x = "episodio",
    y = "audiencia",
    fill = "temporada",
    title = "Rick and Morty"
  ) + theme(
    text = ggplot2::element_text(
      colour = "#11a2c6",
      family = "Get Schwifty",
      size = 16
    ),
    plot.title = ggplot2::element_text(
      family = "Get Schwifty",
      hjust = 0.5,
      size = 30
    ),
    axis.text = ggplot2::element_text(color = "white"),
    axis.ticks.x = ggplot2::element_line(color = "white"),
    panel.background = ggplot2::element_rect(fill = "black"),
    panel.grid.major.y = ggplot2::element_line(size = 0.1),
    panel.grid.minor = ggplot2::element_blank(),
    panel.grid.major.x = ggplot2::element_blank(),
    legend.position = "bottom",
    legend.background = ggplot2::element_rect(fill = "black", color = "black"),
    plot.background = ggplot2::element_rect(fill = "black", color = "black")
  )


