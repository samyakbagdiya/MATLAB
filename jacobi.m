A = [1 2 3 4;5 8 6 4;1 5 7 8;3 2 4 2];
b = [10 ; 23 ; 21 ; 11];
ig = [2;3;4;5];
aug = [A b];
n = 4;

for i = 1:n;
    
    
    for j = i+1:n;
        
        if aug(j,i) > aug(i,i)
            T = aug(j,:);
            aug(j,:) = aug(i,:);
            aug(i,:) = T;
  
        end
    end

    for k = 1+i:n;
        aug(k,:) = aug(k,:) - (aug(k,i)/aug(i,i))*aug(i,:);
    end    
    
end 


jordan(aug,n)