function cube=Face_90_3D(cube,face)

moves='NA';

axis vis3d
set(gca,'Visible','off')
set(gcf, 'Color', 'White')
view(60,30)

cube_img=PlotCube(cube);

[white_handle,green_handle,yellow_handle,blue_handle,red_handle,orange_handle]=Show_Cube(cube_img);

d=22.5;

if face==1
    for i=1:4

        rotate(red_handle(7),[0 1 0],d);
        rotate(red_handle(8),[0 1 0],d);
        rotate(red_handle(9),[0 1 0],d);

        rotate(green_handle(1),[0 1 0],d);
        rotate(green_handle(4),[0 1 0],d);
        rotate(green_handle(7),[0 1 0],d);

        rotate(orange_handle(7),[0 1 0],d);
        rotate(orange_handle(8),[0 1 0],d);
        rotate(orange_handle(9),[0 1 0],d);

        rotate(blue_handle(7),[0 1 0],d);
        rotate(blue_handle(8),[0 1 0],d);
        rotate(blue_handle(9),[0 1 0],d);

        rotate(white_handle,[0 1 0],d);

        pause(0.001);

    end
    [cube,~]=Face_90(cube,1,1,moves);
    [white_handle,green_handle,yellow_handle,blue_handle,red_handle,orange_handle]=Show_Cube(PlotCube(cube));
end

if face==2
    for i=1:4

        rotate(red_handle(1),[0 1 0],-d);
        rotate(red_handle(2),[0 1 0],-d);
        rotate(red_handle(3),[0 1 0],-d);

        rotate(green_handle(3),[0 1 0],-d);
        rotate(green_handle(6),[0 1 0],-d);
        rotate(green_handle(9),[0 1 0],-d);

        rotate(orange_handle(1),[0 1 0],-d);
        rotate(orange_handle(2),[0 1 0],-d);
        rotate(orange_handle(3),[0 1 0],-d);

        rotate(blue_handle(1),[0 1 0],-d);
        rotate(blue_handle(2),[0 1 0],-d);
        rotate(blue_handle(3),[0 1 0],-d);

        rotate(yellow_handle,[0 1 0],-d);

        pause(0.001);

    end
    [cube,~]=Face_90(cube,2,1,moves);
    [white_handle,green_handle,yellow_handle,blue_handle,red_handle,orange_handle]=Show_Cube(PlotCube(cube));
end

if face==3
    for i=1:4

        rotate(red_handle(1),[1 0 0],d);
        rotate(red_handle(4),[1 0 0],d);
        rotate(red_handle(7),[1 0 0],d);

        rotate(white_handle(1),[1 0 0],d);
        rotate(white_handle(4),[1 0 0],d);
        rotate(white_handle(7),[1 0 0],d);

        rotate(orange_handle(1),[1 0 0],d);
        rotate(orange_handle(4),[1 0 0],d);
        rotate(orange_handle(7),[1 0 0],d);

        rotate(yellow_handle(1),[1 0 0],d);
        rotate(yellow_handle(2),[1 0 0],d);
        rotate(yellow_handle(3),[1 0 0],d);

        rotate(blue_handle,[1 0 0],d);

        pause(0.001);

    end
    [cube,~]=Face_90(cube,3,1,moves);
    [white_handle,green_handle,yellow_handle,blue_handle,red_handle,orange_handle]=Show_Cube(PlotCube(cube));
end

if face==4
    for i=1:4

        rotate(red_handle(3),[1 0 0],-d);
        rotate(red_handle(6),[1 0 0],-d);
        rotate(red_handle(9),[1 0 0],-d);

        rotate(white_handle(3),[1 0 0],-d);
        rotate(white_handle(6),[1 0 0],-d);
        rotate(white_handle(9),[1 0 0],-d);

        rotate(orange_handle(3),[1 0 0],-d);
        rotate(orange_handle(6),[1 0 0],-d);
        rotate(orange_handle(9),[1 0 0],-d);

        rotate(yellow_handle(7),[1 0 0],-d);
        rotate(yellow_handle(8),[1 0 0],-d);
        rotate(yellow_handle(9),[1 0 0],-d);

        rotate(green_handle,[1 0 0],-d);

        pause(0.001);
        
    end
    [cube,~]=Face_90(cube,4,1,moves);
    [white_handle,green_handle,yellow_handle,blue_handle,red_handle,orange_handle]=Show_Cube(PlotCube(cube));
