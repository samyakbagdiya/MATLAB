function y = xfactor(n,x,X)
a = 1;
for i = 1:n
    a = a*(x-X(i));
end
y=a;
