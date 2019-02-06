
tsample = (2048 / 30.72e6) /2048; 
k = 1/sqrt(10); 
qam = qam16(k);
mod = qam(randi(10,1,12));
ofdmsymbol = ofdmSymbol(mod);
t = 0:tsample:(2047*tsample);
plot(t,imag(ofdmsymbol),t,real(ofdmsymbol))
title('OFDM MODULATION WITH 16-QAM ')