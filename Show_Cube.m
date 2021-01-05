function [white_handle,green_handle,yellow_handle,blue_handle,red_handle,orange_handle]=Show_Cube(cube_img)

cla(subplot(1,3,2))

subplot(1,3,2)

axis vis3d
axis([-50 350 -50 350 -50 350])
set(gca,'Visible','off')
set(gcf, 'Color', 'White')
view(45,18)

title('Cubo')

white_handle(1)=surface([1,100;1,100], ones(2)*0, [201,201;300,300],'FaceColor', 'texturemap','CData', flip(cube_img(1:100,1:100,:,1)), 'CDataMapping', 'direct');
white_handle(2)=surface([101,200;101,200], ones(2)*0, [201,201;300,300],'FaceColor', 'texturemap','CData', flip(cube_img(1:100,101:200,:,1)), 'CDataMapping', 'direct');
white_handle(3)=surface([201,300;201,300], ones(2)*0, [201,201;300,300],'FaceColor', 'texturemap','CData', flip(cube_img(1:100,201:300,:,1)), 'CDataMapping', 'direct');
white_handle(4)=surface([1,100;1,100], ones(2)*0, [101,101;200,200],'FaceColor', 'texturemap','CData', flip(cube_img(101:200,1:100,:,1)), 'CDataMapping', 'direct');
white_handle(5)=surface([101,200;101,200], ones(2)*0, [101,101;200,200],'FaceColor', 'texturemap','CData', flip(cube_img(101:200,101:200,:,1)), 'CDataMapping', 'direct');
white_handle(6)=surface([201,300;201,300], ones(2)*0, [101,101;200,200],'FaceColor', 'texturemap','CData', flip(cube_img(101:200,201:300,:,1)), 'CDataMapping', 'direct');
white_handle(7)=surface([1,100;1,100], ones(2)*0, [1,1;100,100],'FaceColor', 'texturemap','CData', flip(cube_img(201:300,1:100,:,1)), 'CDataMapping', 'direct');
white_handle(8)=surface([101,200;101,200], ones(2)*0, [1,1;100,100],'FaceColor', 'texturemap','CData', flip(cube_img(201:300,101:200,:,1)), 'CDataMapping', 'direct');
white_handle(9)=surface([201,300;201,300], ones(2)*0, [1,1;100,100],'FaceColor', 'texturemap','CData', flip(cube_img(201:300,201:300,:,1)), 'CDataMapping', 'direct');

green_handle(1)=surface(ones(2)*300, [1,100;1,100], [201,201;300,300],'FaceColor', 'texturemap','CData', flip(cube_img(1:100,1:100,:,2)), 'CDataMapping', 'direct');
green_handle(2)=surface(ones(2)*300, [101,200;101,200],  [201,201;300,300],'FaceColor', 'texturemap','CData', flip(cube_img(1:100,101:200,:,2)), 'CDataMapping', 'direct');
green_handle(3)=surface(ones(2)*300, [201,300;201,300], [201,201;300,300],'FaceColor', 'texturemap','CData', flip(cube_img(1:100,201:300,:,2)), 'CDataMapping', 'direct');
green_handle(4)=surface(ones(2)*300, [1,100;1,100], [101,101;200,200],'FaceColor', 'texturemap','CData', flip(cube_img(101:200,1:100,:,2)), 'CDataMapping', 'direct');
green_handle(5)=surface(ones(2)*300, [101,200;101,200], [101,101;200,200],'FaceColor', 'texturemap','CData', flip(cube_img(101:200,101:200,:,2)), 'CDataMapping', 'direct');
green_handle(6)=surface(ones(2)*300, [201,300;201,300], [101,101;200,200],'FaceColor', 'texturemap','CData', flip(cube_img(101:200,201:300,:,2)), 'CDataMapping', 'direct');
green_handle(7)=surface(ones(2)*300, [1,100;1,100], [1,1;100,100],'FaceColor', 'texturemap','CData', flip(cube_img(201:300,1:100,:,2)), 'CDataMapping', 'direct');
green_handle(8)=surface(ones(2)*300, [101,200;101,200], [1,1;100,100],'FaceColor', 'texturemap','CData', flip(cube_img(201:300,101:200,:,2)), 'CDataMapping', 'direct');
green_handle(9)=surface(ones(2)*300, [201,300;201,300], [1,1;100,100],'FaceColor', 'texturemap','CData', flip(cube_img(201:300,201:300,:,2)), 'CDataMapping', 'direct');

