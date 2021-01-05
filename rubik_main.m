clc;clear;

cam=webcam('Droidcam (v4l2loopback)');

%% Cubo 3D Inicial
cube=zeros(3,3,6);
cube_img=ones(300,300,3,6,'uint8')*50;
% White
cube_img(101:200,101:200,1,1)=255;
cube_img(101:200,101:200,2,1)=255;
cube_img(101:200,101:200,3,1)=255;
% Green
cube_img(101:200,101:200,2,2)=255;
% Yellow
cube_img(101:200,101:200,1,3)=255;
cube_img(101:200,101:200,2,3)=255;
% Blue
cube_img(101:200,101:200,3,4)=255;
% Red
cube_img(101:200,101:200,1,5)=255;
% Orange
cube_img(101:200,101:200,1,6)=255;
cube_img(101:200,101:200,2,6)=150;

% Bordes Negros
cube_img(1:5,1:300,:,:)=0;cube_img(100:105,1:300,:,:)=0;
cube_img(200:205,1:300,:,:)=0;cube_img(295:300,1:300,:,:)=0;
cube_img(1:300,1:5,:,:)=0;cube_img(1:300,100:105,:,:)=0;
cube_img(1:300,200:205,:,:)=0;cube_img(1:300,295:300,:,:)=0;

%% Paso 1

h.fig=figure('units','normalized','outerposition',[0 0 1 1]);

% Intrucciones Paso 1
subplot(1,2,1)

title('Paso 1: Escanear Centro Blanco')
ax=gca;
ax.FontSize=20;
axis off

text(0,0.9,'Instrucciones:','FontSize',20)

text(0,0.8,'1. Posicionar el cubo como se ve en la figura:','FontSize',20)
text(0.1,0.75,'\cdot Centro rojo volteando hacia arriba.','FontSize',20)
text(0.1,0.7,'\cdot Centro verde volteando hacia la derecha.','FontSize',20)
text(0.1,0.65,'\cdot Centro blanco volteando hacia el frente.','FontSize',20)

text(0,0.55,'2. Presionar una tecla para continuar y tomarle','FontSize',20)
text(0,0.50,'captura a la cara con el centro blanco.','FontSize',20)

% Animacion
subplot(1,2,2)

axis vis3d
set(gca,'Visible','off')
set(gcf, 'Color', 'White')

white_3d=surface([1,300;1,300], ones(2)*0, [1,1;300,300],'FaceColor', 'texturemap','CData', flip(cube_img(:,:,:,1)), 'CDataMapping', 'direct');
green_3d=surface(ones(2)*300, [1,300;1,300], [1,1;300,300],'FaceColor', 'texturemap','CData', flip(cube_img(:,:,:,2)), 'CDataMapping', 'direct');
yellow_3d=surface([1,300;1,300], ones(2)*300, [1,1;300,300],'FaceColor', 'texturemap','CData', rot90(cube_img(:,:,:,3),2), 'CDataMapping', 'direct');
blue_3d=surface(ones(2)*0, [1,300;1,300], [1,1;300,300],'FaceColor', 'texturemap','CData', rot90(cube_img(:,:,:,4),2), 'CDataMapping', 'direct');
red_3d=surface([1,300;1,300], [1,1;300,300], ones(2)*300,'FaceColor', 'texturemap','CData', flip(cube_img(:,:,:,5)), 'CDataMapping', 'direct');
orange_3d=surface([1,300;1,300], [1,1;300,300], ones(2)*0,'FaceColor', 'texturemap','CData', cube_img(:,:,:,6), 'CDataMapping', 'direct');

view(10,10);

for i=1:2
    pause(0.5);
    delete(white_3d);
    cube_img(1:5,1:300,2,:)=255;cube_img(100:105,1:300,2,:)=255;
    cube_img(200:205,1:300,2,:)=255;cube_img(295:300,1:300,2,:)=255;
    cube_img(1:300,1:5,2,:)=255;cube_img(1:300,100:105,2,:)=255;
    cube_img(1:300,200:205,2,:)=255;cube_img(1:300,295:300,2,:)=255;
    white_3d=surface([1,300;1,300], ones(2)*0, [1,1;300,300],'FaceColor', 'texturemap','CData', flip(cube_img(:,:,:,1)), 'CDataMapping', 'direct');
    pause(0.5);
    delete(white_3d);
    cube_img(1:5,1:300,:,:)=0;cube_img(100:105,1:300,:,:)=0;
    cube_img(200:205,1:300,:,:)=0;cube_img(295:300,1:300,:,:)=0;
    cube_img(1:300,1:5,:,:)=0;cube_img(1:300,100:105,:,:)=0;
    cube_img(1:300,200:205,:,:)=0;cube_img(1:300,295:300,:,:)=0;
    white_3d=surface([1,300;1,300], ones(2)*0, [1,1;300,300],'FaceColor', 'texturemap','CData', flip(cube_img(:,:,:,1)), 'CDataMapping', 'direct');
