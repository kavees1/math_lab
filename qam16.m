function [quadrant] = qam16(k)
quadrant = [];
amplitude = [-3*k -k k 3*k];
positive = [amplitude(3) amplitude(4)];
negative = [amplitude(2) amplitude(1)];

for i = 1:2
    for z = 1:2       
       quadrant = horzcat(quadrant,complex(positive(i),positive(z)));%first
       
       quadrant = horzcat(quadrant,complex(positive(i),negative(z)));%second  
       
       quadrant = horzcat(quadrant,complex(negative(i),negative(z)));%third 
       
       quadrant = horzcat(quadrant,complex(negative(i),positive(z)));%fourth
    end
end
end