cube_img(:,:,:,3)=rot90(flip(cube_img(:,:,:,3)));
yellow_handle(1)=surface([1,1;100,100], ones(2)*300, [1,100;1,100],'FaceColor', 'texturemap','CData', rot90(cube_img(1:100,1:100,:,3),2), 'CDataMapping', 'direct');
yellow_handle(2)=surface([1,1;100,100], ones(2)*300, [101,200;101,200],'FaceColor', 'texturemap','CData', rot90(cube_img(1:100,101:200,:,3),2), 'CDataMapping', 'direct');
yellow_handle(3)=surface([1,1;100,100], ones(2)*300, [201,300;201,300],'FaceColor', 'texturemap','CData', rot90(cube_img(1:100,201:300,:,3),2), 'CDataMapping', 'direct');
yellow_handle(4)=surface([101,101;200,200], ones(2)*300, [1,100;1,100],'FaceColor', 'texturemap','CData', rot90(cube_img(101:200,1:100,:,3),2), 'CDataMapping', 'direct');
yellow_handle(5)=surface([101,101;200,200], ones(2)*300, [101,200;101,200],'FaceColor', 'texturemap','CData', rot90(cube_img(101:200,101:200,:,3),2), 'CDataMapping', 'direct');
yellow_handle(6)=surface([101,101;200,200], ones(2)*300, [201,300;201,300],'FaceColor', 'texturemap','CData', rot90(cube_img(101:200,201:300,:,3),2), 'CDataMapping', 'direct');
yellow_handle(7)=surface([201,201;300,300], ones(2)*300, [1,100;1,100],'FaceColor', 'texturemap','CData', rot90(cube_img(201:300,1:100,:,3),2), 'CDataMapping', 'direct');
yellow_handle(8)=surface([201,201;300,300], ones(2)*300, [101,200;101,200],'FaceColor', 'texturemap','CData', rot90(cube_img(201:300,101:200,:,3),2), 'CDataMapping', 'direct');
yellow_handle(9)=surface([201,201;300,300], ones(2)*300, [201,300;201,300],'FaceColor', 'texturemap','CData', rot90(cube_img(201:300,201:300,:,3),2), 'CDataMapping', 'direct');

cube_img(:,:,:,4)=rot90(cube_img(:,:,:,4),3);
blue_handle(1)=surface(ones(2)*0, [201,201;300,300], [1,100;1,100], 'FaceColor', 'texturemap','CData', rot90(cube_img(1:100,1:100,:,4),2), 'CDataMapping', 'direct');
blue_handle(2)=surface(ones(2)*0, [201,201;300,300], [101,200;101,200],'FaceColor', 'texturemap','CData', rot90(cube_img(1:100,101:200,:,4),2), 'CDataMapping', 'direct');
blue_handle(3)=surface(ones(2)*0, [201,201;300,300], [201,300;201,300],'FaceColor', 'texturemap','CData', rot90(cube_img(1:100,201:300,:,4),2), 'CDataMapping', 'direct');
blue_handle(4)=surface(ones(2)*0, [101,101;200,200], [1,100;1,100],'FaceColor', 'texturemap','CData', rot90(cube_img(101:200,1:100,:,4),2), 'CDataMapping', 'direct');
blue_handle(5)=surface(ones(2)*0, [101,101;200,200], [101,200;101,200],'FaceColor', 'texturemap','CData', rot90(cube_img(101:200,101:200,:,4),2), 'CDataMapping', 'direct');
blue_handle(6)=surface(ones(2)*0, [101,101;200,200], [201,300;201,300], 'FaceColor', 'texturemap','CData', rot90(cube_img(101:200,201:300,:,4),2), 'CDataMapping', 'direct');
blue_handle(7)=surface(ones(2)*0, [1,1;100,100], [1,100;1,100],'FaceColor', 'texturemap','CData', rot90(cube_img(201:300,1:100,:,4),2), 'CDataMapping', 'direct');
blue_handle(8)=surface(ones(2)*0, [1,1;100,100], [101,200;101,200],'FaceColor', 'texturemap','CData', rot90(cube_img(201:300,101:200,:,4),2), 'CDataMapping', 'direct');
blue_handle(9)=surface(ones(2)*0, [1,1;100,100], [201,300;201,300],'FaceColor', 'texturemap','CData', rot90(cube_img(201:300,201:300,:,4),2), 'CDataMapping', 'direct');

