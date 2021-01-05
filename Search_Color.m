function pixels=Search_Color(square,color)

Red=[330/360,11/360];
Orange=[11/360,45/360];
Yellow=[45/360,90/360];
Green=[90/360,150/360];
Blue=[150/360,270/360];

Saturation=0.4;

square=rgb2hsv(square);
pixels=0;

if color==1
    for i=1:100
        for j=1:100
            if square(i,j,2)<=0.3 && square(i,j,3)>=0.5
                pixels=pixels+1;
            end
        end
    end   
elseif color==2
    for i=1:100
        for j=1:100
            if square(i,j,1)>=Red(1) || square(i,j,1)<Red(2)
                if square(i,j,2)>=Saturation
                    pixels=pixels+1;
                end
            end
        end
    end
elseif color==3
    for i=1:100
        for j=1:100
            if square(i,j,1)>=Orange(1) && square(i,j,1)<Orange(2)
                if square(i,j,2)>=Saturation 
                    pixels=pixels+1;
                end
            end
        end
    end
elseif color==4
    for i=1:100
        for j=1:100
            if square(i,j,1)>=Yellow(1) && square(i,j,1)<Yellow(2)
                if square(i,j,2)>=Saturation
                    pixels=pixels+1;
                end
            end
        end
    end
elseif color==5
    for i=1:100
        for j=1:100
            if square(i,j,1)>=Green(1) && square(i,j,1)<Green(2)
                if square(i,j,2)>=Saturation
                    pixels=pixels+1;
                end
            end
        end
    end
elseif color==6    
    for i=1:100
        for j=1:100
            if square(i,j,1)>=Blue(1) && square(i,j,1)<Blue(2)
                if square(i,j,2)>=Saturation
                    pixels=pixels+1;
                end
            end
        end
    end
end
end   