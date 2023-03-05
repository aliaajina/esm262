truck_power = function(cr_eff = .015, m, g = 9.8, V, A, P_air = 1.2, c_drag = .3) {
  result = cr_eff * m * g * V + 1/2 * A * P_air *c_drag * V^3
return(result)
}