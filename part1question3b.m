function [prob]=piconet()

Master = 'M';
prob = 0;
p = {};
s1 = 7;
p1 = {};
s2 = 3;
sfora = [];
slotsfora = [];
slotsforb = [];
randomslot1 = randi([1 79],1,1);
randomslot2 = randi([1 79],1,1);
randomslot3 = randi([1 79],1,1);
for j = 1:1:1000 % slot number 
for i= 1:1:s1
    r1 = randi([1 79],1,1); % hop carrier for M
    p = horzcat(p,r1,Master);
    if (r1 ~= randomslot1 || r1 ~= randomslot2 || r1 ~= randomslot3)
        slotsfora = [slotsfora,r1];
    end
    r2 = randi([1 79],1,1); % hop carrier for S
    if (r2 ~= randomslot1 || r2 ~= randomslot2 || r2 ~= randomslot3)
           sfora = [sfora,r2];
           slotsfora = [slotsfora,r2];
    end
    slave = strcat('S',num2str(i));
    p = horzcat(p,r2,slave);
end
for k= 1:1:s2
    r1 = randi([1 79],1,1); % hop carrier for M
    if (r1 ~= randomslot1 || r1 ~= randomslot2 || r1 ~= randomslot3)
        slotsforb = [slotsforb,r1];
    end
    p1 = horzcat(p1,r1,Master);

    r2 = randi([1 79],1,1); % hop carrier for S
    if (r2 ~= randomslot1 || r2 ~= randomslot2 || r2 ~= randomslot3)
           slotsforb = [slotsforb,r2];
    end

    slave = strcat('S',num2str(k));
    p1 = horzcat(p1,r2,slave);
end

end
[m1,n1] = size(slotsforb);

for v= 1:1:n1
if slotsfora(v) == slotsforb(v)
    prob = prob + 1;
end
end
prob = (prob./n1)


plot(sfora)
