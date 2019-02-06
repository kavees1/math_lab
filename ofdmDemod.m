function [mod] = ofdmDemod(k,s)

b = zeros(length(s),1);
for i = 1:length(s)
    b(i) = 0;
 for j = 1:length(s)
    b(i)=b(i)+(s(j)*exp((-1j)*2*pi*(i-1)*(j-1)/length(s)));
 end
end
c = b(1:12);
c = c/(2048 / 30.72e6)/30.72e6;
k = k + 1; 
mod = c(k);

end

