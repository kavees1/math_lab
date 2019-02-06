function [p]=piconet()

Master = 'M';


p = {};
randompiconet = randi([1 7],1,1);
s1 = randi([1 7],1,1);
for m=1:1:randompiconet
    p = horzcat()
for j = 1:1:1000 % slot number 
for i= 1:1:s1
    r1 = randi([1 79],1,1); % hop carrier for M
    p = horzcat(p,r1,Master);
    r2 = randi([1 79],1,1); % hop carrier for S
    slave = strcat('S',num2str(i));
    p = horzcat(p,r2,slave);
end
end
end
