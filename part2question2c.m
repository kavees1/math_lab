function [throughput]=piconet()

Master = 'M';
throughput = 0;
p = {};
s1 = randi([1,7],1,1);
p1 = {};
test = zeros(1,3,'uint32');
sfora = [];
sforb = [];
sforc = [];
sford = [];
sfore = [];
sforf = [];
sforg = [];
sforh = [];
randomnumberofpiconet = randi([2,8],1,1);
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

    if randomnumberofpiconet >= 2
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
            slave = strcat('S',num2str(i));
            p1 = horzcat(p1,r2,slave);
            slotnumber = slotnumber +1;
        end
    end

    if randomnumberofpiconet >= 3
        r1 = randi([1 79],1,1); % hop carrier for M
             x = [1,3,5];
        pos = randi(length(x));
        card = x(pos);
        for k1 = 1:1:card
            sforc = [sforc,r1];
            p1 = horzcat(p1,r1,Master);
            slotnumber = slotnumber+1;
        end
        pos = randi(length(x));
        card = x(pos);
        r2 = randi([1 79],1,1); % hop carrier for S
        for k2 = 1:1:card
            sforc = [sforc,r2];
            slave = strcat('S',num2str(i));
            p1 = horzcat(p1,r2,slave);
            slotnumber = slotnumber +1;
        end
    end

    if randomnumberofpiconet >= 4
        r1 = randi([1 79],1,1); % hop carrier for M
             x = [1,3,5];
        pos = randi(length(x));
        card = x(pos);
        for k1 = 1:1:card
            sford = [sford,r1];
            p1 = horzcat(p1,r1,Master);
            slotnumber = slotnumber+1;
        end
        pos = randi(length(x));
        card = x(pos);
        r2 = randi([1 79],1,1); % hop carrier for S
        for k2 = 1:1:card
            sford = [sford,r2];
            slave = strcat('S',num2str(i));
            p1 = horzcat(p1,r2,slave);
            slotnumber = slotnumber +1;
        end
    end

    
    if randomnumberofpiconet >= 5
        r1 = randi([1 79],1,1); % hop carrier for M
             x = [1,3,5];
        pos = randi(length(x));
        card = x(pos);
        for k1 = 1:1:card
            sfore = [sfore,r1];
            p1 = horzcat(p1,r1,Master);
            slotnumber = slotnumber+1;
        end
        pos = randi(length(x));
        card = x(pos);
        r2 = randi([1 79],1,1); % hop carrier for S
        for k2 = 1:1:card
            sfore = [sfore,r2];
            slave = strcat('S',num2str(i));
            p1 = horzcat(p1,r2,slave);
            slotnumber = slotnumber +1;
        end
    end

    if randomnumberofpiconet >= 6
        r1 = randi([1 79],1,1); % hop carrier for M
             x = [1,3,5];
        pos = randi(length(x));
        card = x(pos);
        for k1 = 1:1:card
            sforf = [sforf,r1];
            p1 = horzcat(p1,r1,Master);
            slotnumber = slotnumber+1;
        end
        pos = randi(length(x));
        card = x(pos);
        r2 = randi([1 79],1,1); % hop carrier for S
        for k2 = 1:1:card
            sforf = [sforf,r2];
            slave = strcat('S',num2str(i));
            p1 = horzcat(p1,r2,slave);
            slotnumber = slotnumber +1;
        end
    end

    if randomnumberofpiconet >= 7
        r1 = randi([1 79],1,1); % hop carrier for M
             x = [1,3,5];
        pos = randi(length(x));
        card = x(pos);
        for k1 = 1:1:card
            sforg = [sforg,r1];
            p1 = horzcat(p1,r1,Master);
            slotnumber = slotnumber+1;
        end
        pos = randi(length(x));
        card = x(pos);
        r2 = randi([1 79],1,1); % hop carrier for S
        for k2 = 1:1:card
            sforg = [sforg,r2];
            slave = strcat('S',num2str(i));
            p1 = horzcat(p1,r2,slave);
            slotnumber = slotnumber +1;
        end
    end

    if randomnumberofpiconet >= 8
        r1 = randi([1 79],1,1); % hop carrier for M
             x = [1,3,5];
        pos = randi(length(x));
        card = x(pos);
        for k1 = 1:1:card
            sforh = [sforh,r1];
            p1 = horzcat(p1,r1,Master);
            slotnumber = slotnumber+1;
        end
        pos = randi(length(x));
        card = x(pos);
        r2 = randi([1 79],1,1); % hop carrier for S
        for k2 = 1:1:card
            sforh = [sforh,r2];
            slave = strcat('S',num2str(i));
            p1 = horzcat(p1,r2,slave);
            slotnumber = slotnumber +1;
        end
    end
end

