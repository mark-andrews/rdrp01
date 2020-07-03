library(tidyverse)

data(sleepstudy, package = 'lme4')

sleepstudy_df <- sleepstudy %>%
  as_tibble() %>%
  select(rt = Reaction,
         day = Days,
         subject = Subject)

library(brms)

lmm <- function(formula, data, cores = 4, seed = 10101){
  M <- brm(as.formula(formula),
      cores = cores,
      chains = 4,
      seed = seed,
      data = data)
  
  list(model = M,
       waic = waic(M)$estimates['waic', 'Estimate'])
}

lmmplot <- function(data){
  ggplot(data,
          aes(x = day, y = rt, colour = subject)) +
    geom_point() + 
    stat_smooth(method = 'lm', se = F) +
    facet_wrap(~subject) +
    theme_minimal() +
    theme(legend.position = 'none')
}
