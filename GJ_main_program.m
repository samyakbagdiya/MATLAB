A = input("Enter your Matrix:- ");
b = input("Enter the value of constant vector:- ");
[r,c] = size(A);

n = r;
x = zeros(n,1);
aug = [A b];

[x,ctr,aug] = gaussjordan_solver(aug,n,x);
plot(x,'LineWidth',5);
hold on;
plot(x,'.r','MarkerSize',15);
hold off;
title("PLOT OF x")
display(aug);
fprintf("The total no. of operations performed are:- %4.0f",ctr);
fprintf('\n')



