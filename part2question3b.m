function [prob]=piconet()

Master = 'M';
prob = 0;
p = {};
s1 =  randi([1 7],1,1);
p1 = {};

sfora = [];
slotsfora = [];
slotsforb = [];
slotsforc = [];
slotsford = [];
slotsfore = [];
slotsforf = [];
slotsforg = [];
slotsforh = [];
randomslot1 = randi([1 79],1,1);
randomslot2 = randi([1 79],1,1);
randomslot3 = randi([1 79],1,1);
randomnumberofpiconet = randi([2,8],1,1);
slotnumber = 0;
while slotnumber < 1000
for i= 1:1:s1

     x = [1,3,5];
     pos = randi(length(x));
     card = x(pos);

    r1 = randi([1 79],1,1); % hop carrier for M
 
    for i2 = 1:1:card
            if (r1 ~= randomslot1 || r1 ~= randomslot2 || r1 ~= randomslot3)
              slotsfora = [slotsfora,r1];
             end
        p = horzcat(p,r1,Master);
       
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


    if randomnumberofpiconet >= 2
        r1 = randi([1 79],1,1); % hop carrier for M
        x = [1,3,5];
        pos = randi(length(x));
        card = x(pos);
        for k1 = 1:1:card
            if (r1 ~= randomslot1 || r1 ~= randomslot2 || r1 ~= randomslot3)
              slotsforb = [slotsforb,r1];
             end
            p1 = horzcat(p1,r1,Master);
      
            slotnumber = slotnumber+1;
        end
            pos = randi(length(x));
            card = x(pos);
    
        r2 = randi([1 79],1,1); % hop carrier for S
        for k3 = 1:1:card
            slotsforb = [slotsforb,r2];
            slave = strcat('S',num2str(i));
            p1 = horzcat(p1,r2,slave);
            slotnumber = slotnumber+1;
        end
    end

    if randomnumberofpiconet >= 3
        r1 = randi([1 79],1,1); % hop carrier for M
        x = [1,3,5];
        pos = randi(length(x));
        card = x(pos);
        for k1 = 1:1:card
            if (r1 ~= randomslot1 || r1 ~= randomslot2 || r1 ~= randomslot3)
              slotsforc = [slotsforc,r1];
             end
            p1 = horzcat(p1,r1,Master);
            
            slotnumber = slotnumber+1;
        end
            pos = randi(length(x));
            card = x(pos);
    
        r2 = randi([1 79],1,1); % hop carrier for S
        for k3 = 1:1:card
            slotsforc = [slotsforc,r2];
            slave = strcat('S',num2str(i));
            p1 = horzcat(p1,r2,slave);
            slotnumber = slotnumber+1;
        end
    end

    if randomnumberofpiconet >= 4
        r1 = randi([1 79],1,1); % hop carrier for M
        x = [1,3,5];
        pos = randi(length(x));
        card = x(pos);
        for k1 = 1:1:card
                    if (r1 ~= randomslot1 || r1 ~= randomslot2 || r1 ~= randomslot3)
              slotsford = [slotsford,r1];
             end
            p1 = horzcat(p1,r1,Master);
       
            slotnumber = slotnumber+1;
        end
            pos = randi(length(x));
            card = x(pos);
    
        r2 = randi([1 79],1,1); % hop carrier for S
        for k3 = 1:1:card
            slotsford = [slotsford,r2];
            slave = strcat('S',num2str(i));
            p1 = horzcat(p1,r2,slave);
            slotnumber = slotnumber+1;
        end
    end

    if randomnumberofpiconet >= 5
        r1 = randi([1 79],1,1); % hop carrier for M
        x = [1,3,5];
        pos = randi(length(x));
        card = x(pos);
        for k1 = 1:1:card
           
             if (r1 ~= randomslot1 || r1 ~= randomslot2 || r1 ~= randomslot3)
              slotsfore = [slotsfore,r1];
             end
            slotsfore = [slotsfore,r1];
            slotnumber = slotnumber+1;
        end
            pos = randi(length(x));
            card = x(pos);
    
        r2 = randi([1 79],1,1); % hop carrier for S
        for k3 = 1:1:card
            slotsfore = [slotsfore,r2];
            slave = strcat('S',num2str(i));
            p1 = horzcat(p1,r2,slave);
            slotnumber = slotnumber+1;
        end
    end

    if randomnumberofpiconet >= 6
        r1 = randi([1 79],1,1); % hop carrier for M
        x = [1,3,5];
        pos = randi(length(x));
        card = x(pos);
        for k1 = 1:1:card
                    if (r1 ~= randomslot1 || r1 ~= randomslot2 || r1 ~= randomslot3)
              slotsforf = [slotsforf,r1];
             end
            p1 = horzcat(p1,r1,Master);
         
            slotnumber = slotnumber+1;
        end
            pos = randi(length(x));
            card = x(pos);
    
        r2 = randi([1 79],1,1); % hop carrier for S
        for k3 = 1:1:card
            slotsforf = [slotsforf,r2];
            slave = strcat('S',num2str(i));
            p1 = horzcat(p1,r2,slave);
            slotnumber = slotnumber+1;
        end
    end

    if randomnumberofpiconet >= 7
        r1 = randi([1 79],1,1); % hop carrier for M
        x = [1,3,5];
        pos = randi(length(x));
        card = x(pos);
        for k1 = 1:1:card
                    if (r1 ~= randomslot1 || r1 ~= randomslot2 || r1 ~= randomslot3)
              slotsforg = [slotsforg,r1];
             end
            p1 = horzcat(p1,r1,Master);
        
            slotnumber = slotnumber+1;
        end
            pos = randi(length(x));
            card = x(pos);
    
        r2 = randi([1 79],1,1); % hop carrier for S
        for k3 = 1:1:card
            slotsforg = [slotsforg,r2];
            slave = strcat('S',num2str(i));
            p1 = horzcat(p1,r2,slave);
            slotnumber = slotnumber+1;
        end
    end

    if randomnumberofpiconet >= 8
        r1 = randi([1 79],1,1); % hop carrier for M
        x = [1,3,5];
        pos = randi(length(x));
        card = x(pos);
        for k1 = 1:1:card
           
                        if (r1 ~= randomslot1 || r1 ~= randomslot2 || r1 ~= randomslot3)
              slotsforh = [slotsforh,r1];
             end
             p1 = horzcat(p1,r1,Master);
            slotnumber = slotnumber+1;
        end
            pos = randi(length(x));
            card = x(pos);
    
        r2 = randi([1 79],1,1); % hop carrier for S
        for k3 = 1:1:card
            slotsforh = [slotsforh,r2];
            slave = strcat('S',num2str(i));
            p1 = horzcat(p1,r2,slave);
            slotnumber = slotnumber+1;
        end
    end
