function cube_3d=PlotCube(cube)

cube_3d=ones(300,300,3,6,'uint8')*0;

for i=1:6
    image_l=zeros(100,100,3,9);
    for j=1:3
        for k=1:3
            if cube(j,k,i)=='W'
                if j==1
                    image_l(:,:,:,k)=255;
                elseif j==2
                    image_l(:,:,:,k+3)=255;
                elseif j==3
                    image_l(:,:,:,k+6)=255;
                end
            end
            if cube(j,k,i)=='R'
                if j==1
                    image_l(:,:,1,k)=255;
                elseif j==2
                    image_l(:,:,1,k+3)=255;
                elseif j==3
                    image_l(:,:,1,k+6)=255;
                end
            end
            if cube(j,k,i)=='O'
                if j==1
                    image_l(:,:,1,k)=255;
                    image_l(:,:,2,k)=150;
                elseif j==2
                    image_l(:,:,1,k+3)=255;
                    image_l(:,:,2,k+3)=150;
                elseif j==3
                    image_l(:,:,1,k+6)=255;
                    image_l(:,:,2,k+6)=150;
                end
            end
            if cube(j,k,i)=='Y'
                if j==1
                    image_l(:,:,1,k)=255;
                    image_l(:,:,2,k)=255;
                elseif j==2
                    image_l(:,:,1,k+3)=255;
                    image_l(:,:,2,k+3)=255;
                elseif j==3
                    image_l(:,:,1,k+6)=255;
                    image_l(:,:,2,k+6)=255;
                end
            end
            if cube(j,k,i)=='G'
                if j==1
                    image_l(:,:,2,k)=255;
                elseif j==2
                    image_l(:,:,2,k+3)=255;
                elseif j==3
                    image_l(:,:,2,k+6)=255;
                end
            end
            if cube(j,k,i)=='B'
                if j==1
                    image_l(:,:,3,k)=255;
                elseif j==2
                    image_l(:,:,3,k+3)=255;
                elseif j==3
                    image_l(:,:,3,k+6)=255;
                end
            end
        end
    end
    cube_3d(1:100,1:100,:,i)=image_l(:,:,:,1);
    cube_3d(1:100,101:200,:,i)=image_l(:,:,:,2);
    cube_3d(1:100,201:300,:,i)=image_l(:,:,:,3);
    cube_3d(101:200,1:100,:,i)=image_l(:,:,:,4);
    cube_3d(101:200,101:200,:,i)=image_l(:,:,:,5);
    cube_3d(101:200,201:300,:,i)=image_l(:,:,:,6);
    cube_3d(201:300,1:100,:,i)=image_l(:,:,:,7);
    cube_3d(201:300,101:200,:,i)=image_l(:,:,:,8);
    cube_3d(201:300,201:300,:,i)=image_l(:,:,:,9);
end

cube_3d(1:5,1:300,:,:)=0;cube_3d(98:103,1:300,:,:)=0;
cube_3d(198:203,1:300,:,:)=0;cube_3d(295:300,1:300,:,:)=0;
cube_3d(1:300,1:5,:,:)=0;cube_3d(1:300,98:103,:,:)=0;
cube_3d(1:300,198:203,:,:)=0;cube_3d(1:300,295:300,:,:)=0;


hold=cube_3d(:,:,:,2);
cube_3d(:,:,:,2)=cube_3d(:,:,:,6);
hold2=cube_3d(:,:,:,3);
cube_3d(:,:,:,3)=hold;
hold3=cube_3d(:,:,:,4);
cube_3d(:,:,:,4)=cube_3d(:,:,:,5);
cube_3d(:,:,:,5)=hold2;
cube_3d(:,:,:,6)=hold3;

end