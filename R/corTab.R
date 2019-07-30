corTab <-
  function(t1 = t1, t2 = t2) {
    mat <- matrix(
      NA,
      nrow = length(unique(c(t(
        t1[1:2]
      )))),
      ncol = length(unique(c(t(
        t2[1:2]
      )))),
      dimnames = list(unique(c(t(
        t1[1:2]
      ))),
      unique(c(t(
        t2[1:2]
      ))))
    )
    mat[lower.tri(mat)] <- t1$cor
    mat[upper.tri(mat)] <- t2$cor
    diag(mat) <- "-"
    mat %>% kable(format = "markdown")
  }