end
end

[m0,n0] = size(slotsfora);
[m1,n1] = size(slotsforb);
[m2,n2] = size(slotsforc);
[m3,n3] = size(slotsford);
[m4,n4] = size(slotsfore);
[m5,n5] = size(slotsforf);
[m6,n6] = size(slotsforg);
[m7,n7] = size(slotsforh);
arrayofsize = [n0,n1,n2,n3,n4,n5,n6,n7];
min=sort(arrayofsize);
out=min(1);

for v= 1:1:out
if (slotsfora(v) == slotsforb(v)) 
    prob = prob + 1;
end
if (slotsfora(v) == slotsforc(v))
    prob = prob + 1;
end
if (slotsfora(v) == slotsford(v))
    prob = prob + 1;
end
if (slotsfora(v) == slotsfore(v))
    prob = prob + 1;
end
if (slotsfora(v) == slotsforf(v))
    prob = prob + 1;
end
if (slotsfora(v) == slotsforg(v))
    prob = prob + 1;
end
if (slotsfora(v) == slotsforh(v))
    prob = prob + 1;
end
if  (slotsforb(v) == slotsforc(v)) 
    prob = prob + 1;
end

if  (slotsforb(v) == slotsford(v)) 
    prob = prob + 1;
end
if  (slotsforb(v) == slotsfore(v)) 
    prob = prob + 1;
end

if  (slotsforb(v) == slotsforf(v)) 
    prob = prob + 1;
end
if  (slotsforb(v) == slotsforg(v)) 
    prob = prob + 1;
end
if  (slotsforb(v) == slotsforh(v)) 
    prob = prob + 1;
end

if (slotsforc(v) == slotsford(v)) 
    prob = prob +1;
end

if (slotsforc(v) == slotsfore(v)) 
    prob = prob +1;
end

if (slotsforc(v) == slotsforf(v)) 
    prob = prob +1;
end

if (slotsforc(v) == slotsforg(v)) 
    prob = prob +1;
end

if (slotsforc(v) == slotsforh(v)) 
    prob = prob +1;
end

if (slotsford(v) == slotsfore(v)) 
    prob = prob +1;
end

if (slotsford(v) == slotsforf(v)) 
    prob = prob +1;
end

if (slotsford(v) == slotsforg(v)) 
    prob = prob +1;
end

if (slotsford(v) == slotsforh(v)) 
    prob = prob +1;
end
if (slotsfore(v) == slotsforf(v)) 
    prob = prob +1;
end

if (slotsfore(v) == slotsforg(v)) 
    prob = prob +1;
end
if (slotsfore(v) == slotsforh(v)) 
    prob = prob +1;
