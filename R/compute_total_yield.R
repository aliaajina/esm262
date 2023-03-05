compute_total_yield = function (fert, TP, coeff1 = 1.8, coeff2 = -0.5, pcoeff=0.1) {
  fert = ifelse(fert<0, stop("fertilizer cannot be negative"),
                fert)
  if (TP <0)
    stop("Total Precipitation (TP) cannot be negative")
  if (TP == 0)
    warning("Total Precipitation is zero")
  yield = coeff1 * fert^2 - coeff2 * fert + pcoeff *TP
  ty = sum(yield)
  return(ty)
}