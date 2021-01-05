function [face,face_img]=Face_Scan(center,cam,pix)

    % 640x480
    mask=ones(480,640,'uint8')*1;
    mask(90:95,170:470)=0;
    mask(190:195,170:470)=0;
    mask(290:295,170:470)=0;
    mask(390:395,170:470)=0;
    mask(90:395,170:175)=0;
    mask(90:395,270:275)=0;
    mask(90:395,370:375)=0;
    mask(90:395,470:475)=0;

  for it=1:200    
     im=snapshot(cam);
     im=im.*repmat(mask,[1,1,3]);
     im_blur=imgaussfilt(im,6).*0.75;
     im_blur(90:395,170:475,:)=im(90:395,170:475,:);
     imshow(im_blur,'InitialMagnification','fit');
     
     if center==1
        title('Centro Blanco')
     elseif center==2
         title('Centro Green')
     elseif center==3
         title('Centro Amarillo')
     elseif center==4
         title('Centro Azul')
     elseif center==5
         title('Centro Rojo')
     elseif center==6
         title('Centro Naranja')
     end
     
     hold on;
     drawnow
     
     sq1=im(90:190,170:270,:);
     sq2=im(90:190,270:370,:);
     sq3=im(90:190,370:470,:);
     sq4=im(190:290,170:270,:);
     sq5=im(190:290,270:370,:);
     sq6=im(190:290,370:470,:);
     sq7=im(290:390,170:270,:);
     sq8=im(290:390,270:370,:);
     sq9=im(290:390,370:470,:);
     
     if (center==1 && Search_Color(sq5,1)>pix) || (center==2 && Search_Color(sq5,5)>pix) || (center==3 && Search_Color(sq5,4)>pix) || (center==4 && Search_Color(sq5,6)>pix) || (center==5 && Search_Color(sq5,2)>pix) || (center==6 && Search_Color(sq5,3)>pix)
         if Search_Color(sq1,1)>pix||Search_Color(sq1,4)>pix||Search_Color(sq1,2)>pix||Search_Color(sq1,3)>pix||Search_Color(sq1,6)>pix||Search_Color(sq1,5)>pix
             if Search_Color(sq2,1)>pix||Search_Color(sq2,4)>pix||Search_Color(sq2,2)>pix||Search_Color(sq2,3)>pix||Search_Color(sq2,6)>pix||Search_Color(sq2,5)>pix
                  if Search_Color(sq3,1)>pix||Search_Color(sq3,4)>pix||Search_Color(sq3,2)>pix||Search_Color(sq3,3)>pix||Search_Color(sq3,6)>pix||Search_Color(sq3,5)>pix
                      if Search_Color(sq4,1)>pix||Search_Color(sq4,4)>pix||Search_Color(sq4,2)>pix||Search_Color(sq4,3)>pix||Search_Color(sq4,6)>pix||Search_Color(sq4,5)>pix
                          if Search_Color(sq6,1)>pix||Search_Color(sq6,4)>pix||Search_Color(sq6,2)>pix||Search_Color(sq6,3)>pix||Search_Color(sq6,6)>pix||Search_Color(sq6,5)>pix
                              if Search_Color(sq7,1)>pix||Search_Color(sq7,4)>pix||Search_Color(sq7,2)>pix||Search_Color(sq7,3)>pix||Search_Color(sq7,6)>pix||Search_Color(sq7,5)>pix 
                                  if Search_Color(sq8,1)>pix||Search_Color(sq8,4)>pix||Search_Color(sq8,2)>pix||Search_Color(sq8,3)>pix||Search_Color(sq8,6)>pix||Search_Color(sq8,5)>pix
                                      if Search_Color(sq9,1)>pix||Search_Color(sq9,4)>pix||Search_Color(sq9,2)>pix||Search_Color(sq9,3)>pix||Search_Color(sq9,6)>pix||Search_Color(sq9,5)>pix
                                          break
                                      end
                                  end
                              end
                          end
                      end
                 end
             end
         end
     end
  end

  squares(:,:,:,1)=sq1;squares(:,:,:,2)=sq2;squares(:,:,:,3)=sq3;
  squares(:,:,:,4)=sq4;squares(:,:,:,5)=sq5;squares(:,:,:,6)=sq6;
  squares(:,:,:,7)=sq7;squares(:,:,:,8)=sq8;squares(:,:,:,9)=sq9;

  [face_img,face]=Gen_Image(squares,pix);
  clf

end