end

subplot(1,2,1)
text(0.1,0.3,'Presiona una tecla para continuar...','FontSize',20)

pause;
clf

[cube(:,:,1),cube_img(:,:,:,1)]=Face_Scan(1,cam,7000);

%% Paso 2

% Intrucciones Paso 2
subplot(1,2,1)

title('Paso 2: Escanear Centro Verde')
ax=gca;
ax.FontSize=20;
axis off

text(0,0.9,'Instrucciones:','FontSize',20)

text(0,0.8,'1. Rotar el cubo 90 grados hacia la izquierda donde:','FontSize',20)
text(0.1,0.75,'\cdot El centro rojo esta hacia arriba.','FontSize',20)
text(0.1,0.7,'\cdot El centro amarillo esta hacia la derecha.','FontSize',20)
text(0.1,0.65,'\cdot El centro verde esta hacia el frente.','FontSize',20)

text(0,0.55,'2. Presionar una tecla para continuar y tomarle','FontSize',20)
text(0,0.50,'captura a la cara con el centro verde.','FontSize',20)

% Animacion
subplot(1,2,2)

axis vis3d
set(gca,'Visible','off')
set(gcf, 'Color', 'White')

white_3d=surface([1,300;1,300], ones(2)*0, [1,1;300,300],'FaceColor', 'texturemap','CData', flip(cube_img(:,:,:,1)), 'CDataMapping', 'direct');
green_3d=surface(ones(2)*300, [1,300;1,300], [1,1;300,300],'FaceColor', 'texturemap','CData', flip(cube_img(:,:,:,2)), 'CDataMapping', 'direct');
yellow_3d=surface([1,300;1,300], ones(2)*300, [1,1;300,300],'FaceColor', 'texturemap','CData', rot90(cube_img(:,:,:,3),2), 'CDataMapping', 'direct');
blue_3d=surface(ones(2)*0, [1,300;1,300], [1,1;300,300],'FaceColor', 'texturemap','CData', rot90(cube_img(:,:,:,4),2), 'CDataMapping', 'direct');
red_3d=surface([1,300;1,300], [1,1;300,300], ones(2)*300,'FaceColor', 'texturemap','CData', flip(cube_img(:,:,:,5)), 'CDataMapping', 'direct');
orange_3d=surface([1,300;1,300], [1,1;300,300], ones(2)*0,'FaceColor', 'texturemap','CData', cube_img(:,:,:,6), 'CDataMapping', 'direct');

for i=1:1
    for j=10:100
        view(j,10);
        pause(0.0001);
    end
    for k=1:2
        pause(0.5);
        delete(green_3d);
        cube_img(1:5,1:300,2,:)=255;cube_img(100:105,1:300,2,:)=255;
        cube_img(200:205,1:300,2,:)=255;cube_img(295:300,1:300,2,:)=255;
        cube_img(1:300,1:5,2,:)=255;cube_img(1:300,100:105,2,:)=255;
        cube_img(1:300,200:205,2,:)=255;cube_img(1:300,295:300,2,:)=255;
        green_3d=surface(ones(2)*300, [1,300;1,300], [1,1;300,300],'FaceColor', 'texturemap','CData', flip(cube_img(:,:,:,2)), 'CDataMapping', 'direct');
        pause(0.5);
        delete(green_3d);
        cube_img(1:5,1:300,:,:)=0;cube_img(100:105,1:300,:,:)=0;
        cube_img(200:205,1:300,:,:)=0;cube_img(295:300,1:300,:,:)=0;
        cube_img(1:300,1:5,:,:)=0;cube_img(1:300,100:105,:,:)=0;
        cube_img(1:300,200:205,:,:)=0;cube_img(1:300,295:300,:,:)=0;
        green_3d=surface(ones(2)*300, [1,300;1,300], [1,1;300,300],'FaceColor', 'texturemap','CData', flip(cube_img(:,:,:,2)), 'CDataMapping', 'direct');
    end
