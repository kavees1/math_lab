function [mean] = sinrt(n)
Pr1 = 1e-3; 
alpha = 3; 
distance1 = 0.001; 
Pn = 1e-6;
k = Pr1 * distance1.^alpha; 
 
sinrsum = 0;
 for f = 1:1:10  
       
    d = realmin + (2*sqrt(2)- realmin).*rand(2,1);
    dr = min(d);  
    d(d == dr) = []; 
    di = d; 
    Pi = k ./ (di.^alpha);  
    Pr = k ./ (dr.^alpha); 
    sinr = Pr ./ (Pn + Pi);
    sinrsum = sinrsum + sinr;
end

 
mean = sinrsum/n;


end