n = input("enter the no. of iterations:- ");
y_int = 1;
x_int = 0;
h = 0.25;
for i = 1:n
    y = y_int + (h/2)*(dx(x_int,y_int)+dx((x_int + h),p(x_int,y_int,h)));
    y_int = y
    x_int = x_int + h;
end