end
[m0,n0] = size(sfora);
[m1,n1] = size(sforb);
[m2,n2] = size(sforc);
[m3,n3] = size(sford);
[m4,n4] = size(sfore);
[m5,n5] = size(sforf);
[m6,n6] = size(sforg);
[m7,n7] = size(sforh);
arrayofsize = [n0,n1,n2,n3,n4,n5,n6,n7];
min=sort(arrayofsize);


same = [];
k1 = 0;
count = 0;
out=min(1);
for v= 1:1:out
if (n0>= out && n1 >= out)   
if (sfora(v) ~= sforb(v))       
    k1 = k1 + 1;
    same = [same,k1];
end
end
if(n0>= out && n2 >= out)
if (sfora(v) ~= sforc(v))       
    k1 = k1 + 1;
    same = [same,k1];
end
end
if (n0>= out && n3 >= out)
if (sfora(v) ~= sford(v))       
    k1 = k1 + 1;
    same = [same,k1];
end
end
if(n0>= out && n4 >= out)
if (sfora(v) ~= sfore(v))       
    k1 = k1 + 1;
    same = [same,k1];
end
end
if(n0>= out && n5 >= out)
if (sfora(v) ~= sforf(v))       
    k1 = k1 + 1;
    same = [same,k1];
end
end
if (n0>= out && n6 >= out)
if (sfora(v) ~= sforg(v))       
    k1 = k1 + 1;
    same = [same,k1];
end
end
if (n0>= out && n7 >= out)
if (sfora(v) ~= sforh(v))       
    k1 = k1 + 1;
    same = [same,k1];
end
end
if(n1>= out && n2 >= out)
if (sforb(v) ~= sforc(v)) 
    k1 = k1 + 1;
    same = [same,k1];
end
end
if(n1>= out && n3 >= out)
if (sforb(v) ~= sford(v)) 
    k1 = k1 + 1;
    same = [same,k1];
end
end
if(n1>= out && n4 >= out)
if (sforb(v) ~= sfore(v)) 
    k1 = k1 + 1;
    same = [same,k1];
end
end
if(n1>= out && n5 >= out)
if (sforb(v) ~= sforf(v)) 
    k1 = k1 + 1;
    same = [same,k1];
end
end
if(n1>= out && n6 >= out)
if (sforb(v) ~= sforg(v)) 
    k1 = k1 + 1;
    same = [same,k1];
end
end

if(n1>= out && n7 >= out)
if (sforb(v) ~= sforh(v)) 
    k1 = k1 + 1;
    same = [same,k1];
end
end
end



count = out +1;
out=min(2);
for v= count:1:out
if (n0>= out && n1 >= out)   
if (sfora(v) ~= sforb(v))       
    k1 = k1 + 1;
    same = [same,k1];
end
end
if(n0>= out && n2 >= out)
if (sfora(v) ~= sforc(v))       
    k1 = k1 + 1;
    same = [same,k1];
end
end
if (n0>= out && n3 >= out)
if (sfora(v) ~= sford(v))       
    k1 = k1 + 1;
    same = [same,k1];
end
end
if(n0>= out && n4 >= out)
if (sfora(v) ~= sfore(v))       
    k1 = k1 + 1;
    same = [same,k1];
end
end
if(n0>= out && n5 >= out)
if (sfora(v) ~= sforf(v))       
    k1 = k1 + 1;
    same = [same,k1];
end
end
if (n0>= out && n6 >= out)
if (sfora(v) ~= sforg(v))       
    k1 = k1 + 1;
    same = [same,k1];
end
end
if (n0>= out && n7 >= out)
if (sfora(v) ~= sforh(v))       
    k1 = k1 + 1;
    same = [same,k1];
end
end
if(n1>= out && n2 >= out)
if (sforb(v) ~= sforc(v)) 
    k1 = k1 + 1;
    same = [same,k1];
end
end
if(n1>= out && n3 >= out)
if (sforb(v) ~= sford(v)) 
    k1 = k1 + 1;
    same = [same,k1];
end
end
if(n1>= out && n4 >= out)
if (sforb(v) ~= sfore(v)) 
    k1 = k1 + 1;
    same = [same,k1];
end
end
if(n1>= out && n5 >= out)
if (sforb(v) ~= sforf(v)) 
    k1 = k1 + 1;
    same = [same,k1];
end
end
if(n1>= out && n6 >= out)
if (sforb(v) ~= sforg(v)) 
    k1 = k1 + 1;
    same = [same,k1];
end
end

if(n1>= out && n7 >= out)
if (sforb(v) ~= sforh(v)) 
    k1 = k1 + 1;
    same = [same,k1];
end
end

if(n2>= out && n3 >= out)
if (sforc(v) ~= sford(v)) 
    k1 = k1 + 1;
    same = [same,k1];
end
end
if(n2>= out && n4 >= out)
if (sforc(v) ~= sfore(v)) 
    k1 = k1 + 1;
    same = [same,k1];
