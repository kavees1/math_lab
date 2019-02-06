function [p]=piconet(s)

Master = 'M';
p = {};
for i= 1:1:s
    p = horzcat(p,Master);
    slave = strcat('S',num2str(i));
    p = horzcat(p,slave);
end
