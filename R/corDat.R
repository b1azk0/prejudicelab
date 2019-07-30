corDat <-
  function(fit = fit) {
    standardizedsolution(fit, se = T) %>% filter(lhs != rhs, op != "~") %>%
      mutate(pval = ifelse(pvalue < .001, "***",
                           ifelse(
                             pvalue < .01, "**",
                             ifelse(pvalue < .05, "*",
                                    ifelse(pvalue < .1, "\u2020", ""))
                           ))) %>%
      select(lhs, rhs, r = est.std, p = pval) %>%
      mutate(cor = paste0(round(r, 2), p)) %>%
      select(var1 = lhs, var2 = rhs, cor) %>% as.data.frame()
  }
