function [throughput]=piconet()

Master = 'M';
throughput = 0;
p = {};
s1 = 7;
p1 = {};
s2 = 3;
sfora = [];
sforb = [];
slotnumber = 0;
while slotnumber < 1000
for i= 1:1:s1
    r1 = randi([1 79],1,1); % hop carrier for M
     x = [1,3,5];
     pos = randi(length(x));
     card = x(pos);
    for i1 = 1:1:card
        sfora = [sfora,r1];
        p = horzcat(p,r1,Master);
        slotnumber = slotnumber +1;
    end
         pos = randi(length(x));
         card = x(pos);
    r2 = randi([1 79],1,1); % hop carrier for S
    for i2 = 1:1:card
        sfora = [sfora,r2];
        slave = strcat('S',num2str(i));
        p = horzcat(p,r2,slave);
        slotnumber = slotnumber +1;
    end    
end
for k= 1:1:s2
    r1 = randi([1 79],1,1); % hop carrier for M
         x = [1,3,5];
     pos = randi(length(x));
     card = x(pos);
     for k1 = 1:1:card
        sforb = [sforb,r1];
        p1 = horzcat(p1,r1,Master);
        slotnumber = slotnumber+1;
    end
      pos = randi(length(x));
     card = x(pos);
    r2 = randi([1 79],1,1); % hop carrier for S
    for k2 = 1:1:card
        sforb = [sforb,r2];
        slave = strcat('S',num2str(k));
        p1 = horzcat(p1,r2,slave);
        slotnumber = slotnumber +1;
    end
end

end
[m1,n1] = size(sforb);
[m2,n2] = size(sfora);
size1 = 0;
size2 = 0;
if n1<n2
    size1 = n1;
    size2= n2;
else
    size1 = n2;
    size2 = n1;
end

same = [];
k1 = 0;
count = 0;
for v= 1:1:size1
    count = count +1;
if sfora(v) ~= sforb(v)
    k1 = k1 + 1;
    same = [same,k1];
end
end


for v2 = count:1:size2
k1 = k1 + 1;
    same = [same,k1];
end
time = 625*10^-6;
[m3,n3] = size(same);
throughput = (343./(2*n3*time));