end

subplot(1,2,1)
text(0.1,0.3,'Presiona una tecla para continuar...','FontSize',20)

pause;
clf

[cube(:,:,2),cube_img(:,:,:,2)]=Face_Scan(2,cam,7000);

%% Paso 3

% Intrucciones Paso 3
subplot(1,2,1)

title('Paso 3: Escanear Centro Amarillo')
ax=gca;
ax.FontSize=20;
axis off

text(0,0.9,'Instrucciones:','FontSize',20)

text(0,0.8,'1. Rotar el cubo 90 grados hacia la izquierda donde:','FontSize',20)
text(0.1,0.75,'\cdot El centro rojo esta hacia arriba.','FontSize',20)
text(0.1,0.7,'\cdot El centro azul esta hacia la derecha.','FontSize',20)
text(0.1,0.65,'\cdot El centro amarillo esta hacia el frente.','FontSize',20)

text(0,0.55,'2. Presionar una tecla para continuar y tomarle','FontSize',20)
text(0,0.50,'captura a la cara con el centro amarillo.','FontSize',20)

% Animacion
subplot(1,2,2)

axis vis3d
set(gca,'Visible','off')
set(gcf, 'Color', 'White')

white_3d=surface([1,300;1,300], ones(2)*0, [1,1;300,300],'FaceColor', 'texturemap','CData', flip(cube_img(:,:,:,1)), 'CDataMapping', 'direct');
green_3d=surface(ones(2)*300, [1,300;1,300], [1,1;300,300],'FaceColor', 'texturemap','CData', flip(cube_img(:,:,:,2)), 'CDataMapping', 'direct');
yellow_3d=surface([1,300;1,300], ones(2)*300, [1,1;300,300],'FaceColor', 'texturemap','CData', rot90(cube_img(:,:,:,3),2), 'CDataMapping', 'direct');
blue_3d=surface(ones(2)*0, [1,300;1,300], [1,1;300,300],'FaceColor', 'texturemap','CData', rot90(cube_img(:,:,:,4),2), 'CDataMapping', 'direct');
red_3d=surface([1,300;1,300], [1,1;300,300], ones(2)*300,'FaceColor', 'texturemap','CData', flip(cube_img(:,:,:,5)), 'CDataMapping', 'direct');
orange_3d=surface([1,300;1,300], [1,1;300,300], ones(2)*0,'FaceColor', 'texturemap','CData', cube_img(:,:,:,6), 'CDataMapping', 'direct');

for i=1:1
    for j=100:190
        view(j,10);
        pause(0.0001);
    end
    for k=1:2
        pause(0.5);
        delete(yellow_3d);
        cube_img(1:5,1:300,2,:)=255;cube_img(100:105,1:300,2,:)=255;
        cube_img(200:205,1:300,2,:)=255;cube_img(295:300,1:300,2,:)=255;
        cube_img(1:300,1:5,2,:)=255;cube_img(1:300,100:105,2,:)=255;
        cube_img(1:300,200:205,2,:)=255;cube_img(1:300,295:300,2,:)=255;
        yellow_3d=surface([1,300;1,300], ones(2)*300, [1,1;300,300],'FaceColor', 'texturemap','CData', rot90(cube_img(:,:,:,3),2), 'CDataMapping', 'direct');
        pause(0.5);
        delete(yellow_3d);
        cube_img(1:5,1:300,:,:)=0;cube_img(100:105,1:300,:,:)=0;
        cube_img(200:205,1:300,:,:)=0;cube_img(295:300,1:300,:,:)=0;
        cube_img(1:300,1:5,:,:)=0;cube_img(1:300,100:105,:,:)=0;
        cube_img(1:300,200:205,:,:)=0;cube_img(1:300,295:300,:,:)=0;
        yellow_3d=surface([1,300;1,300], ones(2)*300, [1,1;300,300],'FaceColor', 'texturemap','CData', rot90(cube_img(:,:,:,3),2), 'CDataMapping', 'direct');
    end
end

subplot(1,2,1)
text(0.1,0.3,'Presiona una tecla para continuar...','FontSize',20)

pause;
clf

[cube(:,:,3),cube_img(:,:,:,3)]=Face_Scan(3,cam,7000);

