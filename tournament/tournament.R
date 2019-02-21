library(dplyr)

tournament <- function(input) {
  games_df <- matrix(unlist(strsplit(input, split = ";")),
                     ncol = 3,
                     byrow = TRUE)
  data.frame(
    Team = c(games_df[, 1], games_df[, 2]),
    player = c(rep("player1", nrow(games_df)), rep("player2", nrow(games_df))),
    result = rep(games_df[, 3], 2)) %>%
    group_by(Team) %>%
    summarise(
      MP = as.numeric(n()),
      W = as.numeric(sum( (result == "win" & player == "player1")
                         | (result == "loss" & player == "player2"))),
      D = as.numeric(sum(result == "draw")),
      L = as.numeric(sum( (result == "loss" & player == "player1")
                         | (result == "win"  & player == "player2")))) %>%
    mutate(P = (W * 3 + D)) %>%
    arrange(desc(P), Team)
}