end

if (slotsforf(v) == slotsforg(v)) 
    prob = prob +1;
end

if (slotsforf(v) == slotsforh(v)) 
    prob = prob +1;
end

if (slotsforg(v) == slotsforh(v))  
    prob = prob +1;
end
end

out=min(2);
count = min(1) +1;
for v= count:1:out
 if (n0 >= out  && n1 >= out)
if (slotsfora(v) == slotsforb(v)) 
    prob = prob + 1;
end
 end
 if (n0 >= out  && n2 >= out)
if (slotsfora(v) == slotsforc(v) )
    prob = prob + 1;
end
 end
 if (n0 >= out  && n3 >= out)
if (slotsfora(v) == slotsford(v) )
    prob = prob + 1;
end
 end
 if(n0 >= out  && n4 >= out)
if (slotsfora(v) == slotsfore(v) )
    prob = prob + 1;
end
 end
 if(n0 >= out  && n5 >= out)
if (slotsfora(v) == slotsforf(v) )
    prob = prob + 1;
end
 end
 if (n0 >= out  && n6 >= out)
if (slotsfora(v) == slotsforg(v) )
    prob = prob + 1;
end
 end
 if(n0 >= out  && n7 >= out)
if (slotsfora(v) == slotsforh(v) )
    prob = prob + 1;
end
 end
 if(n1 >= out  && n2 >= out)
if  (slotsforb(v) == slotsforc(v) ) 
    prob = prob + 1;
end
 end
if (n1 >= out  && n3 >= out)
if  (slotsforb(v) == slotsford(v) ) 
    prob = prob + 1;
end
end
if( n1 >= out  && n4 >= out)
if  (slotsforb(v) == slotsfore(v) ) 
    prob = prob + 1;
end
end
if( n1 >= out  && n5 >= out)
if  (slotsforb(v) == slotsforf(v) ) 
    prob = prob + 1;
end
end
if (n1 >= out  && n6 >= out)
if  (slotsforb(v) == slotsforg(v) ) 
    prob = prob + 1;
end
end
if(n1 >= out  && n7 >= out)
if  (slotsforb(v) == slotsforh(v) ) 
    prob = prob + 1;
end
end
if(n2 >= out  && n3 >= out)
if (slotsforc(v) == slotsford(v) ) 
    prob = prob +1;
end
end
if(n2 >= out  && n4 >= out)
if (slotsforc(v) == slotsfore(v)  ) 
    prob = prob +1;
end
end
if(n2 >= out  && n5 >= out)
if (slotsforc(v) == slotsforf(v)  ) 
    prob = prob +1;
end
end
if(n2 >= out  && n6 >= out)
if (slotsforc(v) == slotsforg(v)  ) 
    prob = prob +1;
end
end
if(n2 >= out  && n7 >= out)
if (slotsforc(v) == slotsforh(v)  ) 
    prob = prob +1;
end
end
if(n3 >= out  && n4 >= out)
if (slotsford(v) == slotsfore(v)  ) 
    prob = prob +1;
end
end
if( n3 >= out  && n5 >= out)
if (slotsford(v) == slotsforf(v)  ) 
    prob = prob +1;
end
end
if(n3 >= out  && n6 >= out)
if (slotsford(v) == slotsforg(v)  ) 
    prob = prob +1;
end
end
if( n3 >= out  && n7 >= out)
if (slotsford(v) == slotsforh(v)  ) 
    prob = prob +1;
end
end
if( n4 >= out  && n5 >= out)
if (slotsfore(v) == slotsforf(v)  ) 
    prob = prob +1;
end
end
if(n4 >= out  && n6 >= out)
if (slotsfore(v) == slotsforg(v)  ) 
    prob = prob +1;
end
end
if (n4 >= out  && n7 >= out)
if (slotsfore(v) == slotsforh(v)  ) 
    prob = prob +1;
end
end
if(n5 >= out  && n6 >= out)
if (slotsforf(v) == slotsforg(v)  ) 
    prob = prob +1;
end
end
if(n5 >= out  && n7 >= out)
if (slotsforf(v) == slotsforh(v) ) 
    prob = prob +1;
end
end
if(n6 >= out  && n7 >= out)
if (slotsforg(v) == slotsforh(v) )  
    prob = prob +1;
end
end
end


out=min(3);
count = min(2) +1;
for v= count:1:out
 if (n0 >= out  && n1 >= out)
if (slotsfora(v) == slotsforb(v)) 
    prob = prob + 1;
end
 end
 if (n0 >= out  && n2 >= out)
if (slotsfora(v) == slotsforc(v) )
    prob = prob + 1;
end
 end
 if (n0 >= out  && n3 >= out)
if (slotsfora(v) == slotsford(v) )
    prob = prob + 1;