end
end
if(n2>= out && n5 >= out)
if (sforc(v) ~= sforf(v)) 
    k1 = k1 + 1;
    same = [same,k1];
end
end
if(n2>= out && n6 >= out)
if (sforc(v) ~= sforg(v)) 
    k1 = k1 + 1;
    same = [same,k1];
end
end
if(n2>= out && n7 >= out)
if (sforc(v) ~= sforh(v)) 
    k1 = k1 + 1;
    same = [same,k1];
end
end
if(n3>= out && n4 >= out)
if (sford(v) ~= sfore(v)) 
    k1 = k1 + 1;
    same = [same,k1];
end
end
if(n3>= out && n5 >= out)
if (sford(v) ~= sforf(v)) 
    k1 = k1 + 1;
    same = [same,k1];
end
end
if(n3>= out && n6 >= out)
if (sford(v) ~= sforg(v)) 
    k1 = k1 + 1;
    same = [same,k1];
end
end
if(n3>= out && n7 >= out)
if (sford(v) ~= sforh(v)) 
    k1 = k1 + 1;
    same = [same,k1];
end
end
if(n4>= out && n5 >= out)
if (sfore(v) ~= sforf(v)) 
    k1 = k1 + 1;
    same = [same,k1];
end
end
if(n4>= out && n6 >= out)
if (sfore(v) ~= sforg(v)) 
    k1 = k1 + 1;
    same = [same,k1];
end
end
if(n4>= out && n7 >= out)
if (sfore(v) ~= sforh(v)) 
    k1 = k1 + 1;
    same = [same,k1];
end
end
if(n5>= out && n6 >= out)
if (sforf(v) ~= sforg(v)) 
    k1 = k1 + 1;
    same = [same,k1];
end
end
if(n5>= out && n7 >= out)
if (sforf(v) ~= sforh(v)) 
    k1 = k1 + 1;
    same = [same,k1];
end
end

if(n6>= out && n7 >= out)
if (sforg(v) ~= sforh(v)) 
    k1 = k1 + 1;
    same = [same,k1];
end


end
end

count = out +1;
out=min(3);
for v= count:1:out
if (n0>= out && n1 >= out)   
if (sfora(v) ~= sforb(v))       
    k1 = k1 + 1;
    same = [same,k1];
end
end
if(n0>= out && n2 >= out)
if (sfora(v) ~= sforc(v))       
    k1 = k1 + 1;
    same = [same,k1];
end
end
if (n0>= out && n3 >= out)
if (sfora(v) ~= sford(v))       
    k1 = k1 + 1;
    same = [same,k1];
end
end
if(n0>= out && n4 >= out)
if (sfora(v) ~= sfore(v))       
    k1 = k1 + 1;
    same = [same,k1];
end
end
if(n0>= out && n5 >= out)
if (sfora(v) ~= sforf(v))       
    k1 = k1 + 1;
    same = [same,k1];
end
end
if (n0>= out && n6 >= out)
if (sfora(v) ~= sforg(v))       
    k1 = k1 + 1;
    same = [same,k1];
end
end
if (n0>= out && n7 >= out)
if (sfora(v) ~= sforh(v))       
    k1 = k1 + 1;
    same = [same,k1];
end
end
if(n1>= out && n2 >= out)
if (sforb(v) ~= sforc(v)) 
    k1 = k1 + 1;
    same = [same,k1];
end
end
if(n1>= out && n3 >= out)
if (sforb(v) ~= sford(v)) 
    k1 = k1 + 1;
    same = [same,k1];
end
end
if(n1>= out && n4 >= out)
if (sforb(v) ~= sfore(v)) 
    k1 = k1 + 1;
    same = [same,k1];
end
end
if(n1>= out && n5 >= out)
if (sforb(v) ~= sforf(v)) 
    k1 = k1 + 1;
    same = [same,k1];
end
end
if(n1>= out && n6 >= out)
if (sforb(v) ~= sforg(v)) 
    k1 = k1 + 1;
    same = [same,k1];
end
end

if(n1>= out && n7 >= out)
if (sforb(v) ~= sforh(v)) 
    k1 = k1 + 1;
    same = [same,k1];
end
end

if(n2>= out && n3 >= out)
if (sforc(v) ~= sford(v)) 
    k1 = k1 + 1;
    same = [same,k1];
end
end
if(n2>= out && n4 >= out)
if (sforc(v) ~= sfore(v)) 
    k1 = k1 + 1;
    same = [same,k1];
end
end
if(n2>= out && n5 >= out)
if (sforc(v) ~= sforf(v)) 
    k1 = k1 + 1;
    same = [same,k1];
end
end
if(n2>= out && n6 >= out)
if (sforc(v) ~= sforg(v)) 
    k1 = k1 + 1;
    same = [same,k1];
