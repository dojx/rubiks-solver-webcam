function [almost,moves]=superior(cube)
%%cruz amarilla amarillas
moves='NA';
a=0;
b=0;
c=0;
kl=0;
tj=0;
gd=0;
if cube(1,2,3)~='Y'&&cube(2,1,3)~='Y'&&cube(3,2,3)~='Y'&&cube(2,3,3)~='Y'  
         [cube,moves]=Face_90(cube,1,3,moves);  
         [cube,moves]=Face_90(cube,3,3,moves);
         [cube,moves]=Face_90(cube,5,3,moves);  
         [cube,moves]=Face_90(cube,3,1,moves);
         [cube,moves]=Face_90(cube,5,1,moves);  
         [cube,moves]=Face_90(cube,1,1,moves); 
         
         [cube,moves]=Face_90(cube,5,2,moves);  
         
         [cube,moves]=Face_90(cube,1,3,moves);  
         [cube,moves]=Face_90(cube,3,3,moves);
         [cube,moves]=Face_90(cube,5,3,moves);  
         [cube,moves]=Face_90(cube,3,1,moves);
         [cube,moves]=Face_90(cube,5,1,moves);  
         
         
         
         [cube,moves]=Face_90(cube,3,3,moves);
         [cube,moves]=Face_90(cube,5,3,moves);  
         [cube,moves]=Face_90(cube,3,1,moves);
         [cube,moves]=Face_90(cube,5,1,moves);  
         [cube,moves]=Face_90(cube,1,1,moves); 
        
    
       1
end
if cube(1,2,3)=='Y'&&cube(2,1,3)~='Y'&&cube(3,2,3)~='Y'&&cube(2,3,3)=='Y'
      
         [cube,moves]=Face_90(cube,1,3,moves);  
         [cube,moves]=Face_90(cube,3,3,moves);
         [cube,moves]=Face_90(cube,5,3,moves);  
         [cube,moves]=Face_90(cube,3,1,moves);
         [cube,moves]=Face_90(cube,5,1,moves);  
         
         
         
         [cube,moves]=Face_90(cube,3,3,moves);
         [cube,moves]=Face_90(cube,5,3,moves);  
         [cube,moves]=Face_90(cube,3,1,moves);
         [cube,moves]=Face_90(cube,5,1,moves);  
         [cube,moves]=Face_90(cube,1,1,moves); 
    
    
    
         2
end
if cube(1,2,3)~='Y'&&cube(2,1,3)~='Y'&&cube(3,2,3)=='Y'&&cube(2,3,3)=='Y'
    
         [cube,moves]=Face_90(cube,5,3,moves);  
         [cube,moves]=Face_90(cube,1,3,moves);  
         [cube,moves]=Face_90(cube,3,3,moves);
         [cube,moves]=Face_90(cube,5,3,moves);  
         [cube,moves]=Face_90(cube,3,1,moves);
         [cube,moves]=Face_90(cube,5,1,moves);  
         
         
         
         [cube,moves]=Face_90(cube,3,3,moves);
         [cube,moves]=Face_90(cube,5,3,moves);  
         [cube,moves]=Face_90(cube,3,1,moves);
         [cube,moves]=Face_90(cube,5,1,moves);  
         [cube,moves]=Face_90(cube,1,1,moves);    
    
         3
end
if cube(1,2,3)=='Y'&&cube(2,1,3)=='Y'&&cube(3,2,3)~='Y'&&cube(2,3,3)~='Y'
      [cube,moves]=Face_90(cube,5,1,moves);  
         [cube,moves]=Face_90(cube,1,3,moves);  
         [cube,moves]=Face_90(cube,3,3,moves);
         [cube,moves]=Face_90(cube,5,3,moves);  
         [cube,moves]=Face_90(cube,3,1,moves);
         [cube,moves]=Face_90(cube,5,1,moves);  
         
         
         
         [cube,moves]=Face_90(cube,3,3,moves);
         [cube,moves]=Face_90(cube,5,3,moves);  
         [cube,moves]=Face_90(cube,3,1,moves);
         [cube,moves]=Face_90(cube,5,1,moves);  
         [cube,moves]=Face_90(cube,1,1,moves);    
         4