end
 end
 if(n0 >= out  && n4 >= out)
if (slotsfora(v) == slotsfore(v) )
    prob = prob + 1;
end
 end
 if(n0 >= out  && n5 >= out)
if (slotsfora(v) == slotsforf(v) )
    prob = prob + 1;
end
 end
 if (n0 >= out  && n6 >= out)
if (slotsfora(v) == slotsforg(v) )
    prob = prob + 1;
end
 end
 if(n0 >= out  && n7 >= out)
if (slotsfora(v) == slotsforh(v) )
    prob = prob + 1;
end
 end
 if(n1 >= out  && n2 >= out)
if  (slotsforb(v) == slotsforc(v) ) 
    prob = prob + 1;
end
 end
if (n1 >= out  && n3 >= out)
if  (slotsforb(v) == slotsford(v) ) 
    prob = prob + 1;
end
end
if( n1 >= out  && n4 >= out)
if  (slotsforb(v) == slotsfore(v) ) 
    prob = prob + 1;
end
end
if( n1 >= out  && n5 >= out)
if  (slotsforb(v) == slotsforf(v) ) 
    prob = prob + 1;
end
end
if (n1 >= out  && n6 >= out)
if  (slotsforb(v) == slotsforg(v) ) 
    prob = prob + 1;
end
end
if(n1 >= out  && n7 >= out)
if  (slotsforb(v) == slotsforh(v) ) 
    prob = prob + 1;
end
end
if(n2 >= out  && n3 >= out)
if (slotsforc(v) == slotsford(v) ) 
    prob = prob +1;
end
end
if(n2 >= out  && n4 >= out)
if (slotsforc(v) == slotsfore(v)  ) 
    prob = prob +1;
end
end
if(n2 >= out  && n5 >= out)
if (slotsforc(v) == slotsforf(v)  ) 
    prob = prob +1;
end
end
if(n2 >= out  && n6 >= out)
if (slotsforc(v) == slotsforg(v)  ) 
    prob = prob +1;
end
end
if(n2 >= out  && n7 >= out)
if (slotsforc(v) == slotsforh(v)  ) 
    prob = prob +1;
end
end
if(n3 >= out  && n4 >= out)
if (slotsford(v) == slotsfore(v)  ) 
    prob = prob +1;
end
end
if( n3 >= out  && n5 >= out)
if (slotsford(v) == slotsforf(v)  ) 
    prob = prob +1;
end
end
if(n3 >= out  && n6 >= out)
if (slotsford(v) == slotsforg(v)  ) 
    prob = prob +1;
end
end
if( n3 >= out  && n7 >= out)
if (slotsford(v) == slotsforh(v)  ) 
    prob = prob +1;
end
end
if( n4 >= out  && n5 >= out)
if (slotsfore(v) == slotsforf(v)  ) 
    prob = prob +1;
end
end
if(n4 >= out  && n6 >= out)
if (slotsfore(v) == slotsforg(v)  ) 
    prob = prob +1;
end
end
if (n4 >= out  && n7 >= out)
if (slotsfore(v) == slotsforh(v)  ) 
    prob = prob +1;
end
end
if(n5 >= out  && n6 >= out)
if (slotsforf(v) == slotsforg(v)  ) 
    prob = prob +1;
end
end
if(n5 >= out  && n7 >= out)
if (slotsforf(v) == slotsforh(v) ) 
    prob = prob +1;
end
end
if(n6 >= out  && n7 >= out)
if (slotsforg(v) == slotsforh(v) )  
    prob = prob +1;
end
end
end

out=min(4);
count = min(3)+1;
for v= count:1:out
 if (n0 >= out  && n1 >= out)
if (slotsfora(v) == slotsforb(v)) 
    prob = prob + 1;
end
 end
 if (n0 >= out  && n2 >= out)
if (slotsfora(v) == slotsforc(v) )
    prob = prob + 1;
end
 end
 if (n0 >= out  && n3 >= out)
if (slotsfora(v) == slotsford(v) )
    prob = prob + 1;
end
 end
 if(n0 >= out  && n4 >= out)
if (slotsfora(v) == slotsfore(v) )
    prob = prob + 1;
end
 end
 if(n0 >= out  && n5 >= out)
if (slotsfora(v) == slotsforf(v) )
    prob = prob + 1;
end
 end
 if (n0 >= out  && n6 >= out)
if (slotsfora(v) == slotsforg(v) )
    prob = prob + 1;
end
 end
 if(n0 >= out  && n7 >= out)
if (slotsfora(v) == slotsforh(v) )
    prob = prob + 1;
end
 end
 if(n1 >= out  && n2 >= out)
if  (slotsforb(v) == slotsforc(v) ) 
    prob = prob + 1;
