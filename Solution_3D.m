function cube=Solution_3D(cube,moves)

[m,~]=size(moves);

% clf

cla(subplot(1,3,1))

subplot(1,3,1)
title('Pasos')
ax=gca;
ax.FontSize=20;
axis off

text(0,0.9,'Rotar cara 90 grados sentido horario:','FontSize',18)

text(0.1,0.85,'F = Rotar frente','FontSize',18)
text(0.1,0.8,'B = Rotar atras','FontSize',18)
text(0.1,0.75,'U = Rotar arriba','FontSize',18)
text(0.1,0.7,'D = Rotar abajo','FontSize',18)
text(0.1,0.65,'L = Rotar izquierda','FontSize',18)
text(0.1,0.6,'R = Rotar derecha','FontSize',18)

text(0,0.5,'Rotar cubo 90 grados:','FontSize',18)

text(0.1,0.45,'x = Rotar hacia derecha','FontSize',18)
text(0.1,0.4,'y = Rotar hacia abajo','FontSize',18)

text(0,0.3,'2 = Rotar dos veces','FontSize',18)
text(0,0.25,' '' = 90 antihorario','FontSize',18)

text(0,0.15,'Presiona una tecla cuando termine','FontSize',18)
text(0,0.1,'una fase para empezar la siguiente...','FontSize',18)

cla(subplot(1,3,3))

subplot(1,3,3)
title('Solucion:')
ax=gca;
ax.FontSize=20;
axis off

