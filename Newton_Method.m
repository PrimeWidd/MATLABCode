function x = Newton(x0, fun, dfun, n)
df = dfun(x0);
for i = 1 : n
    x = x0 - fun(x0)./df;
    x0 = x;
    df = dfun(x0);
end
end