end
 end
if (n1 >= out  && n3 >= out)
if  (slotsforb(v) == slotsford(v) ) 
    prob = prob + 1;
end
end
if( n1 >= out  && n4 >= out)
if  (slotsforb(v) == slotsfore(v) ) 
    prob = prob + 1;
end
end
if( n1 >= out  && n5 >= out)
if  (slotsforb(v) == slotsforf(v) ) 
    prob = prob + 1;
end
end
if (n1 >= out  && n6 >= out)
if  (slotsforb(v) == slotsforg(v) ) 
    prob = prob + 1;
end
end
if(n1 >= out  && n7 >= out)
if  (slotsforb(v) == slotsforh(v) ) 
    prob = prob + 1;
end
end
if(n2 >= out  && n3 >= out)
if (slotsforc(v) == slotsford(v) ) 
    prob = prob +1;
end
end
if(n2 >= out  && n4 >= out)
if (slotsforc(v) == slotsfore(v)  ) 
    prob = prob +1;
end
end
if(n2 >= out  && n5 >= out)
if (slotsforc(v) == slotsforf(v)  ) 
    prob = prob +1;
end
end
if(n2 >= out  && n6 >= out)
if (slotsforc(v) == slotsforg(v)  ) 
    prob = prob +1;
end
end
if(n2 >= out  && n7 >= out)
if (slotsforc(v) == slotsforh(v)  ) 
    prob = prob +1;
end
end
if(n3 >= out  && n4 >= out)
if (slotsford(v) == slotsfore(v)  ) 
    prob = prob +1;
end
end
if( n3 >= out  && n5 >= out)
if (slotsford(v) == slotsforf(v)  ) 
    prob = prob +1;
end
end
if(n3 >= out  && n6 >= out)
if (slotsford(v) == slotsforg(v)  ) 
    prob = prob +1;
end
end
if( n3 >= out  && n7 >= out)
if (slotsford(v) == slotsforh(v)  ) 
    prob = prob +1;
end
end
if( n4 >= out  && n5 >= out)
if (slotsfore(v) == slotsforf(v)  ) 
    prob = prob +1;
end
end
if(n4 >= out  && n6 >= out)
if (slotsfore(v) == slotsforg(v)  ) 
    prob = prob +1;
end
end
if (n4 >= out  && n7 >= out)
if (slotsfore(v) == slotsforh(v)  ) 
    prob = prob +1;
end
end
if(n5 >= out  && n6 >= out)
if (slotsforf(v) == slotsforg(v)  ) 
    prob = prob +1;
end
end
if(n5 >= out  && n7 >= out)
if (slotsforf(v) == slotsforh(v) ) 
    prob = prob +1;
end
end
if(n6 >= out  && n7 >= out)
if (slotsforg(v) == slotsforh(v) )  
    prob = prob +1;
end
end
end



out=min(5);
count = min(4) +1;
for v= count:1:out
 if (n0 >= out  && n1 >= out)
if (slotsfora(v) == slotsforb(v)) 
    prob = prob + 1;
end
 end
 if (n0 >= out  && n2 >= out)
if (slotsfora(v) == slotsforc(v) )
    prob = prob + 1;
end
 end
 if (n0 >= out  && n3 >= out)
if (slotsfora(v) == slotsford(v) )
    prob = prob + 1;
end
 end
 if(n0 >= out  && n4 >= out)
if (slotsfora(v) == slotsfore(v) )
    prob = prob + 1;
end
 end
 if(n0 >= out  && n5 >= out)
if (slotsfora(v) == slotsforf(v) )
    prob = prob + 1;
end
 end
 if (n0 >= out  && n6 >= out)
if (slotsfora(v) == slotsforg(v) )
    prob = prob + 1;
end
 end
 if(n0 >= out  && n7 >= out)
if (slotsfora(v) == slotsforh(v) )
    prob = prob + 1;
end
 end
 if(n1 >= out  && n2 >= out)
if  (slotsforb(v) == slotsforc(v) ) 
    prob = prob + 1;
end
 end
if (n1 >= out  && n3 >= out)
if  (slotsforb(v) == slotsford(v) ) 
    prob = prob + 1;
end
end
if( n1 >= out  && n4 >= out)
if  (slotsforb(v) == slotsfore(v) ) 
    prob = prob + 1;
end
end
if( n1 >= out  && n5 >= out)
if  (slotsforb(v) == slotsforf(v) ) 
    prob = prob + 1;
end
end
if (n1 >= out  && n6 >= out)
if  (slotsforb(v) == slotsforg(v) ) 
    prob = prob + 1;
end
end
if(n1 >= out  && n7 >= out)
if  (slotsforb(v) == slotsforh(v) ) 
    prob = prob + 1;
