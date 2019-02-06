function [p]=piconet(s)

Master = 'M';
p = {};
for i= 1:1:s
    r1 = randi([1 79],1,1); % hop carrier for M
    p = horzcat(p,r1,Master);
    r2 = randi([1 79],1,1); % hop carrier for S
    slave = strcat('S',num2str(i));
    p = horzcat(p,r2,slave);
end