end

if face==5
    for i=1:4

        rotate(white_handle(1),[0 0 1],-d);
        rotate(white_handle(2),[0 0 1],-d);
        rotate(white_handle(3),[0 0 1],-d);

        rotate(green_handle(1),[0 0 1],-d);
        rotate(green_handle(2),[0 0 1],-d);
        rotate(green_handle(3),[0 0 1],-d);

        rotate(yellow_handle(3),[0 0 1],-d);
        rotate(yellow_handle(6),[0 0 1],-d);
        rotate(yellow_handle(9),[0 0 1],-d);

        rotate(blue_handle(3),[0 0 1],-d);
        rotate(blue_handle(6),[0 0 1],-d);
        rotate(blue_handle(9),[0 0 1],-d);

        rotate(red_handle,[0 0 1],-d);

        pause(0.001);

    end
    [cube,~]=Face_90(cube,5,1,moves);
    [white_handle,green_handle,yellow_handle,blue_handle,red_handle,orange_handle]=Show_Cube(PlotCube(cube));
end

if face==6
    for i=1:4

        rotate(white_handle(7),[0 0 1],d);
        rotate(white_handle(8),[0 0 1],d);
        rotate(white_handle(9),[0 0 1],d);

        rotate(green_handle(7),[0 0 1],d);
        rotate(green_handle(8),[0 0 1],d);
        rotate(green_handle(9),[0 0 1],d);

        rotate(yellow_handle(1),[0 0 1],d);
        rotate(yellow_handle(4),[0 0 1],d);
        rotate(yellow_handle(7),[0 0 1],d);

        rotate(blue_handle(1),[0 0 1],d);
        rotate(blue_handle(4),[0 0 1],d);
        rotate(blue_handle(7),[0 0 1],d);

        rotate(orange_handle,[0 0 1],d);

        pause(0.001);
    end
    [cube,~]=Face_90(cube,6,1,moves);
    [white_handle,green_handle,yellow_handle,blue_handle,red_handle,orange_handle]=Show_Cube(PlotCube(cube));
end

if face==7
    for i=1:4

        rotate(red_handle(7),[0 1 0],-d);
        rotate(red_handle(8),[0 1 0],-d);
        rotate(red_handle(9),[0 1 0],-d);

        rotate(green_handle(1),[0 1 0],-d);
        rotate(green_handle(4),[0 1 0],-d);
        rotate(green_handle(7),[0 1 0],-d);

        rotate(orange_handle(7),[0 1 0],-d);
        rotate(orange_handle(8),[0 1 0],-d);
        rotate(orange_handle(9),[0 1 0],-d);

        rotate(blue_handle(7),[0 1 0],-d);
        rotate(blue_handle(8),[0 1 0],-d);
        rotate(blue_handle(9),[0 1 0],-d);

        rotate(white_handle,[0 1 0],-d);

        pause(0.001);

    end
    [cube,~]=Face_90(cube,1,3,moves);
    [white_handle,green_handle,yellow_handle,blue_handle,red_handle,orange_handle]=Show_Cube(PlotCube(cube));
end

if face==8
    for i=1:4

        rotate(red_handle(1),[0 1 0],d);
        rotate(red_handle(2),[0 1 0],d);
        rotate(red_handle(3),[0 1 0],d);

        rotate(green_handle(3),[0 1 0],d);
        rotate(green_handle(6),[0 1 0],d);
        rotate(green_handle(9),[0 1 0],d);

        rotate(orange_handle(1),[0 1 0],d);
        rotate(orange_handle(2),[0 1 0],d);
        rotate(orange_handle(3),[0 1 0],d);

        rotate(blue_handle(1),[0 1 0],d);
        rotate(blue_handle(2),[0 1 0],d);
        rotate(blue_handle(3),[0 1 0],d);

        rotate(yellow_handle,[0 1 0],d);

        pause(0.001);

    end
    [cube,~]=Face_90(cube,2,3,moves);
    [white_handle,green_handle,yellow_handle,blue_handle,red_handle,orange_handle]=Show_Cube(PlotCube(cube));