end
end
if(n2>= out && n7 >= out)
if (sforc(v) ~= sforh(v)) 
    k1 = k1 + 1;
    same = [same,k1];
end
end
if(n3>= out && n4 >= out)
if (sford(v) ~= sfore(v)) 
    k1 = k1 + 1;
    same = [same,k1];
end
end
if(n3>= out && n5 >= out)
if (sford(v) ~= sforf(v)) 
    k1 = k1 + 1;
    same = [same,k1];
end
end
if(n3>= out && n6 >= out)
if (sford(v) ~= sforg(v)) 
    k1 = k1 + 1;
    same = [same,k1];
end
end
if(n3>= out && n7 >= out)
if (sford(v) ~= sforh(v)) 
    k1 = k1 + 1;
    same = [same,k1];
end
end
if(n4>= out && n5 >= out)
if (sfore(v) ~= sforf(v)) 
    k1 = k1 + 1;
    same = [same,k1];
end
end
if(n4>= out && n6 >= out)
if (sfore(v) ~= sforg(v)) 
    k1 = k1 + 1;
    same = [same,k1];
end
end
if(n4>= out && n7 >= out)
if (sfore(v) ~= sforh(v)) 
    k1 = k1 + 1;
    same = [same,k1];
end
end
if(n5>= out && n6 >= out)
if (sforf(v) ~= sforg(v)) 
    k1 = k1 + 1;
    same = [same,k1];
end
end
if(n5>= out && n7 >= out)
if (sforf(v) ~= sforh(v)) 
    k1 = k1 + 1;
    same = [same,k1];
end
end

if(n6>= out && n7 >= out)
if (sforg(v) ~= sforh(v)) 
    k1 = k1 + 1;
    same = [same,k1];
end


end
end


count = out +1;
out=min(4);
for v= count:1:out
if (n0>= out && n1 >= out)   
if (sfora(v) ~= sforb(v))       
    k1 = k1 + 1;
    same = [same,k1];
end
end
if(n0>= out && n2 >= out)
if (sfora(v) ~= sforc(v))       
    k1 = k1 + 1;
    same = [same,k1];
end
end
if (n0>= out && n3 >= out)
if (sfora(v) ~= sford(v))       
    k1 = k1 + 1;
    same = [same,k1];
end
end
if(n0>= out && n4 >= out)
if (sfora(v) ~= sfore(v))       
    k1 = k1 + 1;
    same = [same,k1];
end
end
if(n0>= out && n5 >= out)
if (sfora(v) ~= sforf(v))       
    k1 = k1 + 1;
    same = [same,k1];
end
end
if (n0>= out && n6 >= out)
if (sfora(v) ~= sforg(v))       
    k1 = k1 + 1;
    same = [same,k1];
end
end
if (n0>= out && n7 >= out)
if (sfora(v) ~= sforh(v))       
    k1 = k1 + 1;
    same = [same,k1];
end
end
if(n1>= out && n2 >= out)
if (sforb(v) ~= sforc(v)) 
    k1 = k1 + 1;
    same = [same,k1];
end
end
if(n1>= out && n3 >= out)
if (sforb(v) ~= sford(v)) 
    k1 = k1 + 1;
    same = [same,k1];
end
end
if(n1>= out && n4 >= out)
if (sforb(v) ~= sfore(v)) 
    k1 = k1 + 1;
    same = [same,k1];
end
end
if(n1>= out && n5 >= out)
if (sforb(v) ~= sforf(v)) 
    k1 = k1 + 1;
    same = [same,k1];
end
end
if(n1>= out && n6 >= out)
if (sforb(v) ~= sforg(v)) 
    k1 = k1 + 1;
    same = [same,k1];
end
end

if(n1>= out && n7 >= out)
if (sforb(v) ~= sforh(v)) 
    k1 = k1 + 1;
    same = [same,k1];
end
end

if(n2>= out && n3 >= out)
if (sforc(v) ~= sford(v)) 
    k1 = k1 + 1;
    same = [same,k1];
end
end
if(n2>= out && n4 >= out)
if (sforc(v) ~= sfore(v)) 
    k1 = k1 + 1;
    same = [same,k1];
end
end
if(n2>= out && n5 >= out)
if (sforc(v) ~= sforf(v)) 
    k1 = k1 + 1;
    same = [same,k1];
end
end
if(n2>= out && n6 >= out)
if (sforc(v) ~= sforg(v)) 
    k1 = k1 + 1;
    same = [same,k1];
end
end
if(n2>= out && n7 >= out)
if (sforc(v) ~= sforh(v)) 
    k1 = k1 + 1;
    same = [same,k1];
end
end
if(n3>= out && n4 >= out)
if (sford(v) ~= sfore(v)) 
    k1 = k1 + 1;
    same = [same,k1];
end
end
if(n3>= out && n5 >= out)
if (sford(v) ~= sforf(v)) 
    k1 = k1 + 1;
    same = [same,k1];
