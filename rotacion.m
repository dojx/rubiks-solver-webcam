function [new_cube,moves]=rotacion(cube,c,moves)
if c==1
    new_cube(:,:,1)=cube(:,:,5);
    new_cube(:,:,6)=cube(:,:,1);
    new_cube(:,:,2)=cube(:,:,6);      
    new_cube(:,:,5)=cube(:,:,2);
    new_cube(3,:,3)=cube(:,1,3);
    new_cube(2,:,3)=cube(:,2,3);
    new_cube(1,:,3)=cube(:,3,3);
    new_cube(:,:,4)=rot90(cube(:,:,4),3);
    moves=[moves;'xm'];
end
if c==2
    new_cube(:,:,1)=cube(:,:,3);
    new_cube(:,:,3)=rot90(cube(:,:,2),2);
    new_cube(:,:,2)=rot90(cube(:,:,4),2);      
    new_cube(:,:,4)=cube(:,:,1);
    new_cube(:,:,5)=rot90(cube(:,:,5),3);
    new_cube(:,:,6)=rot90(cube(:,:,6));
    moves=[moves;'ym'];
end