function [image,new_face]=Gen_Image(face,pix)

image=zeros(300,300,3,'uint8');

new_face=NaN(3,3);

image_l(:,:,:,1)=image(1:100,1:100,:);
image_l(:,:,:,2)=image(1:100,101:200,:);
image_l(:,:,:,3)=image(1:100,201:300,:);
image_l(:,:,:,4)=image(101:200,1:100,:);
image_l(:,:,:,5)=image(101:200,101:200,:);
image_l(:,:,:,6)=image(101:200,201:300,:);
image_l(:,:,:,7)=image(201:300,1:100,:);
image_l(:,:,:,8)=image(201:300,101:200,:);
image_l(:,:,:,9)=image(201:300,201:300,:);

for i=1:9
    
    if Search_Color(face(:,:,:,i),1)>pix
        image_l(:,:,1,i)=255;
        image_l(:,:,2,i)=255;
        image_l(:,:,3,i)=255;
        if i<=3
            new_face(1,i)='W';
        elseif i<=6
            new_face(2,i-3)='W';
        elseif i<=9
            new_face(3,i-6)='W';
        end    
    elseif Search_Color(face(:,:,:,i),2)>pix
        image_l(:,:,1,i)=255;
        if i<=3
            new_face(1,i)='R';
        elseif i<=6
            new_face(2,i-3)='R';
        elseif i<=9
            new_face(3,i-6)='R';
        end
    elseif Search_Color(face(:,:,:,i),3)>pix
        image_l(:,:,1,i)=255;
        image_l(:,:,2,i)=150;
        if i<=3
            new_face(1,i)='O';
        elseif i<=6
            new_face(2,i-3)='O';
        elseif i<=9
            new_face(3,i-6)='O';
        end
    elseif Search_Color(face(:,:,:,i),4)>pix
        image_l(:,:,1,i)=255;
        image_l(:,:,2,i)=255;
        if i<=3
            new_face(1,i)='Y';
        elseif i<=6
            new_face(2,i-3)='Y';
        elseif i<=9
            new_face(3,i-6)='Y';
        end  
    elseif Search_Color(face(:,:,:,i),5)>pix
        image_l(:,:,2,i)=255;
        if i<=3
            new_face(1,i)='G';
        elseif i<=6
            new_face(2,i-3)='G';
        elseif i<=9
            new_face(3,i-6)='G';
        end
    elseif Search_Color(face(:,:,:,i),6)>pix
        image_l(:,:,3,i)=255;
        if i<=3
            new_face(1,i)='B';
        elseif i<=6
            new_face(2,i-3)='B';
        elseif i<=9
            new_face(3,i-6)='B';
        end  
    end
end

image(1:100,1:100,:)=image_l(:,:,:,1);image(1:100,101:200,:)=image_l(:,:,:,2);
image(1:100,201:300,:)=image_l(:,:,:,3);image(101:200,1:100,:)=image_l(:,:,:,4);
image(101:200,101:200,:)=image_l(:,:,:,5);image(101:200,201:300,:)=image_l(:,:,:,6);
image(201:300,1:100,:)=image_l(:,:,:,7);image(201:300,101:200,:)=image_l(:,:,:,8);
image(201:300,201:300,:)=image_l(:,:,:,9);

image(1:5,1:300,:)=0;image(100:105,1:300,:)=0;
image(200:205,1:300,:)=0;image(295:300,1:300,:)=0;

image(1:300,1:5,:)=0;image(1:300,100:105,:)=0;
image(1:300,200:205,:)=0;image(1:300,295:300,:)=0;

end