end
end
if(n2 >= out  && n3 >= out)
if (slotsforc(v) == slotsford(v) ) 
    prob = prob +1;
end
end
if(n2 >= out  && n4 >= out)
if (slotsforc(v) == slotsfore(v)  ) 
    prob = prob +1;
end
end
if(n2 >= out  && n5 >= out)
if (slotsforc(v) == slotsforf(v)  ) 
    prob = prob +1;
end
end
if(n2 >= out  && n6 >= out)
if (slotsforc(v) == slotsforg(v)  ) 
    prob = prob +1;
end
end
if(n2 >= out  && n7 >= out)
if (slotsforc(v) == slotsforh(v)  ) 
    prob = prob +1;
end
end
if(n3 >= out  && n4 >= out)
if (slotsford(v) == slotsfore(v)  ) 
    prob = prob +1;
end
end
if( n3 >= out  && n5 >= out)
if (slotsford(v) == slotsforf(v)  ) 
    prob = prob +1;
end
end
if(n3 >= out  && n6 >= out)
if (slotsford(v) == slotsforg(v)  ) 
    prob = prob +1;
end
end
if( n3 >= out  && n7 >= out)
if (slotsford(v) == slotsforh(v)  ) 
    prob = prob +1;
end
end
if( n4 >= out  && n5 >= out)
if (slotsfore(v) == slotsforf(v)  ) 
    prob = prob +1;
end
end
if(n4 >= out  && n6 >= out)
if (slotsfore(v) == slotsforg(v)  ) 
    prob = prob +1;
end
end
if (n4 >= out  && n7 >= out)
if (slotsfore(v) == slotsforh(v)  ) 
    prob = prob +1;
end
end
if(n5 >= out  && n6 >= out)
if (slotsforf(v) == slotsforg(v)  ) 
    prob = prob +1;
end
end
if(n5 >= out  && n7 >= out)
if (slotsforf(v) == slotsforh(v) ) 
    prob = prob +1;
end
end
if(n6 >= out  && n7 >= out)
if (slotsforg(v) == slotsforh(v) )  
    prob = prob +1;
end
end
end

out=min(6);
count = min(5)+1;
for v= count:1:out
 if (n0 >= out  && n1 >= out)
if (slotsfora(v) == slotsforb(v)) 
    prob = prob + 1;
end
 end
 if (n0 >= out  && n2 >= out)
if (slotsfora(v) == slotsforc(v) )
    prob = prob + 1;
end
 end
 if (n0 >= out  && n3 >= out)
if (slotsfora(v) == slotsford(v) )
    prob = prob + 1;
end
 end
 if(n0 >= out  && n4 >= out)
if (slotsfora(v) == slotsfore(v) )
    prob = prob + 1;
end
 end
 if(n0 >= out  && n5 >= out)
if (slotsfora(v) == slotsforf(v) )
    prob = prob + 1;
end
 end
 if (n0 >= out  && n6 >= out)
if (slotsfora(v) == slotsforg(v) )
    prob = prob + 1;
end
 end
 if(n0 >= out  && n7 >= out)
if (slotsfora(v) == slotsforh(v) )
    prob = prob + 1;
end
 end
 if(n1 >= out  && n2 >= out)
if  (slotsforb(v) == slotsforc(v) ) 
    prob = prob + 1;
end
 end
if (n1 >= out  && n3 >= out)
if  (slotsforb(v) == slotsford(v) ) 
    prob = prob + 1;
end
end
if( n1 >= out  && n4 >= out)
if  (slotsforb(v) == slotsfore(v) ) 
    prob = prob + 1;
end
end
if( n1 >= out  && n5 >= out)
if  (slotsforb(v) == slotsforf(v) ) 
    prob = prob + 1;
end
end
if (n1 >= out  && n6 >= out)
if  (slotsforb(v) == slotsforg(v) ) 
    prob = prob + 1;
end
end
if(n1 >= out  && n7 >= out)
if  (slotsforb(v) == slotsforh(v) ) 
    prob = prob + 1;
end
end
if(n2 >= out  && n3 >= out)
if (slotsforc(v) == slotsford(v) ) 
    prob = prob +1;
end
end
if(n2 >= out  && n4 >= out)
if (slotsforc(v) == slotsfore(v)  ) 
    prob = prob +1;
end
end
if(n2 >= out  && n5 >= out)
if (slotsforc(v) == slotsforf(v)  ) 
    prob = prob +1;
end
end
if(n2 >= out  && n6 >= out)
if (slotsforc(v) == slotsforg(v)  ) 
    prob = prob +1;
end
end
if(n2 >= out  && n7 >= out)
if (slotsforc(v) == slotsforh(v)  ) 
    prob = prob +1;