%% Paso 4

% Intrucciones Paso 4
subplot(1,2,1)

title('Paso 4: Escanear Centro Azul')
ax=gca;
ax.FontSize=20;
axis off

text(0,0.9,'Instrucciones:','FontSize',20)

text(0,0.8,'1. Rotar el cubo 90 grados hacia la izquierda donde:','FontSize',20)
text(0.1,0.75,'\cdot El centro rojo esta hacia arriba.','FontSize',20)
text(0.1,0.7,'\cdot El centro blanco esta hacia la derecha.','FontSize',20)
text(0.1,0.65,'\cdot El centro azul esta hacia el frente.','FontSize',20)

text(0,0.55,'2. Presionar una tecla para continuar y tomarle','FontSize',20)
text(0,0.50,'captura a la cara con el centro azul.','FontSize',20)

% Animacion
subplot(1,2,2)

axis vis3d
set(gca,'Visible','off')
set(gcf, 'Color', 'White')

white_3d=surface([1,300;1,300], ones(2)*0, [1,1;300,300],'FaceColor', 'texturemap','CData', flip(cube_img(:,:,:,1)), 'CDataMapping', 'direct');
green_3d=surface(ones(2)*300, [1,300;1,300], [1,1;300,300],'FaceColor', 'texturemap','CData', flip(cube_img(:,:,:,2)), 'CDataMapping', 'direct');
yellow_3d=surface([1,300;1,300], ones(2)*300, [1,1;300,300],'FaceColor', 'texturemap','CData', rot90(cube_img(:,:,:,3),2), 'CDataMapping', 'direct');
blue_3d=surface(ones(2)*0, [1,300;1,300], [1,1;300,300],'FaceColor', 'texturemap','CData', rot90(cube_img(:,:,:,4),2), 'CDataMapping', 'direct');
red_3d=surface([1,300;1,300], [1,1;300,300], ones(2)*300,'FaceColor', 'texturemap','CData', flip(cube_img(:,:,:,5)), 'CDataMapping', 'direct');
orange_3d=surface([1,300;1,300], [1,1;300,300], ones(2)*0,'FaceColor', 'texturemap','CData', cube_img(:,:,:,6), 'CDataMapping', 'direct');

for i=1:1
    for j=190:280
        view(j,10);
        pause(0.0001);
    end
    for k=1:2
        pause(0.5);
        delete(blue_3d);
        cube_img(1:5,1:300,2,:)=255;cube_img(100:105,1:300,2,:)=255;
        cube_img(200:205,1:300,2,:)=255;cube_img(295:300,1:300,2,:)=255;
        cube_img(1:300,1:5,2,:)=255;cube_img(1:300,100:105,2,:)=255;
        cube_img(1:300,200:205,2,:)=255;cube_img(1:300,295:300,2,:)=255;
        blue_3d=surface(ones(2)*0, [1,300;1,300], [1,1;300,300],'FaceColor', 'texturemap','CData', rot90(cube_img(:,:,:,4),2), 'CDataMapping', 'direct');
        pause(0.5);
        delete(blue_3d);
        cube_img(1:5,1:300,:,:)=0;cube_img(100:105,1:300,:,:)=0;
        cube_img(200:205,1:300,:,:)=0;cube_img(295:300,1:300,:,:)=0;
        cube_img(1:300,1:5,:,:)=0;cube_img(1:300,100:105,:,:)=0;
        cube_img(1:300,200:205,:,:)=0;cube_img(1:300,295:300,:,:)=0;
        blue_3d=surface(ones(2)*0, [1,300;1,300], [1,1;300,300],'FaceColor', 'texturemap','CData', rot90(cube_img(:,:,:,4),2), 'CDataMapping', 'direct');
    end
end

subplot(1,2,1)
text(0.1,0.3,'Presiona una tecla para continuar...','FontSize',20)

pause;
clf

[cube(:,:,4),cube_img(:,:,:,4)]=Face_Scan(4,cam,7000);

%% Paso 5

% Intrucciones Paso 5
subplot(1,2,1)

title('Paso 5: Escanear Centro Rojo')
ax=gca;
ax.FontSize=20;
axis off

text(0,0.9,'Instrucciones:','FontSize',20)

text(0,0.8,'1. Rotar el cubo hacia la izquierda donde:','FontSize',20)
text(0.1,0.75,'\cdot El centro blanco esta hacia el frente.','FontSize',20)

