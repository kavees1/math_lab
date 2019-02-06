function [mean] = sinrpower(n)
pr1 = 1 + (10000-1).*rand(1,1); 
alpha = 3; 
distance1 = 0.001; 
Pn = 1e-6;
k = pr1 * distance1.^alpha; 
 
sinrsum = 0;
 for f = 1:1:1500 
       
    d = realmin + (2*sqrt(2)- realmin).*rand(2,1);
    dr = min(d);  
    d(d == dr) = []; 
    di = d; 
    pi = k ./ (di.^alpha);  
    pr = k ./ (dr.^alpha); 
    sinr = pr ./ (Pn + pi);
    sinrsum = sinrsum + sinr;
 end
for k1 = 1:100
    pr12 =k1;
    k3 = pr12 * distance1.^aplha;
     d2 = realmin + (2*sqrt(2) - realmin).*rand(2,1);
     pi1 = k ./ (di.^alpha);
     
end
for n = 1:1:100 

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