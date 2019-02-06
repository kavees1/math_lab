function [p,p1]=piconet()

Master = 'M';


p = {};
s1 = 7;
p1 = {};
s2 = 3;
for j = 1:1:1000 % simulation
slotnumber = 0;
while slotnumber < 1000
for i= 1:1:s1
    x = [1,3,5];
     pos = randi(length(x));
     card = x(pos);
	
    r1 = randi([1 79],1,1); % hop carrier for M
    for i2 = 1:1:card
    p = horzcat(p,r1,Master);
    slotnumber = slotnumber +1;	
    end

    pos = randi(length(x));	
    card = x(pos);
		
    r2 = randi([1 79],1,1); % hop carrier for S
    for i3= 1:1:card
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
    p1 = horzcat(p1,r1,Master);
    slotnumber = slotnumber +1;
    end
     pos = randi(length(x));
     card = x(pos); 		
    r2 = randi([1 79],1,1); % hop carrier for S
    for k2 = 1:1:card
    slave = strcat('S',num2str(k));
    p1 = horzcat(p1,r2,slave);
    slotnumber = slotnumber +1;	    
	end	

end

end
end