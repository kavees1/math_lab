function [sinr] = lab21a(n)
pr1 = 1e-3; 
alpha = 100; 
distance1 = 0.001; 
pn = 1e-6; 
k = pr1 * distance1.^alpha;  
d = realmin + (2*sqrt(2)- realmin).*rand(n,1);   
dr = min(d);  
d(d == dr) = []; 
di = d; 
pr = k ./ (dr.^alpha); 
pi = k ./ (di.^alpha); 
sinr = pr ./ (pn + sum(pi)); 
end