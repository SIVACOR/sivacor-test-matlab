function [y, T, residual, g1] = dynamic_2(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(4, 1);
  T(1)=exp(y(8));
  T(2)=exp(y(11));
  T(3)=T(1)*params(5)*T(2)^(1+params(6));
  T(4)=exp(y(7));
  residual(1)=(T(3))-((1-params(3))*T(4));
  T(5)=exp(y(9));
  T(6)=exp(y(12));
  T(7)=exp(y(3));
  residual(2)=(T(5))-(T(6)*(T(4)-T(1))+(1-params(4))*T(7));
  T(8)=exp(y(18));
  T(9)=T(8)*exp(y(14));
  T(10)=T(1)*T(6)/T(9);
  T(11)=params(3)*T(8)*exp(y(13));
  T(12)=T(11)+T(5)*(1-params(4));
  T(13)=params(1)*T(10)*T(12);
  residual(3)=(T(5))-(T(13));
  T(14)=exp(y(10));
  T(15)=T(14)*T(7)^params(3);
  T(16)=T(2)^(1-params(3));
  residual(4)=(T(4))-(T(15)*T(16));
if nargout > 3
    g1_v = NaN(14, 1);
g1_v(1)=(-((1-params(4))*T(7)));
g1_v(2)=(-(T(16)*T(14)*T(7)*getPowerDeriv(T(7),params(3),1)));
g1_v(3)=T(1)*params(5)*T(2)*getPowerDeriv(T(2),1+params(6),1);
g1_v(4)=(-(T(15)*T(2)*getPowerDeriv(T(2),1-params(3),1)));
g1_v(5)=T(5);
g1_v(6)=T(5)-params(1)*T(10)*T(5)*(1-params(4));
g1_v(7)=T(3);
g1_v(8)=(-(T(6)*(-T(1))));
g1_v(9)=(-T(13));
g1_v(10)=(-((1-params(3))*T(4)));
g1_v(11)=(-(T(4)*T(6)));
g1_v(12)=T(4);
g1_v(13)=(-(params(1)*T(12)*(-(T(1)*T(6)*T(9)))/(T(9)*T(9))));
g1_v(14)=(-(params(1)*T(10)*T(11)));
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 4, 12);
end
end
