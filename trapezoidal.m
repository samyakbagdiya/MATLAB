function y = trapezoidal(b,a,n)
h = (b-a)/n;
s = fn(a) + fn(b);
for i = 1:n-1
    s = s + 2*fn(a+(i*h))
end

s = s*h;
y = s/2;