text(0,0.65,'2. Rotar el cubo 90 grados hacia abajo donde:','FontSize',20)
text(0.1,0.6,'\cdot El centro rojo esta hacia el frente.','FontSize',20)

text(0,0.5,'3. Presionar una tecla para continuar y tomarle','FontSize',20)
text(0,0.45,'captura a la cara con el centro rojo.','FontSize',20)

% Animacion
subplot(1,2,2)

axis vis3d
set(gca,'Visible','off')
set(gcf, 'Color', 'White')

white_3d=surface([1,300;1,300], ones(2)*0, [1,1;300,300],'FaceColor', 'texturemap','CData', flip(cube_img(:,:,:,1)), 'CDataMapping', 'direct');
green_3d=surface(ones(2)*300, [1,300;1,300], [1,1;300,300],'FaceColor', 'texturemap','CData', flip(cube_img(:,:,:,2)), 'CDataMapping', 'direct');
yellow_3d=surface([1,300;1,300], ones(2)*300, [1,1;300,300],'FaceColor', 'texturemap','CData', rot90(cube_img(:,:,:,3),2), 'CDataMapping', 'direct');
blue_3d=surface(ones(2)*0, [1,300;1,300], [1,1;300,300],'FaceColor', 'texturemap','CData', rot90(cube_img(:,:,:,4),2), 'CDataMapping', 'direct');
red_3d=surface([1,300;1,300], [1,1;300,300], ones(2)*300,'FaceColor', 'texturemap','CData', flip(cube_img(:,:,:,5)), 'CDataMapping', 'direct');
orange_3d=surface([1,300;1,300], [1,1;300,300], ones(2)*0,'FaceColor', 'texturemap','CData', cube_img(:,:,:,6), 'CDataMapping', 'direct');

for i=1:1
    for j=280:360
        view(j,10);
        pause(0.0001);
    end
    for j=10:90
        view(360,j);
        pause(0.0001);
    end
    for k=1:2
        pause(0.5);
        delete(red_3d);
        cube_img(1:5,1:300,2,:)=255;cube_img(100:105,1:300,2,:)=255;
        cube_img(200:205,1:300,2,:)=255;cube_img(295:300,1:300,2,:)=255;
        cube_img(1:300,1:5,2,:)=255;cube_img(1:300,100:105,2,:)=255;
        cube_img(1:300,200:205,2,:)=255;cube_img(1:300,295:300,2,:)=255;
        red_3d=surface([1,300;1,300], [1,1;300,300], ones(2)*300,'FaceColor', 'texturemap','CData', flip(cube_img(:,:,:,5)), 'CDataMapping', 'direct');
        pause(0.5);
        delete(red_3d);
        cube_img(1:5,1:300,:,:)=0;cube_img(100:105,1:300,:,:)=0;
        cube_img(200:205,1:300,:,:)=0;cube_img(295:300,1:300,:,:)=0;
        cube_img(1:300,1:5,:,:)=0;cube_img(1:300,100:105,:,:)=0;
        cube_img(1:300,200:205,:,:)=0;cube_img(1:300,295:300,:,:)=0;
        red_3d=surface([1,300;1,300], [1,1;300,300], ones(2)*300,'FaceColor', 'texturemap','CData', flip(cube_img(:,:,:,5)), 'CDataMapping', 'direct');
    end
end

subplot(1,2,1)
text(0.1,0.3,'Presiona una tecla para continuar...','FontSize',20)

pause;
clf

[cube(:,:,5),cube_img(:,:,:,5)]=Face_Scan(5,cam,7000);

%% Paso 6

% Intrucciones Paso 6
subplot(1,2,1)

title('Paso 6: Escanear Centro Naranja')
ax=gca;
ax.FontSize=20;
axis off

text(0,0.9,'Instrucciones:','FontSize',20)

text(0,0.8,'1. Rotar el cubo 180 grados hacia arriba donde:','FontSize',20)
text(0.1,0.75,'\cdot El centro naranja esta hacia el frente.','FontSize',20)

text(0,0.65,'2. Presionar una tecla para continuar y tomarle','FontSize',20)
text(0,0.60,'captura a la cara con el centro naranja.','FontSize',20)

% Animacion
subplot(1,2,2)

axis vis3d
set(gca,'Visible','off')
set(gcf, 'Color', 'White')

