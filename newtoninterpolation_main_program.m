X = [0,0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,1];
Y = [0 0.2 0.35 0.46 0.58 0.66 0.74 0.85 0.91 0.96 1];
n = 11;
x = input("Enter the value of x:- ");
[a,lc] = newtoninterpolation(x,X,Y,n);
fprintf("The mole fraction of component A in vapor phase(y) for x = %.2f is :- %.4f \n",x,a);
fprintf("\n");
fprintf("The coeeficients of Newton's Interpolationg Polynomial are:- \n\n");
for i = 1:n
    fprintf("b%.0f = %.4f  ",i,lc(i));
end
fprintf("\n\n");
plot(X,Y,"LineWidth",3)
hold on
plot(x,a,'.r',"MarkerSize",20)
hold off
xlabel("Mole fraction of component A in liquid phase(x)","FontSize",15)
ylabel("Mole fraction of component A in vapor phase(y)",FontSize=15)
title("Liquid phase(x) vs Vapor phase(y)",FontSize=15)