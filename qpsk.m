function [mods] = qpsk()
    mod = comm.QPSKModulator;
    refC = constellation(mod);
    mods = refc;
end