white_3d=surface([1,300;1,300], ones(2)*0, [1,1;300,300],'FaceColor', 'texturemap','CData', flip(cube_img(:,:,:,1)), 'CDataMapping', 'direct');
green_3d=surface(ones(2)*300, [1,300;1,300], [1,1;300,300],'FaceColor', 'texturemap','CData', flip(cube_img(:,:,:,2)), 'CDataMapping', 'direct');
yellow_3d=surface([1,300;1,300], ones(2)*300, [1,1;300,300],'FaceColor', 'texturemap','CData', rot90(cube_img(:,:,:,3),2), 'CDataMapping', 'direct');
blue_3d=surface(ones(2)*0, [1,300;1,300], [1,1;300,300],'FaceColor', 'texturemap','CData', rot90(cube_img(:,:,:,4),2), 'CDataMapping', 'direct');
red_3d=surface([1,300;1,300], [1,1;300,300], ones(2)*300,'FaceColor', 'texturemap','CData', flip(cube_img(:,:,:,5)), 'CDataMapping', 'direct');
orange_3d=surface([1,300;1,300], [1,1;300,300], ones(2)*0,'FaceColor', 'texturemap','CData', cube_img(:,:,:,6), 'CDataMapping', 'direct');

for i=1:1
    for j=90:-1:-90
        view(0,j);
        pause(0.0001);
    end
    for k=1:2
        pause(0.5);
        delete(orange_3d);
        cube_img(1:5,1:300,2,:)=255;cube_img(100:105,1:300,2,:)=255;
        cube_img(200:205,1:300,2,:)=255;cube_img(295:300,1:300,2,:)=255;
        cube_img(1:300,1:5,2,:)=255;cube_img(1:300,100:105,2,:)=255;
        cube_img(1:300,200:205,2,:)=255;cube_img(1:300,295:300,2,:)=255;
        orange_3d=surface([1,300;1,300], [1,1;300,300], ones(2)*0,'FaceColor', 'texturemap','CData', cube_img(:,:,:,6), 'CDataMapping', 'direct');
        pause(0.5);
        delete(orange_3d);
        cube_img(1:5,1:300,:,:)=0;cube_img(100:105,1:300,:,:)=0;
        cube_img(200:205,1:300,:,:)=0;cube_img(295:300,1:300,:,:)=0;
        cube_img(1:300,1:5,:,:)=0;cube_img(1:300,100:105,:,:)=0;
        cube_img(1:300,200:205,:,:)=0;cube_img(1:300,295:300,:,:)=0;
        orange_3d=surface([1,300;1,300], [1,1;300,300], ones(2)*0,'FaceColor', 'texturemap','CData', cube_img(:,:,:,6), 'CDataMapping', 'direct');
    end
end

subplot(1,2,1)
text(0.1,0.3,'Presiona una tecla para continuar...','FontSize',20)

pause;
clf

[cube(:,:,6),cube_img(:,:,:,6)]=Face_Scan(6,cam,7000);

%% Swap Faces

holdpls=cube(:,:,2);
cube(:,:,2)=cube(:,:,3);
cube(:,:,3)=cube(:,:,5);
hold2=cube(:,:,4);
cube(:,:,4)=cube(:,:,6);
cube(:,:,5)=hold2;
cube(:,:,6)=holdpls;

%% Cubo Final

cube=char(cube);

axis vis3d
set(gca,'Visible','off')
set(gcf, 'Color', 'White')

Show_Cube(PlotCube(cube))

view(45,18)

subplot(1,3,3)
axis off
text(0,0.5,'Presiona una tecla para ver solucion...','FontSize',20)

[cube2,moves]=WCruz(cube);
[cube3,moves2]=aristas(cube2);
[~,moves3]=superior(cube3);

moves=Simple_Moves(Simple_Moves(Simple_Moves(Simple_Moves(moves))));
moves2=Simple_Moves(Simple_Moves(Simple_Moves(Simple_Moves(moves2))));
moves3=Simple_Moves(Simple_Moves(Simple_Moves(Simple_Moves(moves3))));

pause;

Solution_3D(cube,moves);
Show_Cube(PlotCube(cube2))

pause;

Solution_3D(cube2,moves2);
Show_Cube(PlotCube(cube3))

pause;

Solution_3D(cube3,moves3);

all_moves=[moves;moves2;moves3];