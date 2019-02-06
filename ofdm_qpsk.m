tsample = (2048 / 30.72e6) /2048; 
mod = qpsk();
mod = mod(randi(4,1,12));
ofdmsymbol = ofdmSymbol(mod);
t = 0:tsample:(2047*tsample);
plot(t,real(ofdmsymbol),t,imag(ofdmsymbol))
title('OFDM MODULATION WITH QPSK')