red_handle(1)=surface([1,100;1,100], [201,201;300,300], ones(2)*300,'FaceColor', 'texturemap','CData', flip(cube_img(1:100,1:100,:,5)), 'CDataMapping', 'direct');
red_handle(2)=surface([101,200;101,200], [201,201;300,300], ones(2)*300,'FaceColor', 'texturemap','CData', flip(cube_img(1:100,101:200,:,5)), 'CDataMapping', 'direct');
red_handle(3)=surface([201,300;201,300], [201,201;300,300], ones(2)*300,'FaceColor', 'texturemap','CData', flip(cube_img(1:100,201:300,:,5)), 'CDataMapping', 'direct');
red_handle(4)=surface([1,100;1,100], [101,101;200,200], ones(2)*300,'FaceColor', 'texturemap','CData', flip(cube_img(101:200,1:100,:,5)), 'CDataMapping', 'direct');
red_handle(5)=surface([101,200;101,200], [101,101;200,200], ones(2)*300,'FaceColor', 'texturemap','CData', flip(cube_img(101:200,101:200,:,5)), 'CDataMapping', 'direct');
red_handle(6)=surface([201,300;201,300], [101,101;200,200], ones(2)*300,'FaceColor', 'texturemap','CData', flip(cube_img(101:200,201:300,:,5)), 'CDataMapping', 'direct');
red_handle(7)=surface([1,100;1,100], [1,1;100,100], ones(2)*300,'FaceColor', 'texturemap','CData', flip(cube_img(201:300,1:100,:,5)), 'CDataMapping', 'direct');
red_handle(8)=surface([101,200;101,200], [1,1;100,100], ones(2)*300,'FaceColor', 'texturemap','CData', flip(cube_img(201:300,101:200,:,5)), 'CDataMapping', 'direct');
red_handle(9)=surface([201,300;201,300], [1,1;100,100], ones(2)*300,'FaceColor', 'texturemap','CData', flip(cube_img(201:300,201:300,:,5)), 'CDataMapping', 'direct');

cube_img(:,:,:,6)=flip(cube_img(:,:,:,6));
orange_handle(1)=surface([1,100;1,100], [201,201;300,300], ones(2)*0,'FaceColor', 'texturemap','CData', cube_img(1:100,1:100,:,6), 'CDataMapping', 'direct');
orange_handle(2)=surface([101,200;101,200], [201,201;300,300], ones(2)*0,'FaceColor', 'texturemap','CData', cube_img(1:100,101:200,:,6), 'CDataMapping', 'direct');
orange_handle(3)=surface([201,300;201,300], [201,201;300,300], ones(2)*0,'FaceColor', 'texturemap','CData', cube_img(1:100,201:300,:,6), 'CDataMapping', 'direct');
orange_handle(4)=surface([1,100;1,100], [101,101;200,200], ones(2)*0,'FaceColor', 'texturemap','CData', cube_img(101:200,1:100,:,6), 'CDataMapping', 'direct');
orange_handle(5)=surface([101,200;101,200], [101,101;200,200], ones(2)*0,'FaceColor', 'texturemap','CData', cube_img(101:200,101:200,:,6), 'CDataMapping', 'direct');
orange_handle(6)=surface([201,300;201,300], [101,101;200,200], ones(2)*0,'FaceColor', 'texturemap','CData', cube_img(101:200,201:300,:,6), 'CDataMapping', 'direct');
orange_handle(7)=surface([1,100;1,100], [1,1;100,100], ones(2)*0,'FaceColor', 'texturemap','CData', cube_img(201:300,1:100,:,6), 'CDataMapping', 'direct');
orange_handle(8)=surface([101,200;101,200], [1,1;100,100], ones(2)*0,'FaceColor', 'texturemap','CData', cube_img(201:300,101:200,:,6), 'CDataMapping', 'direct');
orange_handle(9)=surface([201,300;201,300], [1,1;100,100], ones(2)*0,'FaceColor', 'texturemap','CData', cube_img(201:300,201:300,:,6), 'CDataMapping', 'direct');

end
