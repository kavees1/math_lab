function [mean] = sinrnoise(n)
pr1 = 1e-3; 
alpha = 3; 
distance1 = 0.001; 
pn = 6;


k = pr1 * distance1.^alpha; 
 
sinrsum = 0;
 for f = 1:1:10  
    d = realmin + (2*sqrt(2)- realmin).*rand(2,1);
    dr = min(d);  
    d(d == dr) = []; 
    di = d; 
    pi = k ./ (di.^alpha);  
    pr = k ./ (dr.^alpha); 
    sinr = pr ./ (pn + pi);
    sinrsum = sinrsum + sinr;
end
for n = 1:1:10 

mean1 = sinrsum/n; 
A = 16;
density = n / A; 
plot(mean1, density,'.'); 
hold on
end
xlabel('mean');
ylabel('density');

mean = sinrsum/n;


end