end
end
if(n3>= out && n6 >= out)
if (sford(v) ~= sforg(v)) 
    k1 = k1 + 1;
    same = [same,k1];
end
end
if(n3>= out && n7 >= out)
if (sford(v) ~= sforh(v)) 
    k1 = k1 + 1;
    same = [same,k1];
end
end
if(n4>= out && n5 >= out)
if (sfore(v) ~= sforf(v)) 
    k1 = k1 + 1;
    same = [same,k1];
end
end
if(n4>= out && n6 >= out)
if (sfore(v) ~= sforg(v)) 
    k1 = k1 + 1;
    same = [same,k1];
end
end
if(n4>= out && n7 >= out)
if (sfore(v) ~= sforh(v)) 
    k1 = k1 + 1;
    same = [same,k1];
end
end
if(n5>= out && n6 >= out)
if (sforf(v) ~= sforg(v)) 
    k1 = k1 + 1;
    same = [same,k1];
end
end
if(n5>= out && n7 >= out)
if (sforf(v) ~= sforh(v)) 
    k1 = k1 + 1;
    same = [same,k1];
end
end

if(n6>= out && n7 >= out)
if (sforg(v) ~= sforh(v)) 
    k1 = k1 + 1;
    same = [same,k1];
end


end
end


count = out +1;
out=min(5);
for v= count:1:out
if (n0>= out && n1 >= out)   
if (sfora(v) ~= sforb(v))       
    k1 = k1 + 1;
    same = [same,k1];
end
end
if(n0>= out && n2 >= out)
if (sfora(v) ~= sforc(v))       
    k1 = k1 + 1;
    same = [same,k1];
end
end
if (n0>= out && n3 >= out)
if (sfora(v) ~= sford(v))       
    k1 = k1 + 1;
    same = [same,k1];
end
end
if(n0>= out && n4 >= out)
if (sfora(v) ~= sfore(v))       
    k1 = k1 + 1;
    same = [same,k1];
end
end
if(n0>= out && n5 >= out)
if (sfora(v) ~= sforf(v))       
    k1 = k1 + 1;
    same = [same,k1];
end
end
if (n0>= out && n6 >= out)
if (sfora(v) ~= sforg(v))       
    k1 = k1 + 1;
    same = [same,k1];
end
end
if (n0>= out && n7 >= out)
if (sfora(v) ~= sforh(v))       
    k1 = k1 + 1;
    same = [same,k1];
end
end
if(n1>= out && n2 >= out)
if (sforb(v) ~= sforc(v)) 
    k1 = k1 + 1;
    same = [same,k1];
end
end
if(n1>= out && n3 >= out)
if (sforb(v) ~= sford(v)) 
    k1 = k1 + 1;
    same = [same,k1];
end
end
if(n1>= out && n4 >= out)
if (sforb(v) ~= sfore(v)) 
    k1 = k1 + 1;
    same = [same,k1];
end
end
if(n1>= out && n5 >= out)
if (sforb(v) ~= sforf(v)) 
    k1 = k1 + 1;
    same = [same,k1];
end
end
if(n1>= out && n6 >= out)
if (sforb(v) ~= sforg(v)) 
    k1 = k1 + 1;
    same = [same,k1];
end
end

if(n1>= out && n7 >= out)
if (sforb(v) ~= sforh(v)) 
    k1 = k1 + 1;
    same = [same,k1];
end
end

if(n2>= out && n3 >= out)
if (sforc(v) ~= sford(v)) 
    k1 = k1 + 1;
    same = [same,k1];
end
end
if(n2>= out && n4 >= out)
if (sforc(v) ~= sfore(v)) 
    k1 = k1 + 1;
    same = [same,k1];
end
end
if(n2>= out && n5 >= out)
if (sforc(v) ~= sforf(v)) 
    k1 = k1 + 1;
    same = [same,k1];
end
end
if(n2>= out && n6 >= out)
if (sforc(v) ~= sforg(v)) 
    k1 = k1 + 1;
    same = [same,k1];
end
end
if(n2>= out && n7 >= out)
if (sforc(v) ~= sforh(v)) 
    k1 = k1 + 1;
    same = [same,k1];
end
end
if(n3>= out && n4 >= out)
if (sford(v) ~= sfore(v)) 
    k1 = k1 + 1;
    same = [same,k1];
end
end
if(n3>= out && n5 >= out)
if (sford(v) ~= sforf(v)) 
    k1 = k1 + 1;
    same = [same,k1];
end
end
if(n3>= out && n6 >= out)
if (sford(v) ~= sforg(v)) 
    k1 = k1 + 1;
    same = [same,k1];
end
end
if(n3>= out && n7 >= out)
if (sford(v) ~= sforh(v)) 
    k1 = k1 + 1;
    same = [same,k1];
