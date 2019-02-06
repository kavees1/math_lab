function [ofdmsymbol] = ofdmSymbol(m) 
tsample = (2048 / 30.72e6) /2048; 
matix = zeros(12,2048); 
t = 0:tsample:(2047 *tsample);
for i = 1:12
    matix(i,:) = exp(1i*2*pi*i/(2048 / 30.72e6)*t); 
end
ofdmsymbol = zeros(1,2048); 
for i = 1:12
    k = m(i)*matix(i,:);
   ofdmsymbol = ofdmsymbol + k; 
end    
end