end

if face==9
    for i=1:4

        rotate(red_handle(1),[1 0 0],-d);
        rotate(red_handle(4),[1 0 0],-d);
        rotate(red_handle(7),[1 0 0],-d);

        rotate(white_handle(1),[1 0 0],-d);
        rotate(white_handle(4),[1 0 0],-d);
        rotate(white_handle(7),[1 0 0],-d);

        rotate(orange_handle(1),[1 0 0],-d);
        rotate(orange_handle(4),[1 0 0],-d);
        rotate(orange_handle(7),[1 0 0],-d);

        rotate(yellow_handle(1),[1 0 0],-d);
        rotate(yellow_handle(2),[1 0 0],-d);
        rotate(yellow_handle(3),[1 0 0],-d);

        rotate(blue_handle,[1 0 0],-d);

        pause(0.001);

    end
    [cube,~]=Face_90(cube,3,3,moves);
    [white_handle,green_handle,yellow_handle,blue_handle,red_handle,orange_handle]=Show_Cube(PlotCube(cube));
end

if face==10
    for i=1:4

        rotate(red_handle(3),[1 0 0],d);
        rotate(red_handle(6),[1 0 0],d);
        rotate(red_handle(9),[1 0 0],d);

        rotate(white_handle(3),[1 0 0],d);
        rotate(white_handle(6),[1 0 0],d);
        rotate(white_handle(9),[1 0 0],d);

        rotate(orange_handle(3),[1 0 0],d);
        rotate(orange_handle(6),[1 0 0],d);
        rotate(orange_handle(9),[1 0 0],d);

        rotate(yellow_handle(7),[1 0 0],d);
        rotate(yellow_handle(8),[1 0 0],d);
        rotate(yellow_handle(9),[1 0 0],d);

        rotate(green_handle,[1 0 0],d);

        pause(0.001);

    end
    [cube,~]=Face_90(cube,4,3,moves);
    [white_handle,green_handle,yellow_handle,blue_handle,red_handle,orange_handle]=Show_Cube(PlotCube(cube));
end

if face==11
    for i=1:4

        rotate(white_handle(1),[0 0 1],d);
        rotate(white_handle(2),[0 0 1],d);
        rotate(white_handle(3),[0 0 1],d);

        rotate(green_handle(1),[0 0 1],d);
        rotate(green_handle(2),[0 0 1],d);
        rotate(green_handle(3),[0 0 1],d);

        rotate(yellow_handle(3),[0 0 1],d);
        rotate(yellow_handle(6),[0 0 1],d);
        rotate(yellow_handle(9),[0 0 1],d);

        rotate(blue_handle(3),[0 0 1],d);
        rotate(blue_handle(6),[0 0 1],d);
        rotate(blue_handle(9),[0 0 1],d);

        rotate(red_handle,[0 0 1],d);

        pause(0.001);

    end
    [cube,~]=Face_90(cube,5,3,moves);
    [white_handle,green_handle,yellow_handle,blue_handle,red_handle,orange_handle]=Show_Cube(PlotCube(cube));
end

if face==12
    for i=1:4
        rotate(white_handle(7),[0 0 1],-d);
        rotate(white_handle(8),[0 0 1],-d);
        rotate(white_handle(9),[0 0 1],-d);

        rotate(green_handle(7),[0 0 1],-d);
        rotate(green_handle(8),[0 0 1],-d);
        rotate(green_handle(9),[0 0 1],-d);

        rotate(yellow_handle(1),[0 0 1],-d);
        rotate(yellow_handle(4),[0 0 1],-d);
        rotate(yellow_handle(7),[0 0 1],-d);

        rotate(blue_handle(1),[0 0 1],-d);
        rotate(blue_handle(4),[0 0 1],-d);
        rotate(blue_handle(7),[0 0 1],-d);

        rotate(orange_handle,[0 0 1],-d);

        pause(0.001);

    end
    [cube,~]=Face_90(cube,6,3,moves);
    [white_handle,green_handle,yellow_handle,blue_handle,red_handle,orange_handle]=Show_Cube(PlotCube(cube));
end

end