end
end
if(n4>= out && n5 >= out)
if (sfore(v) ~= sforf(v)) 
    k1 = k1 + 1;
    same = [same,k1];
end
end
if(n4>= out && n6 >= out)
if (sfore(v) ~= sforg(v)) 
    k1 = k1 + 1;
    same = [same,k1];
end
end
if(n4>= out && n7 >= out)
if (sfore(v) ~= sforh(v)) 
    k1 = k1 + 1;
    same = [same,k1];
end
end
if(n5>= out && n6 >= out)
if (sforf(v) ~= sforg(v)) 
    k1 = k1 + 1;
    same = [same,k1];
end
end
if(n5>= out && n7 >= out)
if (sforf(v) ~= sforh(v)) 
    k1 = k1 + 1;
    same = [same,k1];
end
end

if(n6>= out && n7 >= out)
if (sforg(v) ~= sforh(v)) 
    k1 = k1 + 1;
    same = [same,k1];
end


end
end

count = out +1;
out=min(6);
for v= count:1:out
if (n0>= out && n1 >= out)   
if (sfora(v) ~= sforb(v))       
    k1 = k1 + 1;
    same = [same,k1];
end
end
if(n0>= out && n2 >= out)
if (sfora(v) ~= sforc(v))       
    k1 = k1 + 1;
    same = [same,k1];
end
end
if (n0>= out && n3 >= out)
if (sfora(v) ~= sford(v))       
    k1 = k1 + 1;
    same = [same,k1];
end
end
if(n0>= out && n4 >= out)
if (sfora(v) ~= sfore(v))       
    k1 = k1 + 1;
    same = [same,k1];
end
end
if(n0>= out && n5 >= out)
if (sfora(v) ~= sforf(v))       
    k1 = k1 + 1;
    same = [same,k1];
end
end
if (n0>= out && n6 >= out)
if (sfora(v) ~= sforg(v))       
    k1 = k1 + 1;
    same = [same,k1];
end
end
if (n0>= out && n7 >= out)
if (sfora(v) ~= sforh(v))       
    k1 = k1 + 1;
    same = [same,k1];
end
end
if(n1>= out && n2 >= out)
if (sforb(v) ~= sforc(v)) 
    k1 = k1 + 1;
    same = [same,k1];
end
end
if(n1>= out && n3 >= out)
if (sforb(v) ~= sford(v)) 
    k1 = k1 + 1;
    same = [same,k1];
end
end
if(n1>= out && n4 >= out)
if (sforb(v) ~= sfore(v)) 
    k1 = k1 + 1;
    same = [same,k1];
end
end
if(n1>= out && n5 >= out)
if (sforb(v) ~= sforf(v)) 
    k1 = k1 + 1;
    same = [same,k1];
end
end
if(n1>= out && n6 >= out)
if (sforb(v) ~= sforg(v)) 
    k1 = k1 + 1;
    same = [same,k1];
end
end

if(n1>= out && n7 >= out)
if (sforb(v) ~= sforh(v)) 
    k1 = k1 + 1;
    same = [same,k1];
end
end

if(n2>= out && n3 >= out)
if (sforc(v) ~= sford(v)) 
    k1 = k1 + 1;
    same = [same,k1];
end
end
if(n2>= out && n4 >= out)
if (sforc(v) ~= sfore(v)) 
    k1 = k1 + 1;
    same = [same,k1];
end
end
if(n2>= out && n5 >= out)
if (sforc(v) ~= sforf(v)) 
    k1 = k1 + 1;
    same = [same,k1];
end
end
if(n2>= out && n6 >= out)
if (sforc(v) ~= sforg(v)) 
    k1 = k1 + 1;
    same = [same,k1];
end
end
if(n2>= out && n7 >= out)
if (sforc(v) ~= sforh(v)) 
    k1 = k1 + 1;
    same = [same,k1];
end
end
if(n3>= out && n4 >= out)
if (sford(v) ~= sfore(v)) 
    k1 = k1 + 1;
    same = [same,k1];
end
end
if(n3>= out && n5 >= out)
if (sford(v) ~= sforf(v)) 
    k1 = k1 + 1;
    same = [same,k1];
end
end
if(n3>= out && n6 >= out)
if (sford(v) ~= sforg(v)) 
    k1 = k1 + 1;
    same = [same,k1];
end
end
if(n3>= out && n7 >= out)
if (sford(v) ~= sforh(v)) 
    k1 = k1 + 1;
    same = [same,k1];
end
end
if(n4>= out && n5 >= out)
if (sfore(v) ~= sforf(v)) 
    k1 = k1 + 1;
    same = [same,k1];
end
end
if(n4>= out && n6 >= out)
if (sfore(v) ~= sforg(v)) 
    k1 = k1 + 1;
    same = [same,k1];