end
end
if(n3 >= out  && n4 >= out)
if (slotsford(v) == slotsfore(v)  ) 
    prob = prob +1;
end
end
if( n3 >= out  && n5 >= out)
if (slotsford(v) == slotsforf(v)  ) 
    prob = prob +1;
end
end
if(n3 >= out  && n6 >= out)
if (slotsford(v) == slotsforg(v)  ) 
    prob = prob +1;
end
end
if( n3 >= out  && n7 >= out)
if (slotsford(v) == slotsforh(v)  ) 
    prob = prob +1;
end
end
if( n4 >= out  && n5 >= out)
if (slotsfore(v) == slotsforf(v)  ) 
    prob = prob +1;
end
end
if(n4 >= out  && n6 >= out)
if (slotsfore(v) == slotsforg(v)  ) 
    prob = prob +1;
end
end
if (n4 >= out  && n7 >= out)
if (slotsfore(v) == slotsforh(v)  ) 
    prob = prob +1;
end
end
if(n5 >= out  && n6 >= out)
if (slotsforf(v) == slotsforg(v)  ) 
    prob = prob +1;
end
end
if(n5 >= out  && n7 >= out)
if (slotsforf(v) == slotsforh(v) ) 
    prob = prob +1;
end
end
if(n6 >= out  && n7 >= out)
if (slotsforg(v) == slotsforh(v) )  
    prob = prob +1;
end
end
end

out=min(7);
count = min(6) +1;
for v= count:1:out
if (n0 >= out  && n1 >= out)
if (slotsfora(v) == slotsforb(v)) 
    prob = prob + 1;
end
 end
 if (n0 >= out  && n2 >= out)
if (slotsfora(v) == slotsforc(v) )
    prob = prob + 1;
end
 end
 if (n0 >= out  && n3 >= out)
if (slotsfora(v) == slotsford(v) )
    prob = prob + 1;
end
 end
 if(n0 >= out  && n4 >= out)
if (slotsfora(v) == slotsfore(v) )
    prob = prob + 1;
end
 end
 if(n0 >= out  && n5 >= out)
if (slotsfora(v) == slotsforf(v) )
    prob = prob + 1;
end
 end
 if (n0 >= out  && n6 >= out)
if (slotsfora(v) == slotsforg(v) )
    prob = prob + 1;
end
 end
 if(n0 >= out  && n7 >= out)
if (slotsfora(v) == slotsforh(v) )
    prob = prob + 1;
end
 end
 if(n1 >= out  && n2 >= out)
if  (slotsforb(v) == slotsforc(v) ) 
    prob = prob + 1;
end
 end
if (n1 >= out  && n3 >= out)
if  (slotsforb(v) == slotsford(v) ) 
    prob = prob + 1;
end
end
if( n1 >= out  && n4 >= out)
if  (slotsforb(v) == slotsfore(v) ) 
    prob = prob + 1;
end
end
if( n1 >= out  && n5 >= out)
if  (slotsforb(v) == slotsforf(v) ) 
    prob = prob + 1;
end
end
if (n1 >= out  && n6 >= out)
if  (slotsforb(v) == slotsforg(v) ) 
    prob = prob + 1;
end
end
if(n1 >= out  && n7 >= out)
if  (slotsforb(v) == slotsforh(v) ) 
    prob = prob + 1;
end
end
if(n2 >= out  && n3 >= out)
if (slotsforc(v) == slotsford(v) ) 
    prob = prob +1;
end
end
if(n2 >= out  && n4 >= out)
if (slotsforc(v) == slotsfore(v)  ) 
    prob = prob +1;
end
end
if(n2 >= out  && n5 >= out)
if (slotsforc(v) == slotsforf(v)  ) 
    prob = prob +1;
end
end
if(n2 >= out  && n6 >= out)
if (slotsforc(v) == slotsforg(v)  ) 
    prob = prob +1;
end
end
if(n2 >= out  && n7 >= out)
if (slotsforc(v) == slotsforh(v)  ) 
    prob = prob +1;
end
end
if(n3 >= out  && n4 >= out)
if (slotsford(v) == slotsfore(v)  ) 
    prob = prob +1;
end
end
if( n3 >= out  && n5 >= out)
if (slotsford(v) == slotsforf(v)  ) 
    prob = prob +1;
end
end
if(n3 >= out  && n6 >= out)
if (slotsford(v) == slotsforg(v)  ) 
    prob = prob +1;
end
end
if( n3 >= out  && n7 >= out)
if (slotsford(v) == slotsforh(v)  ) 
    prob = prob +1;
end
end
if( n4 >= out  && n5 >= out)
if (slotsfore(v) == slotsforf(v)  ) 
    prob = prob +1;
