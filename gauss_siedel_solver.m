function [xnew] = gauss_siedel_solver(a,b,n)
x = zeros(n,1);
xnew = zeros(n,1);
tol = 0.0001 ;
add_no = 0 ;            
mult_no = 0 ;
sub_no = 0 ;
div_no = 0 ;
iter_max = 1000;
for iter = 1 : iter_max
    converge = true ;
    for i = 1 : n 
        sum = 0 ;
        for j = 1 : n 
            if j ~= i && j < i
                sum = sum + a(i,j) * xnew(j) ;
                add_no = add_no + 1 ;
                mult_no = mult_no + 1 ; 
            end
            if j ~= i && j > i
                sum = sum + a(i,j) * x(j) ;
                add_no = add_no + 1 ;
                mult_no = mult_no + 1 ;
            end
        end
        xnew(i) =  (b(i) - sum) / (a(i,i) ) ;
        sub_no = sub_no + 1;
        div_no = div_no + 1;
       if abs( (xnew(i) - x(i)) / xnew(i) ) > tol
           converge = false ;
       end
    end
  if converge
      break
  end
    x = xnew ;
end
add_no
mult_no
sub_no
div_no
xnew= [ xnew ; add_no ; mult_no ] ;
end