end
end
if(n4>= out && n7 >= out)
if (sfore(v) ~= sforh(v)) 
    k1 = k1 + 1;
    same = [same,k1];
end
end
if(n5>= out && n6 >= out)
if (sforf(v) ~= sforg(v)) 
    k1 = k1 + 1;
    same = [same,k1];
end
end
if(n5>= out && n7 >= out)
if (sforf(v) ~= sforh(v)) 
    k1 = k1 + 1;
    same = [same,k1];
end
end

if(n6>= out && n7 >= out)
if (sforg(v) ~= sforh(v)) 
    k1 = k1 + 1;
    same = [same,k1];
end


end
end

count = out +1;
out=min(7);
for v= count:1:out
if (n0>= out && n1 >= out)   
if (sfora(v) ~= sforb(v))       
    k1 = k1 + 1;
    same = [same,k1];
end
end
if(n0>= out && n2 >= out)
if (sfora(v) ~= sforc(v))       
    k1 = k1 + 1;
    same = [same,k1];
end
end
if (n0>= out && n3 >= out)
if (sfora(v) ~= sford(v))       
    k1 = k1 + 1;
    same = [same,k1];
end
end
if(n0>= out && n4 >= out)
if (sfora(v) ~= sfore(v))       
    k1 = k1 + 1;
    same = [same,k1];
end
end
if(n0>= out && n5 >= out)
if (sfora(v) ~= sforf(v))       
    k1 = k1 + 1;
    same = [same,k1];
end
end
if (n0>= out && n6 >= out)
if (sfora(v) ~= sforg(v))       
    k1 = k1 + 1;
    same = [same,k1];
end
end
if (n0>= out && n7 >= out)
if (sfora(v) ~= sforh(v))       
    k1 = k1 + 1;
    same = [same,k1];
end
end
if(n1>= out && n2 >= out)
if (sforb(v) ~= sforc(v)) 
    k1 = k1 + 1;
    same = [same,k1];
end
end
if(n1>= out && n3 >= out)
if (sforb(v) ~= sford(v)) 
    k1 = k1 + 1;
    same = [same,k1];
end
end
if(n1>= out && n4 >= out)
if (sforb(v) ~= sfore(v)) 
    k1 = k1 + 1;
    same = [same,k1];
end
end
if(n1>= out && n5 >= out)
if (sforb(v) ~= sforf(v)) 
    k1 = k1 + 1;
    same = [same,k1];
end
end
if(n1>= out && n6 >= out)
if (sforb(v) ~= sforg(v)) 
    k1 = k1 + 1;
    same = [same,k1];
end
end

if(n1>= out && n7 >= out)
if (sforb(v) ~= sforh(v)) 
    k1 = k1 + 1;
    same = [same,k1];
end
end

if(n2>= out && n3 >= out)
if (sforc(v) ~= sford(v)) 
    k1 = k1 + 1;
    same = [same,k1];
end
end
if(n2>= out && n4 >= out)
if (sforc(v) ~= sfore(v)) 
    k1 = k1 + 1;
    same = [same,k1];
end
end
if(n2>= out && n5 >= out)
if (sforc(v) ~= sforf(v)) 
    k1 = k1 + 1;
    same = [same,k1];
end
end
if(n2>= out && n6 >= out)
if (sforc(v) ~= sforg(v)) 
    k1 = k1 + 1;
    same = [same,k1];
end
end
if(n2>= out && n7 >= out)
if (sforc(v) ~= sforh(v)) 
    k1 = k1 + 1;
    same = [same,k1];
end
end
if(n3>= out && n4 >= out)
if (sford(v) ~= sfore(v)) 
    k1 = k1 + 1;
    same = [same,k1];
end
end
if(n3>= out && n5 >= out)
if (sford(v) ~= sforf(v)) 
    k1 = k1 + 1;
    same = [same,k1];
end
end
if(n3>= out && n6 >= out)
if (sford(v) ~= sforg(v)) 
    k1 = k1 + 1;
    same = [same,k1];
end
end
if(n3>= out && n7 >= out)
if (sford(v) ~= sforh(v)) 
    k1 = k1 + 1;
    same = [same,k1];
end
end
if(n4>= out && n5 >= out)
if (sfore(v) ~= sforf(v)) 
    k1 = k1 + 1;
    same = [same,k1];
end
end
if(n4>= out && n6 >= out)
if (sfore(v) ~= sforg(v)) 
    k1 = k1 + 1;
    same = [same,k1];
end
end
if(n4>= out && n7 >= out)
if (sfore(v) ~= sforh(v)) 
    k1 = k1 + 1;
    same = [same,k1];
end
end
if(n5>= out && n6 >= out)
if (sforf(v) ~= sforg(v)) 
    k1 = k1 + 1;
    same = [same,k1];
end
end
if(n5>= out && n7 >= out)
if (sforf(v) ~= sforh(v)) 
    k1 = k1 + 1;
    same = [same,k1];