end
if cube(1,2,3)~='Y'&&cube(2,1,3)=='Y'&&cube(3,2,3)=='Y'&&cube(2,3,3)~='Y'
      [cube,moves]=Face_90(cube,5,2,moves);  
         [cube,moves]=Face_90(cube,1,3,moves);  
         [cube,moves]=Face_90(cube,3,3,moves);
         [cube,moves]=Face_90(cube,5,3,moves);  
         [cube,moves]=Face_90(cube,3,1,moves);
         [cube,moves]=Face_90(cube,5,1,moves);  
         
         
         
         [cube,moves]=Face_90(cube,3,3,moves);
         [cube,moves]=Face_90(cube,5,3,moves);  
         [cube,moves]=Face_90(cube,3,1,moves);
         [cube,moves]=Face_90(cube,5,1,moves);  
         [cube,moves]=Face_90(cube,1,1,moves);    
         5
end

if cube(1,2,3)=='Y'&&cube(2,1,3)~='Y'&&cube(3,2,3)=='Y'&&cube(2,3,3)~='Y'
        [cube,moves]=Face_90(cube,5,3,moves);  
         [cube,moves]=Face_90(cube,1,3,moves);  
         [cube,moves]=Face_90(cube,3,3,moves);
         [cube,moves]=Face_90(cube,5,3,moves);  
         [cube,moves]=Face_90(cube,3,1,moves);
         [cube,moves]=Face_90(cube,5,1,moves);   
         [cube,moves]=Face_90(cube,1,1,moves);    
         6
end
if cube(1,2,3)~='Y'&&cube(2,1,3)=='Y'&&cube(3,2,3)~='Y'&&cube(2,3,3)=='Y'
         [cube,moves]=Face_90(cube,1,3,moves);  
         [cube,moves]=Face_90(cube,3,3,moves);
         [cube,moves]=Face_90(cube,5,3,moves);  
         [cube,moves]=Face_90(cube,3,1,moves);
         [cube,moves]=Face_90(cube,5,1,moves);   
         [cube,moves]=Face_90(cube,1,1,moves);    
         7
end

%%acomodarlas en su lugar
%  figure(2)
% Show_Cube(PlotCube(cube))
%   figure(3)
% Show_Cube(PlotCube(cube))

amague=cube;
for ma=1:4
if amague(1,2,1)==amague(2,2,1)&&amague(1,2,5)==amague(2,2,5)&&amague(1,2,2)==amague(2,2,2)&&amague(1,2,6)==amague(2,2,6)
    a=8;
end
amague=Face_90(amague,5,3,'NA');
end    