for i=1:m
    pause(0.05);  
    if isequal(moves(i,:),'F1')
        subplot(1,3,3)
        if i<=20
            text(0.1,0.95-i*0.04,'F','FontSize',18)
        elseif i<=40
            text(0.2,0.95-(i-20)*0.04,'F','FontSize',18)
        elseif i<=60
            text(0.3,0.95-(i-40)*0.04,'F','FontSize',18)
        elseif i<=80
            text(0.4,0.95-(i-60)*0.04,'F','FontSize',18)
        elseif i<=100
            text(0.5,0.95-(i-80)*0.04,'F','FontSize',18)
        elseif i<=120
            text(0.6,0.95-(i-100)*0.04,'F','FontSize',18)
        elseif i<=140
            text(0.7,0.95-(i-120)*0.04,'F','FontSize',18)
        else
            text(0.8,0.95-(i-140)*0.04,'F','FontSize',18)
        end
        subplot(1,3,2)
        cube=Face_90_3D(cube,1);
    elseif isequal(moves(i,:),'F2')
        subplot(1,3,3)
        if i<=20
            text(0.1,0.95-i*0.04,'F2','FontSize',18)
        elseif i<=40
            text(0.2,0.95-(i-20)*0.04,'F2','FontSize',18)
        elseif i<=60
            text(0.3,0.95-(i-40)*0.04,'F2','FontSize',18)
        elseif i<=80
            text(0.4,0.95-(i-60)*0.04,'F2','FontSize',18)
        elseif i<=100
            text(0.5,0.95-(i-80)*0.04,'F2','FontSize',18)
        elseif i<=120
            text(0.6,0.95-(i-100)*0.04,'F2','FontSize',18)
        elseif i<=140
            text(0.7,0.95-(i-120)*0.04,'F2','FontSize',18)
        else
            text(0.8,0.95-(i-140)*0.04,'F2','FontSize',18)
        end
        subplot(1,3,2)
        cube=Face_90_3D(cube,1);
        cube=Face_90_3D(cube,1);
    elseif isequal(moves(i,:),'F3')
        subplot(1,3,3)
        if i<=20
            text(0.1,0.95-i*0.04,'F''','FontSize',18)
        elseif i<=40
            text(0.2,0.95-(i-20)*0.04,'F''','FontSize',18)
        elseif i<=60
            text(0.3,0.95-(i-40)*0.04,'F''','FontSize',18)
        elseif i<=80
            text(0.4,0.95-(i-60)*0.04,'F''','FontSize',18)
        elseif i<=100
            text(0.5,0.95-(i-80)*0.04,'F''','FontSize',18)
        elseif i<=120
            text(0.6,0.95-(i-100)*0.04,'F''','FontSize',18)
        elseif i<=140
            text(0.7,0.95-(i-120)*0.04,'F''','FontSize',18)
        else
            text(0.8,0.95-(i-140)*0.04,'F''','FontSize',18)
        end
        subplot(1,3,2)
        cube=Face_90_3D(cube,7);
    elseif isequal(moves(i,:),'B1')
        subplot(1,3,3)
        if i<=20
            text(0.1,0.95-i*0.04,'B','FontSize',18)
        elseif i<=40
            text(0.2,0.95-(i-20)*0.04,'B','FontSize',18)
        elseif i<=60
            text(0.3,0.95-(i-40)*0.04,'B','FontSize',18)
        elseif i<=80
            text(0.4,0.95-(i-60)*0.04,'B','FontSize',18)
        elseif i<=100
            text(0.5,0.95-(i-80)*0.04,'B','FontSize',18)
        elseif i<=120
            text(0.6,0.95-(i-100)*0.04,'B','FontSize',18)
        elseif i<=140
            text(0.7,0.95-(i-120)*0.04,'B','FontSize',18)
        else
            text(0.8,0.95-(i-140)*0.04,'B','FontSize',18)
        end
        subplot(1,3,2)
        cube=Face_90_3D(cube,2);
    elseif isequal(moves(i,:),'B2')
        subplot(1,3,3)
        if i<=20
            text(0.1,0.95-i*0.04,'B2','FontSize',18)
        elseif i<=40
            text(0.2,0.95-(i-20)*0.04,'B2','FontSize',18)
        elseif i<=60
            text(0.3,0.95-(i-40)*0.04,'B2','FontSize',18)
        elseif i<=80
            text(0.4,0.95-(i-60)*0.04,'B2','FontSize',18)
        elseif i<=100
            text(0.5,0.95-(i-80)*0.04,'B2','FontSize',18)
        elseif i<=120
            text(0.6,0.95-(i-100)*0.04,'B2','FontSize',18)
        elseif i<=140
            text(0.7,0.95-(i-120)*0.04,'B2','FontSize',18)
        else
            text(0.8,0.95-(i-140)*0.04,'B2','FontSize',18)
        end
        subplot(1,3,2)
        cube=Face_90_3D(cube,2);
        cube=Face_90_3D(cube,2);
    elseif isequal(moves(i,:),'B3')
        subplot(1,3,3)
        if i<=20
            text(0.1,0.95-i*0.04,'B''','FontSize',18)
        elseif i<=40
            text(0.2,0.95-(i-20)*0.04,'B''','FontSize',18)
        elseif i<=60
            text(0.3,0.95-(i-40)*0.04,'B''','FontSize',18)
        elseif i<=80
            text(0.4,0.95-(i-60)*0.04,'B''','FontSize',18)
        elseif i<=100
            text(0.5,0.95-(i-80)*0.04,'B''','FontSize',18)
        elseif i<=120
            text(0.6,0.95-(i-100)*0.04,'B''','FontSize',18)
        elseif i<=140
            text(0.7,0.95-(i-120)*0.04,'B''','FontSize',18)
        else
            text(0.8,0.95-(i-140)*0.04,'B''','FontSize',18)
        end
        subplot(1,3,2)
        cube=Face_90_3D(cube,8);
    elseif isequal(moves(i,:),'L1')
        subplot(1,3,3)
        if i<=20
            text(0.1,0.95-i*0.04,'L','FontSize',18)
        elseif i<=40
            text(0.2,0.95-(i-20)*0.04,'L','FontSize',18)
        elseif i<=60
            text(0.3,0.95-(i-40)*0.04,'L','FontSize',18)
        elseif i<=80
            text(0.4,0.95-(i-60)*0.04,'L','FontSize',18)
        elseif i<=100
            text(0.5,0.95-(i-80)*0.04,'L','FontSize',18)
        elseif i<=120
            text(0.6,0.95-(i-100)*0.04,'L','FontSize',18)
        elseif i<=140
            text(0.7,0.95-(i-120)*0.04,'L','FontSize',18)
        else
            text(0.8,0.95-(i-140)*0.04,'L','FontSize',18)
        end
        subplot(1,3,2)
        cube=Face_90_3D(cube,3);
    elseif isequal(moves(i,:),'L2')
        subplot(1,3,3)
        if i<=20
            text(0.1,0.95-i*0.04,'L2','FontSize',18)
        elseif i<=40
            text(0.2,0.95-(i-20)*0.04,'L2','FontSize',18)
        elseif i<=60
            text(0.3,0.95-(i-40)*0.04,'L2','FontSize',18)
        elseif i<=80
            text(0.4,0.95-(i-60)*0.04,'L2','FontSize',18)
        elseif i<=100
            text(0.5,0.95-(i-80)*0.04,'L2','FontSize',18)
        elseif i<=120
            text(0.6,0.95-(i-100)*0.04,'L2','FontSize',18)
        elseif i<=140
            text(0.7,0.95-(i-120)*0.04,'L2','FontSize',18)
        else
            text(0.8,0.95-(i-140)*0.04,'L2','FontSize',18)
        end
        subplot(1,3,2)
        cube=Face_90_3D(cube,3);
        cube=Face_90_3D(cube,3);
    elseif isequal(moves(i,:),'L3')
        subplot(1,3,3)
        if i<=20
            text(0.1,0.95-i*0.04,'L''','FontSize',18)
        elseif i<=40
            text(0.2,0.95-(i-20)*0.04,'L''','FontSize',18)
        elseif i<=60
            text(0.3,0.95-(i-40)*0.04,'L''','FontSize',18)
        elseif i<=80
            text(0.4,0.95-(i-60)*0.04,'L''','FontSize',18)
        elseif i<=100
            text(0.5,0.95-(i-80)*0.04,'L''','FontSize',18)
        elseif i<=120
            text(0.6,0.95-(i-100)*0.04,'L''','FontSize',18)
        elseif i<=140
            text(0.7,0.95-(i-120)*0.04,'L''','FontSize',18)
        else
            text(0.8,0.95-(i-140)*0.04,'L''','FontSize',18)
        end
        subplot(1,3,2)
        cube=Face_90_3D(cube,9);
    elseif isequal(moves(i,:),'R1')
        subplot(1,3,3)
        if i<=20
            text(0.1,0.95-i*0.04,'R','FontSize',18)
        elseif i<=40
            text(0.2,0.95-(i-20)*0.04,'R','FontSize',18)
        elseif i<=60
            text(0.3,0.95-(i-40)*0.04,'R','FontSize',18)
        elseif i<=80
            text(0.4,0.95-(i-60)*0.04,'R','FontSize',18)
        elseif i<=100
            text(0.5,0.95-(i-80)*0.04,'R','FontSize',18)
        elseif i<=120
            text(0.6,0.95-(i-100)*0.04,'R','FontSize',18)
        elseif i<=140
            text(0.7,0.95-(i-120)*0.04,'R','FontSize',18)
        else
            text(0.8,0.95-(i-140)*0.04,'R','FontSize',18)
        end
        subplot(1,3,2)
        cube=Face_90_3D(cube,4);
    elseif isequal(moves(i,:),'R2')
        subplot(1,3,3)
        if i<=20
            text(0.1,0.95-i*0.04,'R2','FontSize',18)
        elseif i<=40
            text(0.2,0.95-(i-20)*0.04,'R2','FontSize',18)
        elseif i<=60
            text(0.3,0.95-(i-40)*0.04,'R2','FontSize',18)
        elseif i<=80
            text(0.4,0.95-(i-60)*0.04,'R2','FontSize',18)
        elseif i<=100
            text(0.5,0.95-(i-80)*0.04,'R2','FontSize',18)
        elseif i<=120
            text(0.6,0.95-(i-100)*0.04,'R2','FontSize',18)
        elseif i<=140
            text(0.7,0.95-(i-120)*0.04,'R2','FontSize',18)
        else
            text(0.8,0.95-(i-140)*0.04,'R2','FontSize',18)
        end
        subplot(1,3,2)
        cube=Face_90_3D(cube,4);
        cube=Face_90_3D(cube,4);
    elseif isequal(moves(i,:),'R3')
        subplot(1,3,3)
        if i<=20
            text(0.1,0.95-i*0.04,'R''','FontSize',18)
        elseif i<=40
            text(0.2,0.95-(i-20)*0.04,'R''','FontSize',18)
        elseif i<=60
            text(0.3,0.95-(i-40)*0.04,'R''','FontSize',18)
        elseif i<=80
            text(0.4,0.95-(i-60)*0.04,'R''','FontSize',18)
        elseif i<=100
            text(0.5,0.95-(i-80)*0.04,'R''','FontSize',18)
        elseif i<=120
            text(0.6,0.95-(i-100)*0.04,'R''','FontSize',18)
        elseif i<=140
            text(0.7,0.95-(i-120)*0.04,'R''','FontSize',18)
        else
            text(0.8,0.95-(i-140)*0.04,'R''','FontSize',18)
        end
        subplot(1,3,2)
        cube=Face_90_3D(cube,10);
    elseif isequal(moves(i,:),'U1')
        subplot(1,3,3)
        if i<=20
            text(0.1,0.95-i*0.04,'U','FontSize',18)
        elseif i<=40
            text(0.2,0.95-(i-20)*0.04,'U','FontSize',18)
        elseif i<=60
            text(0.3,0.95-(i-40)*0.04,'U','FontSize',18)
        elseif i<=80
            text(0.4,0.95-(i-60)*0.04,'U','FontSize',18)
        elseif i<=100
            text(0.5,0.95-(i-80)*0.04,'U','FontSize',18)
        elseif i<=120
            text(0.6,0.95-(i-100)*0.04,'U','FontSize',18)
        elseif i<=140
            text(0.7,0.95-(i-120)*0.04,'U','FontSize',18)
        else
            text(0.8,0.95-(i-140)*0.04,'U','FontSize',18)
        end
        subplot(1,3,2)
        cube=Face_90_3D(cube,5);
    elseif isequal(moves(i,:),'U2')
        subplot(1,3,3)
        if i<=20
            text(0.1,0.95-i*0.04,'U2','FontSize',18)
        elseif i<=40
            text(0.2,0.95-(i-20)*0.04,'U2','FontSize',18)
        elseif i<=60
            text(0.3,0.95-(i-40)*0.04,'U2','FontSize',18)
        elseif i<=80
            text(0.4,0.95-(i-60)*0.04,'U2','FontSize',18)
        elseif i<=100
            text(0.5,0.95-(i-80)*0.04,'U2','FontSize',18)
        elseif i<=120
            text(0.6,0.95-(i-100)*0.04,'U2','FontSize',18)
        elseif i<=140
            text(0.7,0.95-(i-120)*0.04,'U2','FontSize',18)
        else
            text(0.8,0.95-(i-140)*0.04,'U2','FontSize',18)
        end
        subplot(1,3,2)
        cube=Face_90_3D(cube,5);
        cube=Face_90_3D(cube,5);
    elseif isequal(moves(i,:),'U3')
        subplot(1,3,3)
        if i<=20
            text(0.1,0.95-i*0.04,'U''','FontSize',18)
        elseif i<=40
            text(0.2,0.95-(i-20)*0.04,'U''','FontSize',18)
        elseif i<=60
            text(0.3,0.95-(i-40)*0.04,'U''','FontSize',18)
        elseif i<=80
            text(0.4,0.95-(i-60)*0.04,'U''','FontSize',18)
        elseif i<=100
            text(0.5,0.95-(i-80)*0.04,'U''','FontSize',18)
        elseif i<=120
            text(0.6,0.95-(i-100)*0.04,'U''','FontSize',18)
        elseif i<=140
            text(0.7,0.95-(i-120)*0.04,'U''','FontSize',18)
        else
            text(0.8,0.95-(i-140)*0.04,'U''','FontSize',18)
        end
        subplot(1,3,2)
        cube=Face_90_3D(cube,11);
    elseif isequal(moves(i,:),'D1')
        subplot(1,3,3)
        if i<=20
            text(0.1,0.95-i*0.04,'D','FontSize',18)
        elseif i<=40
            text(0.2,0.95-(i-20)*0.04,'D','FontSize',18)
        elseif i<=60
            text(0.3,0.95-(i-40)*0.04,'D','FontSize',18)
        elseif i<=80
            text(0.4,0.95-(i-60)*0.04,'D','FontSize',18)
        elseif i<=100
            text(0.5,0.95-(i-80)*0.04,'D','FontSize',18)
        elseif i<=120
            text(0.6,0.95-(i-100)*0.04,'D','FontSize',18)
        elseif i<=140
            text(0.7,0.95-(i-120)*0.04,'D','FontSize',18)
        else
            text(0.8,0.95-(i-140)*0.04,'D','FontSize',18)
        end
        subplot(1,3,2)
        cube=Face_90_3D(cube,6);
    elseif isequal(moves(i,:),'D2')
        subplot(1,3,3)
        if i<=20
            text(0.1,0.95-i*0.04,'D2','FontSize',18)
        elseif i<=40
            text(0.2,0.95-(i-20)*0.04,'D2','FontSize',18)
        elseif i<=60
            text(0.3,0.95-(i-40)*0.04,'D2','FontSize',18)
        elseif i<=80
            text(0.4,0.95-(i-60)*0.04,'D2','FontSize',18)
        elseif i<=100
            text(0.5,0.95-(i-80)*0.04,'D2','FontSize',18)
        elseif i<=120
            text(0.6,0.95-(i-100)*0.04,'D2','FontSize',18)
        elseif i<=140
            text(0.7,0.95-(i-120)*0.04,'D2','FontSize',18)
        else
            text(0.8,0.95-(i-140)*0.04,'D2','FontSize',18)
        end
        subplot(1,3,2)
        cube=Face_90_3D(cube,6);
        cube=Face_90_3D(cube,6);
    elseif isequal(moves(i,:),'D3')
        subplot(1,3,3)
        if i<=20
            text(0.1,0.95-i*0.04,'D''','FontSize',18)
        elseif i<=40
            text(0.2,0.95-(i-20)*0.04,'D''','FontSize',18)
        elseif i<=60
            text(0.3,0.95-(i-40)*0.04,'D''','FontSize',18)
        elseif i<=80
            text(0.4,0.95-(i-60)*0.04,'D''','FontSize',18)
        elseif i<=100
            text(0.5,0.95-(i-80)*0.04,'D''','FontSize',18)
        elseif i<=120
            text(0.6,0.95-(i-100)*0.04,'D''','FontSize',18)
        elseif i<=140
            text(0.7,0.95-(i-120)*0.04,'D''','FontSize',18)
        else
            text(0.8,0.95-(i-140)*0.04,'D''','FontSize',18)
        end
        subplot(1,3,2)
        cube=Face_90_3D(cube,12);
    elseif isequal(moves(i,:),'ym')
        subplot(1,3,3)
        if i<=20
            text(0.1,0.95-i*0.04,'y','FontSize',18)
        elseif i<=40
            text(0.2,0.95-(i-20)*0.04,'y','FontSize',18)
        elseif i<=60
            text(0.3,0.95-(i-40)*0.04,'y','FontSize',18)
        elseif i<=80
            text(0.4,0.95-(i-60)*0.04,'y','FontSize',18)
        elseif i<=100
            text(0.5,0.95-(i-80)*0.04,'y','FontSize',18)
        elseif i<=120
            text(0.6,0.95-(i-100)*0.04,'y','FontSize',18)
        elseif i<=140
            text(0.7,0.95-(i-120)*0.04,'y','FontSize',18)
        else
            text(0.8,0.95-(i-140)*0.04,'y','FontSize',18)
        end
        subplot(1,3,2)
        [white_handle,green_handle,yellow_handle,blue_handle,red_handle,orange_handle]=Show_Cube(PlotCube(cube));
        for j=45:-3:0
            view(j,18);
            pause(0.0001);
        end
        for j=30:3:90
            view(0,j);
            pause(0.0001);
        end
        moves2='NA';
        [cube,~]=rotacion(cube,2,moves2);
        [white_handle,green_handle,yellow_handle,blue_handle,red_handle,orange_handle]=Show_Cube(PlotCube(cube));
        view(0,0)
        for j=0:5:18
            view(0,j);
            pause(0.001);
        end
        for j=0:5:45
            view(j,18);
            pause(0.001);
        end
    elseif isequal(moves(i,:),'xm')
        subplot(1,3,3)
        if i<=20
            text(0.1,0.95-i*0.04,'x','FontSize',18)
        elseif i<=40
            text(0.2,0.95-(i-20)*0.04,'x','FontSize',18)
        elseif i<=60
            text(0.3,0.95-(i-40)*0.04,'x','FontSize',18)
        elseif i<=80
            text(0.4,0.95-(i-60)*0.04,'x','FontSize',18)
        elseif i<=100
            text(0.5,0.95-(i-80)*0.04,'x','FontSize',18)
        elseif i<=120
            text(0.6,0.95-(i-100)*0.04,'x','FontSize',18)
        elseif i<=140
            text(0.7,0.95-(i-120)*0.04,'x','FontSize',18)
        else
            text(0.8,0.95-(i-140)*0.04,'x','FontSize',18)
        end
        subplot(1,3,2)
        [white_handle,green_handle,yellow_handle,blue_handle,red_handle,orange_handle]=Show_Cube(PlotCube(cube));
        for j=45:-5:-45
            view(j,18);
            pause(0.001);
        end
        moves2='NA';
        [cube,~]=rotacion(cube,1,moves2);
        [white_handle,green_handle,yellow_handle,blue_handle,red_handle,orange_handle]=Show_Cube(PlotCube(cube));
    end 
end
end