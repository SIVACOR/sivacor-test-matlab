function [T_order, T] = dynamic_g2_tt(y, x, params, steady_state, T_order, T)
if T_order >= 2
    return
end
[T_order, T] = example2.sparse.dynamic_g1_tt(y, x, params, steady_state, T_order, T);
T_order = 2;
if size(T, 1) < 14
    T = [T; NaN(14 - size(T, 1), 1)];
end
T(14) = (params(3)*exp(y(18))*exp(y(13))+exp(y(9))*(1-params(4)))*((-(exp(y(8))*exp(y(12))*exp(y(18))*exp(y(14))))*T(7)-(-(exp(y(8))*exp(y(12))*exp(y(18))*exp(y(14))))*(T(7)+T(7)))/(T(7)*T(7));
end