while(a<7)
    
    if cube(1,2,1)==cube(2,2,1)&&cube(1,2,5)==cube(2,2,5)
       [cube,moves]=rotacion(cube,1,moves);
       [cube,moves]=rotacion(cube,1,moves);
       
       [cube,moves]=Face_90(cube,4,1,moves);
       [cube,moves]=Face_90(cube,5,1,moves);  
       [cube,moves]=Face_90(cube,4,3,moves);
       [cube,moves]=Face_90(cube,5,1,moves);  
       [cube,moves]=Face_90(cube,4,1,moves);
       [cube,moves]=Face_90(cube,5,2,moves); 
       [cube,moves]=Face_90(cube,4,3,moves);
       a=7;
        
    5
    end
    if cube(1,2,1)==cube(2,2,1)&&cube(1,2,6)==cube(2,2,6)
       [cube,moves]=rotacion(cube,1,moves);
       
       [cube,moves]=Face_90(cube,4,1,moves);
       [cube,moves]=Face_90(cube,5,1,moves);  
       [cube,moves]=Face_90(cube,4,3,moves);
       [cube,moves]=Face_90(cube,5,1,moves);  
       [cube,moves]=Face_90(cube,4,1,moves);
       [cube,moves]=Face_90(cube,5,2,moves); 
       [cube,moves]=Face_90(cube,4,3,moves);
       a=7;
        
    6
    end
    if cube(1,2,2)==cube(2,2,2)&&cube(1,2,6)==cube(2,2,6)   
       [cube,moves]=Face_90(cube,4,1,moves);
       [cube,moves]=Face_90(cube,5,1,moves);  
       [cube,moves]=Face_90(cube,4,3,moves);
       [cube,moves]=Face_90(cube,5,1,moves);  
       [cube,moves]=Face_90(cube,4,1,moves);
       [cube,moves]=Face_90(cube,5,2,moves); 
       [cube,moves]=Face_90(cube,4,3,moves);
        a=7;
    6
    end
     if cube(1,2,2)==cube(2,2,2)&&cube(1,2,5)==cube(2,2,5)   
         [cube,moves]=rotacion(cube,1,moves);
         [cube,moves]=rotacion(cube,1,moves);
         [cube,moves]=rotacion(cube,1,moves);
       [cube,moves]=Face_90(cube,4,1,moves);
       [cube,moves]=Face_90(cube,5,1,moves);  
       [cube,moves]=Face_90(cube,4,3,moves);
       [cube,moves]=Face_90(cube,5,1,moves);  
       [cube,moves]=Face_90(cube,4,1,moves);
       [cube,moves]=Face_90(cube,5,2,moves); 
       [cube,moves]=Face_90(cube,4,3,moves);
       a=7;
        
    6
    end
    if cube(1,2,2)==cube(2,2,2)&&cube(1,2,1)==cube(2,2,1)   
         [cube,moves]=rotacion(cube,1,moves);
         [cube,moves]=rotacion(cube,1,moves);
         [cube,moves]=rotacion(cube,1,moves);
       [cube,moves]=Face_90(cube,4,1,moves);
       [cube,moves]=Face_90(cube,5,1,moves);  
       [cube,moves]=Face_90(cube,4,3,moves);
       [cube,moves]=Face_90(cube,5,1,moves);  
       [cube,moves]=Face_90(cube,4,1,moves);
       [cube,moves]=Face_90(cube,5,2,moves); 
       [cube,moves]=Face_90(cube,4,3,moves);       
    
    end
    if cube(1,2,5)==cube(2,2,5)&&cube(1,2,6)==cube(2,2,6)   
         [cube,moves]=rotacion(cube,1,moves);
         [cube,moves]=rotacion(cube,1,moves);
         [cube,moves]=rotacion(cube,1,moves);
       [cube,moves]=Face_90(cube,4,1,moves);
       [cube,moves]=Face_90(cube,5,1,moves);  
       [cube,moves]=Face_90(cube,4,3,moves);
       [cube,moves]=Face_90(cube,5,1,moves);  
       [cube,moves]=Face_90(cube,4,1,moves);
       [cube,moves]=Face_90(cube,5,2,moves); 
       [cube,moves]=Face_90(cube,4,3,moves);       
    
    end
    [cube,moves]=Face_90(cube,5,3,moves);
    a=a+1;
    
end

 while(b<4)
     [cube,moves]=Face_90(cube,5,3,moves);
     if cube(1,2,1)==cube(2,2,1)
         b=4;
     end
     b=b+1;
 end
%  figure(3)
% Show_Cube(PlotCube(cube))
%%Esquinas
if (cube(1,1,1)==cube(2,2,1)||cube(1,3,5)==cube(2,2,1)||cube(3,1,3)==cube(2,2,1))&&(cube(1,1,1)==cube(2,2,5)||cube(1,3,5)==cube(2,2,5)||cube(3,1,3)==cube(2,2,5))&&(cube(1,3,1)==cube(2,2,1)||cube(1,1,6)==cube(2,2,1)||cube(3,3,3)==cube(2,2,1))&&(cube(1,3,1)==cube(2,2,6)||cube(1,1,6)==cube(2,2,6)||cube(3,3,3)==cube(2,2,6))&&(cube(1,3,6)==cube(2,2,2)||cube(1,1,2)==cube(2,2,2)||cube(1,3,3)==cube(2,2,2))&&(cube(1,3,6)==cube(2,2,6)||cube(1,1,2)==cube(2,2,6)||cube(1,3,3)==cube(2,2,6))&&(cube(1,1,3)==cube(2,2,5)||cube(1,1,5)==cube(2,2,5)||cube(1,3,2)==cube(2,2,5))&&(cube(1,1,3)==cube(2,2,2)||cube(1,1,5)==cube(2,2,2)||cube(1,3,2)==cube(2,2,2))
gd=10;
end
if gd==0
if (cube(1,1,1)==cube(2,2,1)||cube(1,3,5)==cube(2,2,1)||cube(3,1,3)==cube(2,2,1))&&(cube(1,1,1)==cube(2,2,5)||cube(1,3,5)==cube(2,2,5)||cube(3,1,3)==cube(2,2,5))            
 [cube,moves]=rotacion(cube,1,moves);    
    kl=1;