end
end
if(n4 >= out  && n6 >= out)
if (slotsfore(v) == slotsforg(v)  ) 
    prob = prob +1;
end
end
if (n4 >= out  && n7 >= out)
if (slotsfore(v) == slotsforh(v)  ) 
    prob = prob +1;
end
end
if(n5 >= out  && n6 >= out)
if (slotsforf(v) == slotsforg(v)  ) 
    prob = prob +1;
end
end
if(n5 >= out  && n7 >= out)
if (slotsforf(v) == slotsforh(v) ) 
    prob = prob +1;
end
end
if(n6 >= out  && n7 >= out)
if (slotsforg(v) == slotsforh(v) )  
    prob = prob +1;
end
end
end

out=min(8);
count = min(7);
for v= count:1:out
if (n0 >= out  && n1 >= out)
if (slotsfora(v) == slotsforb(v)) 
    prob = prob + 1;
end
 end
 if (n0 >= out  && n2 >= out)
if (slotsfora(v) == slotsforc(v) )
    prob = prob + 1;
end
 end
 if (n0 >= out  && n3 >= out)
if (slotsfora(v) == slotsford(v) )
    prob = prob + 1;
end
 end
 if(n0 >= out  && n4 >= out)
if (slotsfora(v) == slotsfore(v) )
    prob = prob + 1;
end
 end
 if(n0 >= out  && n5 >= out)
if (slotsfora(v) == slotsforf(v) )
    prob = prob + 1;
end
 end
 if (n0 >= out  && n6 >= out)
if (slotsfora(v) == slotsforg(v) )
    prob = prob + 1;
end
 end
 if(n0 >= out  && n7 >= out)
if (slotsfora(v) == slotsforh(v) )
    prob = prob + 1;
end
 end
 if(n1 >= out  && n2 >= out)
if  (slotsforb(v) == slotsforc(v) ) 
    prob = prob + 1;
end
 end
if (n1 >= out  && n3 >= out)
if  (slotsforb(v) == slotsford(v) ) 
    prob = prob + 1;
end
end
if( n1 >= out  && n4 >= out)
if  (slotsforb(v) == slotsfore(v) ) 
    prob = prob + 1;
end
end
if( n1 >= out  && n5 >= out)
if  (slotsforb(v) == slotsforf(v) ) 
    prob = prob + 1;
end
end
if (n1 >= out  && n6 >= out)
if  (slotsforb(v) == slotsforg(v) ) 
    prob = prob + 1;
end
end
if(n1 >= out  && n7 >= out)
if  (slotsforb(v) == slotsforh(v) ) 
    prob = prob + 1;
end
end
if(n2 >= out  && n3 >= out)
if (slotsforc(v) == slotsford(v) ) 
    prob = prob +1;
end
end
if(n2 >= out  && n4 >= out)
if (slotsforc(v) == slotsfore(v)  ) 
    prob = prob +1;
end
end
if(n2 >= out  && n5 >= out)
if (slotsforc(v) == slotsforf(v)  ) 
    prob = prob +1;
end
end
if(n2 >= out  && n6 >= out)
if (slotsforc(v) == slotsforg(v)  ) 
    prob = prob +1;
end
end
if(n2 >= out  && n7 >= out)
if (slotsforc(v) == slotsforh(v)  ) 
    prob = prob +1;
end
end
if(n3 >= out  && n4 >= out)
if (slotsford(v) == slotsfore(v)  ) 
    prob = prob +1;
end
end
if( n3 >= out  && n5 >= out)
if (slotsford(v) == slotsforf(v)  ) 
    prob = prob +1;
end
end
if(n3 >= out  && n6 >= out)
if (slotsford(v) == slotsforg(v)  ) 
    prob = prob +1;
end
end
if( n3 >= out  && n7 >= out)
if (slotsford(v) == slotsforh(v)  ) 
    prob = prob +1;
end
end
if( n4 >= out  && n5 >= out)
if (slotsfore(v) == slotsforf(v)  ) 
    prob = prob +1;
end
end
if(n4 >= out  && n6 >= out)
if (slotsfore(v) == slotsforg(v)  ) 
    prob = prob +1;
end
end
if (n4 >= out  && n7 >= out)
if (slotsfore(v) == slotsforh(v)  ) 
    prob = prob +1;
end
end
if(n5 >= out  && n6 >= out)
if (slotsforf(v) == slotsforg(v)  ) 
    prob = prob +1;
end
end
if(n5 >= out  && n7 >= out)
if (slotsforf(v) == slotsforh(v) ) 
    prob = prob +1;
end
end
if(n6 >= out  && n7 >= out)
if (slotsforg(v) == slotsforh(v) )  
    prob = prob +1;
end
end
end

prob = (prob./1000)


plot(sfora)