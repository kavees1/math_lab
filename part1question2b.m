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
slotnumber = 0;
while slotnumber < 1000
for i= 1:1:s1

     x = [1,3,5];
     pos = randi(length(x));
     card = x(pos);

    r1 = randi([1 79],1,1); % hop carrier for M
 
    for i2 = 1:1:card
        p = horzcat(p,r1,Master);
        slotsfora = [slotsfora,r1];
        slotnumber = slotnumber+1;
    end
    r2 = randi([1 79],1,1); % hop carrier for S
     pos = randi(length(x));
     card = x(pos);
    for i1 = 1:1:card 
        sfora = [sfora,r2];
        slotsfora = [slotsfora,r2];
        slave = strcat('S',num2str(i));
        p = horzcat(p,r2,slave);
         slotnumber = slotnumber+1;
    end
end
for k= 1:1:s2
    r1 = randi([1 79],1,1); % hop carrier for M
     x = [1,3,5];
     pos = randi(length(x));
     card = x(pos);
    for k1 = 1:1:card
        p1 = horzcat(p1,r1,Master);
        slotsforb = [slotsforb,r1];
        slotnumber = slotnumber+1;
    end
         pos = randi(length(x));
        card = x(pos);
    
    r2 = randi([1 79],1,1); % hop carrier for S
    for k3 = 1:1:card
        slotsforb = [slotsforb,r2];
        slave = strcat('S',num2str(k));
        p1 = horzcat(p1,r2,slave);
        slotnumber = slotnumber+1;
    end
end
end


[m1,n1] = size(slotsforb);
[m2,n2] = size(slotsfora);
size1 = 0;
size2 = 0;
if n1<n2
    size1 = n1;
    size2= n2;
else
    size1 = n2;
    size2 = n1;
end

for v= 1:1:size1
if slotsfora(v) == slotsforb(v)
    prob = prob + 1;
end
end
prob = (prob./n1)


plot(sfora)