end
if (cube(1,3,1)==cube(2,2,1)||cube(1,1,6)==cube(2,2,1)||cube(3,3,3)==cube(2,2,1))&&(cube(1,3,1)==cube(2,2,6)||cube(1,1,6)==cube(2,2,6)||cube(3,3,3)==cube(2,2,6)) 
kl=1;
end
if (cube(1,3,6)==cube(2,2,2)||cube(1,1,2)==cube(2,2,2)||cube(1,3,3)==cube(2,2,2))&&(cube(1,3,6)==cube(2,2,6)||cube(1,1,2)==cube(2,2,6)||cube(1,3,3)==cube(2,2,6)) 
  [cube,moves]=rotacion(cube,1,moves);   
  [cube,moves]=rotacion(cube,1,moves);   
  [cube,moves]=rotacion(cube,1,moves);   
    kl=1;
end
if (cube(1,1,3)==cube(2,2,5)||cube(1,1,5)==cube(2,2,5)||cube(1,3,2)==cube(2,2,5))&&(cube(1,1,3)==cube(2,2,2)||cube(1,1,5)==cube(2,2,2)||cube(1,3,2)==cube(2,2,2)) 
    [cube,moves]=rotacion(cube,1,moves);   
  [cube,moves]=rotacion(cube,1,moves);   
kl=1;
end
% figure(3)
%  Show_Cube(PlotCube(cube))

if kl==1
while(c<4)   
    c=0;
         [cube,moves]=Face_90(cube,3,3,moves);
         [cube,moves]=Face_90(cube,5,1,moves);
         [cube,moves]=Face_90(cube,4,1,moves);
         [cube,moves]=Face_90(cube,5,3,moves);
         [cube,moves]=Face_90(cube,3,1,moves);
         [cube,moves]=Face_90(cube,5,1,moves);
         [cube,moves]=Face_90(cube,4,3,moves);
          [cube,moves]=Face_90(cube,5,3,moves);
         
if (cube(1,1,1)==cube(2,2,1)||cube(1,3,5)==cube(2,2,1)||cube(3,1,3)==cube(2,2,1))&&(cube(1,1,1)==cube(2,2,5)||cube(1,3,5)==cube(2,2,5)||cube(3,1,3)==cube(2,2,5))                
    c=c+1;
  
end
if (cube(1,3,1)==cube(2,2,1)||cube(1,1,6)==cube(2,2,1)||cube(3,3,3)==cube(2,2,1))&&(cube(1,3,1)==cube(2,2,6)||cube(1,1,6)==cube(2,2,6)||cube(3,3,3)==cube(2,2,6)) 
c=c+1;

end
if (cube(1,3,6)==cube(2,2,2)||cube(1,1,2)==cube(2,2,2)||cube(1,3,3)==cube(2,2,2))&&(cube(1,3,6)==cube(2,2,6)||cube(1,1,2)==cube(2,2,6)||cube(1,3,3)==cube(2,2,6)) 
 
   c=c+1;
end
if (cube(1,1,3)==cube(2,2,5)||cube(1,1,5)==cube(2,2,5)||cube(1,3,2)==cube(2,2,5))&&(cube(1,1,3)==cube(2,2,2)||cube(1,1,5)==cube(2,2,2)||cube(1,3,2)==cube(2,2,2))   
c=c+1;

end
       
 end
end
if kl==0
[cube,moves]=Face_90(cube,3,3,moves);
         [cube,moves]=Face_90(cube,5,1,moves);
         [cube,moves]=Face_90(cube,4,1,moves);
         [cube,moves]=Face_90(cube,5,3,moves);
         [cube,moves]=Face_90(cube,3,1,moves);
         [cube,moves]=Face_90(cube,5,1,moves);
         [cube,moves]=Face_90(cube,4,3,moves);
          [cube,moves]=Face_90(cube,5,3,moves);
          
if (cube(1,1,1)==cube(2,2,1)||cube(1,3,5)==cube(2,2,1)||cube(3,1,3)==cube(2,2,1))&&(cube(1,1,1)==cube(2,2,5)||cube(1,3,5)==cube(2,2,5)||cube(3,1,3)==cube(2,2,5))            
 [cube,moves]=rotacion(cube,1,moves);    
  
end