end
end

if(n6>= out && n7 >= out)
if (sforg(v) ~= sforh(v)) 
    k1 = k1 + 1;
    same = [same,k1];
end


end
end

count = out +1;
out=min(8);
for v= count:1:out
if (n0>= out && n1 >= out)   
if (sfora(v) ~= sforb(v))       
    k1 = k1 + 1;
    same = [same,k1];
end
end
if(n0>= out && n2 >= out)
if (sfora(v) ~= sforc(v))       
    k1 = k1 + 1;
    same = [same,k1];
end
end
if (n0>= out && n3 >= out)
if (sfora(v) ~= sford(v))       
    k1 = k1 + 1;
    same = [same,k1];
end
end
if(n0>= out && n4 >= out)
if (sfora(v) ~= sfore(v))       
    k1 = k1 + 1;
    same = [same,k1];
end
end
if(n0>= out && n5 >= out)
if (sfora(v) ~= sforf(v))       
    k1 = k1 + 1;
    same = [same,k1];
end
end
if (n0>= out && n6 >= out)
if (sfora(v) ~= sforg(v))       
    k1 = k1 + 1;
    same = [same,k1];
end
end
if (n0>= out && n7 >= out)
if (sfora(v) ~= sforh(v))       
    k1 = k1 + 1;
    same = [same,k1];
end
end
if(n1>= out && n2 >= out)
if (sforb(v) ~= sforc(v)) 
    k1 = k1 + 1;
    same = [same,k1];
end
end
if(n1>= out && n3 >= out)
if (sforb(v) ~= sford(v)) 
    k1 = k1 + 1;
    same = [same,k1];
end
end
if(n1>= out && n4 >= out)
if (sforb(v) ~= sfore(v)) 
    k1 = k1 + 1;
    same = [same,k1];
end
end
if(n1>= out && n5 >= out)
if (sforb(v) ~= sforf(v)) 
    k1 = k1 + 1;
    same = [same,k1];
end
end
if(n1>= out && n6 >= out)
if (sforb(v) ~= sforg(v)) 
    k1 = k1 + 1;
    same = [same,k1];
end
end

if(n1>= out && n7 >= out)
if (sforb(v) ~= sforh(v)) 
    k1 = k1 + 1;
    same = [same,k1];
end
end

if(n2>= out && n3 >= out)
if (sforc(v) ~= sford(v)) 
    k1 = k1 + 1;
    same = [same,k1];
end
end
if(n2>= out && n4 >= out)
if (sforc(v) ~= sfore(v)) 
    k1 = k1 + 1;
    same = [same,k1];
end
end
if(n2>= out && n5 >= out)
if (sforc(v) ~= sforf(v)) 
    k1 = k1 + 1;
    same = [same,k1];
end
end
if(n2>= out && n6 >= out)
if (sforc(v) ~= sforg(v)) 
    k1 = k1 + 1;
    same = [same,k1];
end
end
if(n2>= out && n7 >= out)
if (sforc(v) ~= sforh(v)) 
    k1 = k1 + 1;
    same = [same,k1];
end
end
if(n3>= out && n4 >= out)
if (sford(v) ~= sfore(v)) 
    k1 = k1 + 1;
    same = [same,k1];
end
end
if(n3>= out && n5 >= out)
if (sford(v) ~= sforf(v)) 
    k1 = k1 + 1;
    same = [same,k1];
end
end
if(n3>= out && n6 >= out)
if (sford(v) ~= sforg(v)) 
    k1 = k1 + 1;
    same = [same,k1];
end
end
if(n3>= out && n7 >= out)
if (sford(v) ~= sforh(v)) 
    k1 = k1 + 1;
    same = [same,k1];
end
end
if(n4>= out && n5 >= out)
if (sfore(v) ~= sforf(v)) 
    k1 = k1 + 1;
    same = [same,k1];
end
end
if(n4>= out && n6 >= out)
if (sfore(v) ~= sforg(v)) 
    k1 = k1 + 1;
    same = [same,k1];
end
end
if(n4>= out && n7 >= out)
if (sfore(v) ~= sforh(v)) 
    k1 = k1 + 1;
    same = [same,k1];
end
end
if(n5>= out && n6 >= out)
if (sforf(v) ~= sforg(v)) 
    k1 = k1 + 1;
    same = [same,k1];
end
end
if(n5>= out && n7 >= out)
if (sforf(v) ~= sforh(v)) 
    k1 = k1 + 1;
    same = [same,k1];
end
end

if(n6>= out && n7 >= out)
if (sforg(v) ~= sforh(v)) 
    k1 = k1 + 1;
    same = [same,k1];
end


end
end
time = 625*10^-6;
[m3,n9] = size(same);
numberofpiconets = randomnumberofpiconet +1;
throughput = (343./(numberofpiconets*n9*time));