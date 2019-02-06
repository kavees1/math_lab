function [throughput]=piconet()

Master = 'M';
throughput = 0;
p = {};
s1 = 7;
p1 = {};
s2 = 3;
sfora = [];
sforb = [];
randomslot1 = randi([1 79],1,1);
randomslot2 = randi([1 79],1,1);
randomslot3 = randi([1 79],1,1);
for j = 1:1:1000 % slot number 
for i= 1:1:s1
    r1 = randi([1 79],1,1); % hop carrier for M
    p = horzcat(p,r1,Master);
    if (r1 ~= randomslot1 || r1 ~= randomslot2 || r1 ~= randomslot3)
        sfora = [sfora,r1];
    end
    r2 = randi([1 79],1,1); % hop carrier for S
    if (r2 ~= randomslot1 || r2 ~= randomslot2 || r2 ~= randomslot3)
           sfora = [sfora,r2];
    end
    slave = strcat('S',num2str(i));
    p = horzcat(p,r2,slave);
end
for k= 1:1:s2
    r1 = randi([1 79],1,1); % hop carrier for M
    if (r1 ~= randomslot1 || r1 ~= randomslot2 || r1 ~= randomslot3)
        sforb = [sforb,r1];
    end
    p1 = horzcat(p1,r1,Master);

    r2 = randi([1 79],1,1); % hop carrier for S
    if (r2 ~= randomslot1 || r2 ~= randomslot2 || r2 ~= randomslot3)
           sforb = [sforb,r2];
    end

    slave = strcat('S',num2str(k));
    p1 = horzcat(p1,r2,slave);
end

end
[m1,n1] = size(sforb);
same = [];
k1 = 0;
count = 0;
for v= 1:1:n1
    count = count +1;
if sfora(v) ~= sforb(v)
    k1 = k1 + 1;
    same = [same,k1];
end
end

[m2,n2] = size(sfora);
for v2 = count:1:n2
k1 = k1 + 1;
    same = [same,k1];
end
time = 625*10^-6;
[m3,n3] = size(same);
throughput = (343./(2*n3*time));