function [new_cube,moves]=Face_90(cube,face,n,moves)

new_cube=cube;

if face==1
    if n==1
    new_cube(3,:,3)=flip(cube(:,3,5)');
    new_cube(1,:,4)=flip(cube(:,1,6)');
    new_cube(:,3,5)=cube(1,:,4)';
    new_cube(:,1,6)=cube(3,:,3)';
    new_cube(:,:,1)=rot90(cube(:,:,1),3);
    moves=[moves;'F1'];
    elseif n==2
    new_cube(3,:,3)=flip(cube(1,:,4));
    new_cube(1,:,4)=flip(cube(3,:,3));
    new_cube(:,3,5)=flip(cube(:,1,6));
    new_cube(:,1,6)=flip(cube(:,3,5));
    new_cube(:,:,1)=rot90(cube(:,:,1),2);
    moves=[moves;'F2'];
    elseif n==3
    new_cube(3,:,3)=cube(:,1,6)';
    new_cube(1,:,4)=cube(:,3,5)';
    new_cube(:,3,5)=flip(cube(3,:,3)');
    new_cube(:,1,6)=flip(cube(1,:,4)');
    new_cube(:,:,1)=rot90(cube(:,:,1));
    moves=[moves;'F3'];
    end
elseif face==2
    if n==1
    new_cube(1,:,3)=cube(:,3,6)';
    new_cube(3,:,4)=cube(:,1,5)';
    new_cube(:,1,5)=flip(cube(1,:,3)');
    new_cube(:,3,6)=flip(cube(3,:,4)');
    new_cube(:,:,2)=rot90(cube(:,:,2),3);
    moves=[moves;'B1'];
    elseif n==2
    new_cube(1,:,3)=flip(cube(3,:,4)');
    new_cube(3,:,4)=flip(cube(1,:,3)');
    new_cube(:,1,5)=flip(cube(:,3,6)');
    new_cube(:,3,6)=flip(cube(:,1,5)');
    new_cube(:,:,2)=rot90(cube(:,:,2),2);
    moves=[moves;'B2']; 
    elseif n==3
    new_cube(1,:,3)=flip(cube(:,1,5)');
    new_cube(3,:,4)=flip(cube(:,3,6)');
    new_cube(:,1,5)=cube(3,:,4)';
    new_cube(:,3,6)=cube(1,:,3)';
    new_cube(:,:,2)=rot90(cube(:,:,2));
    moves=[moves;'B3'];
    end
elseif face==3
    if n==1
    new_cube(:,1,1)=cube(:,1,3);
    new_cube(:,3,2)=flip(cube(:,1,4));
    new_cube(:,1,3)=flip(cube(:,3,2));
    new_cube(:,1,4)=cube(:,1,1);
    new_cube(:,:,5)=rot90(cube(:,:,5),3);
    moves=[moves;'L1'];
    elseif n==2
    new_cube(:,1,1)=flip(cube(:,3,2));
    new_cube(:,3,2)=flip(cube(:,1,1));
    new_cube(:,1,3)=cube(:,1,4);
    new_cube(:,1,4)=cube(:,1,3);
    new_cube(:,:,5)=rot90(cube(:,:,5),2);
    moves=[moves;'L2'];
    elseif n==3
    new_cube(:,1,1)=cube(:,1,4);
    new_cube(:,3,2)=flip(cube(:,1,3));
    new_cube(:,1,3)=cube(:,1,1);
    new_cube(:,1,4)=flip(cube(:,3,2));
    new_cube(:,:,5)=rot90(cube(:,:,5));
    moves=[moves;'L3'];
    end
elseif face==4
    if n==1
    new_cube(:,3,1)=cube(:,3,4);
    new_cube(:,1,2)=flip(cube(:,3,3));
    new_cube(:,3,3)=cube(:,3,1);
    new_cube(:,3,4)=flip(cube(:,1,2));
    new_cube(:,:,6)=rot90(cube(:,:,6),3);
    moves=[moves;'R1'];
    elseif n==2
    new_cube(:,3,1)=flip(cube(:,1,2));
    new_cube(:,1,2)=flip(cube(:,3,1));
    new_cube(:,3,3)=cube(:,3,4);
    new_cube(:,3,4)=cube(:,3,3);
    new_cube(:,:,6)=rot90(cube(:,:,6),2);
    moves=[moves;'R2'];
    elseif n==3
    new_cube(:,3,1)=cube(:,3,3);
    new_cube(:,1,2)=flip(cube(:,3,4));
    new_cube(:,3,3)=flip(cube(:,1,2));
    new_cube(:,3,4)=cube(:,3,1);
    new_cube(:,:,6)=rot90(cube(:,:,6));
    moves=[moves;'R3'];
    end
elseif face==5
    if n==1
    new_cube(1,:,1)=cube(1,:,6);
    new_cube(1,:,2)=cube(1,:,5);
    new_cube(1,:,5)=cube(1,:,1);
    new_cube(1,:,6)=cube(1,:,2);
    new_cube(:,:,3)=rot90(cube(:,:,3),3);
    moves=[moves;'U1'];
    elseif n==2
    new_cube(1,:,1)=cube(1,:,2);
    new_cube(1,:,2)=cube(1,:,1);
    new_cube(1,:,5)=cube(1,:,6);
    new_cube(1,:,6)=cube(1,:,5);
    new_cube(:,:,3)=rot90(cube(:,:,3),2);
    moves=[moves;'U2'];
    elseif n==3
    new_cube(1,:,1)=cube(1,:,5);
    new_cube(1,:,2)=cube(1,:,6);
    new_cube(1,:,5)=cube(1,:,2);
    new_cube(1,:,6)=cube(1,:,1);
    new_cube(:,:,3)=rot90(cube(:,:,3));
    moves=[moves;'U3'];
    end
elseif face==6
    if n==1
    new_cube(3,:,1)=cube(3,:,5);
    new_cube(3,:,2)=cube(3,:,6);
    new_cube(3,:,5)=cube(3,:,2);
    new_cube(3,:,6)=cube(3,:,1);
    new_cube(:,:,4)=rot90(cube(:,:,4),3);
    moves=[moves;'D1'];
    elseif n==2
    new_cube(3,:,1)=cube(3,:,2);
    new_cube(3,:,2)=cube(3,:,1);
    new_cube(3,:,5)=cube(3,:,6);
    new_cube(3,:,6)=cube(3,:,5);
    new_cube(:,:,4)=rot90(cube(:,:,4),2);
    moves=[moves;'D2'];
    elseif n==3
    new_cube(3,:,1)=cube(3,:,6);
    new_cube(3,:,2)=cube(3,:,5);
    new_cube(3,:,5)=cube(3,:,1);
    new_cube(3,:,6)=cube(3,:,2);
    new_cube(:,:,4)=rot90(cube(:,:,4));
    moves=[moves;'D3'];
    end
end