if (cube(1,3,6)==cube(2,2,2)||cube(1,1,2)==cube(2,2,2)||cube(1,3,3)==cube(2,2,2))&&(cube(1,3,6)==cube(2,2,6)||cube(1,1,2)==cube(2,2,6)||cube(1,3,3)==cube(2,2,6)) 
  [cube,moves]=rotacion(cube,1,moves);   
  [cube,moves]=rotacion(cube,1,moves);   
  [cube,moves]=rotacion(cube,1,moves);   
 
end
if (cube(1,1,3)==cube(2,2,5)||cube(1,1,5)==cube(2,2,5)||cube(1,3,2)==cube(2,2,5))&&(cube(1,1,3)==cube(2,2,2)||cube(1,1,5)==cube(2,2,2)||cube(1,3,2)==cube(2,2,2)) 
    [cube,moves]=rotacion(cube,1,moves);   
  [cube,moves]=rotacion(cube,1,moves);   

end
while(c<4)   
    c=0;
         [cube,moves]=Face_90(cube,3,3,moves);
         [cube,moves]=Face_90(cube,5,1,moves);
         [cube,moves]=Face_90(cube,4,1,moves);
         [cube,moves]=Face_90(cube,5,3,moves);
         [cube,moves]=Face_90(cube,3,1,moves);
         [cube,moves]=Face_90(cube,5,1,moves);
         [cube,moves]=Face_90(cube,4,3,moves);
          [cube,moves]=Face_90(cube,5,3,moves);
         
if (cube(1,1,1)==cube(2,2,1)||cube(1,3,5)==cube(2,2,1)||cube(3,1,3)==cube(2,2,1))&&(cube(1,1,1)==cube(2,2,5)||cube(1,3,5)==cube(2,2,5)||cube(3,1,3)==cube(2,2,5))                
    c=c+1;
  
end
if (cube(1,3,1)==cube(2,2,1)||cube(1,1,6)==cube(2,2,1)||cube(3,3,3)==cube(2,2,1))&&(cube(1,3,1)==cube(2,2,6)||cube(1,1,6)==cube(2,2,6)||cube(3,3,3)==cube(2,2,6)) 
c=c+1;

end
if (cube(1,3,6)==cube(2,2,2)||cube(1,1,2)==cube(2,2,2)||cube(1,3,3)==cube(2,2,2))&&(cube(1,3,6)==cube(2,2,6)||cube(1,1,2)==cube(2,2,6)||cube(1,3,3)==cube(2,2,6)) 
 
   c=c+1;
end
if (cube(1,1,3)==cube(2,2,5)||cube(1,1,5)==cube(2,2,5)||cube(1,3,2)==cube(2,2,5))&&(cube(1,1,3)==cube(2,2,2)||cube(1,1,5)==cube(2,2,2)||cube(1,3,2)==cube(2,2,2))   
c=c+1;
end
       
 end

end
end

%  figure(3)
% Show_Cube(PlotCube(cube))
control=['B','O','G','R'];
control2=['O','G','R','B'];
 if cube(2,2,2)=='B'
  [cube,moves]=rotacion(cube,1,moves); 
  [cube,moves]=rotacion(cube,1,moves);   
 end
 if cube(2,2,5)=='B'
  [cube,moves]=rotacion(cube,1,moves);    
 end
 if cube(2,2,6)=='B'
  [cube,moves]=rotacion(cube,1,moves); 
  [cube,moves]=rotacion(cube,1,moves);
  [cube,moves]=rotacion(cube,1,moves);
 end
%  figure(5)
%  Show_Cube(PlotCube(cube));
for z=1:4
    if  cube(1,1,1)~=control(z)&&cube(1,3,5)~=control2(z)&&cube(3,1,3)~='Y'
      tj=0;
    while(tj<1)
       
        [cube,moves]=Face_90(cube,3,1,moves);
        [cube,moves]=Face_90(cube,6,1,moves);
        [cube,moves]=Face_90(cube,3,3,moves);
        [cube,moves]=Face_90(cube,6,3,moves);  
         if  cube(1,1,1)==control(z)&&cube(1,3,5)==control2(z)&&cube(3,1,3)=='Y'
             tj=2;
             1
         end
    end
   
    end  
    [cube,moves]=Face_90(cube,5,3,moves);  
end



% figure(4)
% Show_Cube(PlotCube(cube))




almost=cube;
end