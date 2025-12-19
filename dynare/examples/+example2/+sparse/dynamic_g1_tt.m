function [T_order, T] = dynamic_g1_tt(y, x, params, steady_state, T_order, T)
if T_order >= 1
    return
end
[T_order, T] = example2.sparse.dynamic_resid_tt(y, x, params, steady_state, T_order, T);
T_order = 1;
if size(T, 1) < 13
    T = [T; NaN(13 - size(T, 1), 1)];
end
T(6) = (-(params(1)*T(2)*(params(3)*exp(y(18))*exp(y(13))+exp(y(9))*(1-params(4)))));
T(7) = exp(y(18))*exp(y(14))*exp(y(18))*exp(y(14));
T(8) = (-(exp(y(8))*exp(y(12))*exp(y(18))*exp(y(14))))/T(7);
T(9) = (params(3)*exp(y(18))*exp(y(13))+exp(y(9))*(1-params(4)))*T(8);
T(10) = exp(y(3))*getPowerDeriv(exp(y(3)),params(3),1);
T(11) = exp(y(11))*getPowerDeriv(exp(y(11)),1+params(6),1);
T(12) = exp(y(8))*params(5)*T(11);
T(13) = exp(y(11))*getPowerDeriv(exp(y(11)),1-params(3),1);
end
