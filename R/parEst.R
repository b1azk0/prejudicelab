parEst <-
  function(fit = fit, format = "markdown") {
    parameterestimates(fit, standardized = TRUE) %>%
      dplyr::filter(!is.na(pvalue), op %in% c("~", ":=")) %>%
      mutate(pval = ifelse(pvalue < .001, "<0.001", round(pvalue, 3))) %>%
      select(
        from = rhs,
        to = lhs,
        label = label,
        B = est,
        SE = se,
        Z = z,
        'p-value' = pval,
        bootCI_low = ci.lower,
        bootCI_high = ci.upper
      ) %>%
      kable(digits = 3, format = format, caption = "Unstandardized solution") %>% print()
    standardizedSolution(fit) %>%
      dplyr::filter(!is.na(pvalue), op %in% c("~", ":=")) %>%
      mutate(pval = ifelse(pvalue < .001, "<0.001", round(pvalue, 3))) %>%
      select(
        from = rhs,
        to = lhs,
        Beta = est.std,
        SE = se,
        Z = z,
        'p-value' = pval,
        bootCI_low = ci.lower,
        bootCI_high = ci.upper
      ) %>%
      kable(digits = 3, format = format, caption = "Standardized solution") %>% print()
  }
