function [mit,moves]=aristas(cube)
aristas_end=0;
moves='NA';
[cube,moves]=rotacion(cube,2,moves);
[cube,moves]=rotacion(cube,1,moves);
    esquina_1=['B','O','G','R'];
    esquina_2=['R','B','O','G'];
    rec=1; 
    lol=0;
    gir=0;
    for f=1:4
    if cube(2,1,1)==cube(2,2,1)&&cube(2,3,5)==cube(2,2,5)&&cube(3,1,1)==cube(2,2,1)&&cube(3,3,5)==cube(2,2,5)&&cube(1,1,4)=='W'
        aristas_end=aristas_end+1;
    end
    [cube,moves]=rotacion(cube,1,moves);
    end
    poop=0;
    
while (aristas_end<4)
           sec=0;
     if cube(1,1,1)==esquina_2(rec)&&cube(1,3,5)=='W'&&cube(3,1,3)==esquina_1(rec)
         [cube,moves]=Face_90(cube,5,3,moves);
     end
      if cube(1,1,1)=='W'&&cube(1,3,5)==esquina_1(rec)&&cube(3,1,3)==esquina_2(rec)
         [cube,moves]=Face_90(cube,5,3,moves);
      end
     if cube(1,1,1)==esquina_1(rec)&&cube(1,3,5)==esquina_2(rec)&&cube(3,1,3)=='W'
         [cube,moves]=Face_90(cube,5,3,moves);
     end
     
     if cube(1,1,3)==esquina_2(rec)&&cube(1,1,5)=='W'&&cube(1,3,2)==esquina_1(rec)
         [cube,moves]=Face_90(cube,5,2,moves);
     end
     if cube(1,1,3)=='W'&&cube(1,1,5)==esquina_1(rec)&&cube(1,3,2)==esquina_2(rec)
         [cube,moves]=Face_90(cube,5,2,moves);
     end
     if cube(1,1,3)==esquina_1(rec)&&cube(1,1,5)==esquina_2(rec)&&cube(1,3,2)=='W'
         [cube,moves]=Face_90(cube,5,2,moves);
     end
    
     if cube(1,3,6)=='W'&&cube(1,3,3)==esquina_1(rec)&&cube(1,1,2)==esquina_2(rec)
         [cube,moves]=Face_90(cube,5,1,moves);
     end
    if cube(1,3,6)==esquina_2(rec)&&cube(1,3,3)=='W'&&cube(1,1,2)==esquina_1(rec)
         [cube,moves]=Face_90(cube,5,1,moves);
    end
    if cube(1,3,6)==esquina_1(rec)&&cube(1,3,3)==esquina_2(rec)&&cube(1,1,2)=='W'
         [cube,moves]=Face_90(cube,5,1,moves);
    end
     
     %%Esquina superior White front
    if cube(1,1,6)==esquina_2(rec)&&cube(1,3,1)=='W'&&cube(3,3,3)==esquina_1(rec)
        %%Piezas Juntas
    if  cube(1,2,6)==esquina_2(rec)&&cube(2,3,3)==esquina_1(rec)&&sec==0
    [cube,moves]=Face_90(cube,5,1,moves);
    [cube,moves]=Face_90(cube,4,1,moves);
    [cube,moves]=Face_90(cube,5,3,moves);
    [cube,moves]=Face_90(cube,4,3,moves);  
    aristas_end=aristas_end+1;
     sec=1;
     1
    end
    if  cube(2,3,3)==esquina_2(rec)&&cube(1,2,6)==esquina_1(rec)&&sec==0
         [cube,moves]=Face_90(cube,5,3,moves);
         [cube,moves]=Face_90(cube,4,1,moves);
         [cube,moves]=Face_90(cube,5,2,moves);
         [cube,moves]=Face_90(cube,4,3,moves);
         [cube,moves]=Face_90(cube,5,1,moves);
         [cube,moves]=Face_90(cube,1,3,moves);
         [cube,moves]=Face_90(cube,5,3,moves);
         [cube,moves]=Face_90(cube,1,1,moves);
         aristas_end=aristas_end+1;
         sec=1;
      2  
    end
    if  cube(1,2,1)==esquina_2(rec)&&cube(3,2,3)==esquina_1(rec)&&sec==0    
         [cube,moves]=Face_90(cube,1,3,moves);
         [cube,moves]=Face_90(cube,5,1,moves);
         [cube,moves]=Face_90(cube,1,1,moves);
         [cube,moves]=Face_90(cube,5,2,moves);
         [cube,moves]=Face_90(cube,4,1,moves);
         [cube,moves]=Face_90(cube,5,1,moves);
         [cube,moves]=Face_90(cube,4,3,moves);
         aristas_end=aristas_end+1;
         sec=1;
       3  
    end
    if  cube(1,2,1)==esquina_1(rec)&&cube(3,2,3)==esquina_2(rec)&&sec==0    
        [cube,moves]=rotacion(cube,1,moves);
        [cube,moves]=Face_90(cube,5,1,moves);
        [cube,moves]=Face_90(cube,4,3,moves);
        [cube,moves]=Face_90(cube,5,1,moves);
        [cube,moves]=Face_90(cube,4,1,moves);
        [cube,moves]=Face_90(cube,5,3,moves);
        [cube,moves]=Face_90(cube,4,3,moves);
        [cube,moves]=Face_90(cube,5,3,moves);
        [cube,moves]=Face_90(cube,4,1,moves);
        [cube,moves]=rotacion(cube,1,moves);
        [cube,moves]=rotacion(cube,1,moves);
        [cube,moves]=rotacion(cube,1,moves);
        aristas_end=aristas_end+1;
        sec=1;
        4
    end
    %%Esquinas separadas
     if  cube(1,2,5)==esquina_1(rec)&&cube(2,1,3)==esquina_2(rec)&&sec==0   
         [cube,moves]=Face_90(cube,1,3,moves);
         [cube,moves]=Face_90(cube,5,3,moves);
        [cube,moves]=Face_90(cube,1,1,moves);
        aristas_end=aristas_end+1;
        sec=1;
        5
     end  
     if  cube(1,2,5)==esquina_2(rec)&&cube(2,1,3)==esquina_1(rec)&&sec==0   
         
         [cube,moves]=Face_90(cube,5,3,moves);
         [cube,moves]=Face_90(cube,4,1,moves);
        [cube,moves]=Face_90(cube,5,2,moves);
        [cube,moves]=Face_90(cube,4,3,moves);
        [cube,moves]=Face_90(cube,5,2,moves);
        [cube,moves]=Face_90(cube,4,1,moves);
        [cube,moves]=Face_90(cube,5,3,moves);
        [cube,moves]=Face_90(cube,4,3,moves);         
        aristas_end=aristas_end+1;
        sec=1;
        6
     end  
     if  cube(1,2,2)==esquina_1(rec)&&cube(1,2,3)==esquina_2(rec)&&sec==0   
         [cube,moves]=Face_90(cube,5,3,moves);
         [cube,moves]=Face_90(cube,4,1,moves);
         [cube,moves]=Face_90(cube,5,3,moves);
         [cube,moves]=Face_90(cube,4,3,moves);
         [cube,moves]=Face_90(cube,5,1,moves);
         [cube,moves]=Face_90(cube,1,3,moves);
         [cube,moves]=Face_90(cube,5,3,moves);
         [cube,moves]=Face_90(cube,1,1,moves);
        aristas_end=aristas_end+1;
        sec=1;
        7
     end  
     if  cube(1,2,2)==esquina_2(rec)&&cube(1,2,3)==esquina_1(rec)&&sec==0   
         [cube,moves]=Face_90(cube,5,3,moves);
         [cube,moves]=Face_90(cube,4,1,moves);
         [cube,moves]=Face_90(cube,5,1,moves);
         [cube,moves]=Face_90(cube,4,3,moves);
         [cube,moves]=Face_90(cube,5,2,moves);
         [cube,moves]=Face_90(cube,4,1,moves);
         [cube,moves]=Face_90(cube,5,3,moves);
         [cube,moves]=Face_90(cube,4,3,moves);
        aristas_end=aristas_end+1;
        sec=1;
        8
     end  
     %%Arista col y mal col 
     if  cube(2,3,1)==esquina_1(rec)&&cube(2,1,6)==esquina_2(rec)&&sec==0   
         [cube,moves]=Face_90(cube,5,3,moves);
         [cube,moves]=Face_90(cube,4,1,moves);
         [cube,moves]=Face_90(cube,5,3,moves);
         [cube,moves]=Face_90(cube,4,3,moves);
         [cube,moves]=Face_90(cube,5,2,moves);
         [cube,moves]=Face_90(cube,4,1,moves);
         [cube,moves]=Face_90(cube,5,3,moves);
         [cube,moves]=Face_90(cube,4,3,moves);
        aristas_end=aristas_end+1;
        sec=1;
       9
     end  
     if  cube(2,3,1)==esquina_2(rec)&&cube(2,1,6)==esquina_1(rec)&&sec==0   
         [cube,moves]=Face_90(cube,5,3,moves);
         [cube,moves]=Face_90(cube,4,1,moves);
         [cube,moves]=Face_90(cube,5,1,moves);
         [cube,moves]=Face_90(cube,4,3,moves);
         [cube,moves]=Face_90(cube,5,1,moves);
         [cube,moves]=Face_90(cube,1,3,moves);
         [cube,moves]=Face_90(cube,5,3,moves);
         [cube,moves]=Face_90(cube,1,1,moves);
        aristas_end=aristas_end+1;
        sec=1;
        10
     end  
    end
    %%esquina White right
     if cube(1,1,6)=='W'&&cube(1,3,1)==esquina_1(rec)&&cube(3,3,3)==esquina_2(rec)
      %%juntas
      
     if  cube(3,2,3)==esquina_2(rec)&&cube(1,2,1)==esquina_1(rec)&&sec==0 
         
         [cube,moves]=Face_90(cube,5,3,moves);
         [cube,moves]=Face_90(cube,1,3,moves);
         [cube,moves]=Face_90(cube,5,1,moves);
         [cube,moves]=Face_90(cube,1,1,moves);        
        aristas_end=aristas_end+1;
        sec=1;
        11
     end  
     if  cube(3,2,3)==esquina_1(rec)&&cube(1,2,1)==esquina_2(rec)&&sec==0
         [cube,moves]=rotacion(cube,1,moves);
         [cube,moves]=Face_90(cube,5,1,moves);  
         [cube,moves]=Face_90(cube,4,3,moves);  
         [cube,moves]=Face_90(cube,5,2,moves);
         [cube,moves]=Face_90(cube,4,1,moves);
         [cube,moves]=Face_90(cube,5,3,moves);
         [cube,moves]=rotacion(cube,1,moves);
         [cube,moves]=rotacion(cube,1,moves);
         [cube,moves]=rotacion(cube,1,moves);
         [cube,moves]=Face_90(cube,4,1,moves);
         [cube,moves]=Face_90(cube,5,1,moves);
         [cube,moves]=Face_90(cube,4,3,moves);
        aristas_end=aristas_end+1;
        sec=1;
        12
     end
     if  cube(1,2,6)==esquina_1(rec)&&cube(2,3,3)==esquina_2(rec)&&sec==0   
         [cube,moves]=Face_90(cube,4,1,moves);
         [cube,moves]=Face_90(cube,5,3,moves);
         [cube,moves]=Face_90(cube,4,3,moves);
         [cube,moves]=Face_90(cube,5,2,moves);
         [cube,moves]=Face_90(cube,1,3,moves);
         [cube,moves]=Face_90(cube,5,3,moves);
         [cube,moves]=Face_90(cube,1,1,moves);
        aristas_end=aristas_end+1;
        sec=1;
       13
     end  
     if  cube(1,2,6)==esquina_2(rec)&&cube(2,3,3)==esquina_1(rec)&&sec==0   
         [cube,moves]=Face_90(cube,5,3,moves);
         [cube,moves]=Face_90(cube,4,1,moves);
         [cube,moves]=Face_90(cube,5,3,moves);
         [cube,moves]=Face_90(cube,4,3,moves);
         [cube,moves]=Face_90(cube,5,1,moves);
         [cube,moves]=Face_90(cube,4,1,moves);
         [cube,moves]=Face_90(cube,5,1,moves);
         [cube,moves]=Face_90(cube,4,3,moves);
        aristas_end=aristas_end+1;
        sec=1;
       14
     end  
     %%Separadas
     if  cube(1,2,3)==esquina_1(rec)&&cube(1,2,2)==esquina_2(rec)&&sec==0   
         [cube,moves]=Face_90(cube,4,1,moves);
         [cube,moves]=Face_90(cube,5,1,moves);
         [cube,moves]=Face_90(cube,4,3,moves);
        aristas_end=aristas_end+1;
        sec=1;
        15
     end
     if  cube(1,2,3)==esquina_2(rec)&&cube(1,2,2)==esquina_1(rec)&&sec==0
         [cube,moves]=rotacion(cube,1,moves);
         [cube,moves]=Face_90(cube,5,1,moves);
         [cube,moves]=Face_90(cube,4,3,moves);
         [cube,moves]=Face_90(cube,5,2,moves);
         [cube,moves]=Face_90(cube,4,1,moves);
         [cube,moves]=Face_90(cube,5,2,moves);
         [cube,moves]=Face_90(cube,4,3,moves);
         [cube,moves]=Face_90(cube,5,1,moves);
         [cube,moves]=Face_90(cube,4,1,moves);
         [cube,moves]=rotacion(cube,1,moves);
         [cube,moves]=rotacion(cube,1,moves);
         [cube,moves]=rotacion(cube,1,moves);
        aristas_end=aristas_end+1;
        sec=1;
       16
     end
     if  cube(2,1,3)==esquina_1(rec)&&cube(1,2,5)==esquina_2(rec)&&sec==0   
         [cube,moves]=Face_90(cube,5,1,moves);
         [cube,moves]=Face_90(cube,1,3,moves);
         [cube,moves]=Face_90(cube,5,1,moves);
         [cube,moves]=Face_90(cube,1,1,moves);
         [cube,moves]=Face_90(cube,5,3,moves);
         [cube,moves]=Face_90(cube,4,1,moves);
         [cube,moves]=Face_90(cube,5,1,moves);
         [cube,moves]=Face_90(cube,4,3,moves);
        aristas_end=aristas_end+1;
        sec=1;
       17
     end
     if  cube(2,1,3)==esquina_2(rec)&&cube(1,2,5)==esquina_1(rec)&&sec==0
         [cube,moves]=rotacion(cube,1,moves);
         [cube,moves]=Face_90(cube,5,1,moves);
         [cube,moves]=Face_90(cube,4,3,moves);
         [cube,moves]=Face_90(cube,5,3,moves);
         [cube,moves]=Face_90(cube,4,1,moves);
         [cube,moves]=Face_90(cube,5,2,moves);
         [cube,moves]=Face_90(cube,4,3,moves);
         [cube,moves]=Face_90(cube,5,1,moves);
         [cube,moves]=Face_90(cube,4,1,moves);
         [cube,moves]=rotacion(cube,1,moves);
         [cube,moves]=rotacion(cube,1,moves);
         [cube,moves]=rotacion(cube,1,moves);
        aristas_end=aristas_end+1;
        sec=1;
       18
     end
     %%Aristas vien y mal colocadas
     if cube(2,3,1)==esquina_1(rec)&&cube(2,1,6)==esquina_2(rec)&&sec==0
         [cube,moves]=Face_90(cube,5,1,moves);
         [cube,moves]=Face_90(cube,4,1,moves);
         [cube,moves]=Face_90(cube,5,1,moves);
         [cube,moves]=Face_90(cube,4,3,moves);
         [cube,moves]=Face_90(cube,5,2,moves);
         [cube,moves]=Face_90(cube,4,1,moves);
         [cube,moves]=Face_90(cube,5,1,moves);
         [cube,moves]=Face_90(cube,4,3,moves);
         aristas_end=aristas_end+1;   
         sec=1;
        19
     end
     if cube(2,3,1)==esquina_2(rec)&&cube(2,1,6)==esquina_1(rec)&&sec==0
         [cube,moves]=Face_90(cube,5,1,moves);
         [cube,moves]=Face_90(cube,1,3,moves);
         [cube,moves]=Face_90(cube,5,3,moves);
         [cube,moves]=Face_90(cube,1,1,moves);
         [cube,moves]=Face_90(cube,5,3,moves);
         [cube,moves]=Face_90(cube,4,1,moves);
         [cube,moves]=Face_90(cube,5,1,moves);
         [cube,moves]=Face_90(cube,4,3,moves);
         aristas_end=aristas_end+1; 
         sec=1;
        20
     end
     end
     
      %%esquina White up
     if cube(1,1,6)==esquina_1(rec)&&cube(1,3,1)==esquina_2(rec)&&cube(3,3,3)=='W'
      %%juntas
      
     if  cube(3,2,3)==esquina_2(rec)&&cube(1,2,1)==esquina_1(rec)&&sec==0  
         [cube,moves]=rotacion(cube,1,moves);
         [cube,moves]=Face_90(cube,4,3,moves);  
         [cube,moves]=Face_90(cube,5,2,moves);
         [cube,moves]=Face_90(cube,4,1,moves);  
         [cube,moves]=Face_90(cube,5,1,moves);
         [cube,moves]=Face_90(cube,4,3,moves);  
         [cube,moves]=Face_90(cube,5,3,moves);
         [cube,moves]=Face_90(cube,4,1,moves);
         [cube,moves]=rotacion(cube,1,moves);
         [cube,moves]=rotacion(cube,1,moves);
         [cube,moves]=rotacion(cube,1,moves);
        aristas_end=aristas_end+1;
        sec=1;
        
        21
        
   
        
     end  
     if  cube(3,2,3)==esquina_1(rec)&&cube(1,2,1)==esquina_2(rec)&&sec==0
         [cube,moves]=Face_90(cube,5,2,moves);  
         [cube,moves]=Face_90(cube,4,2,moves);  
         [cube,moves]=Face_90(cube,5,2,moves);
         [cube,moves]=Face_90(cube,4,3,moves);
         [cube,moves]=Face_90(cube,5,3,moves);
         [cube,moves]=Face_90(cube,4,1,moves);
         [cube,moves]=Face_90(cube,5,3,moves);
         [cube,moves]=Face_90(cube,4,2,moves);
        aristas_end=aristas_end+1;
        sec=1;
        22
     end
     if  cube(1,2,6)==esquina_1(rec)&&cube(2,3,3)==esquina_2(rec)&&sec==0   
     
         [cube,moves]=rotacion(cube,1,moves);
         [cube,moves]=Face_90(cube,5,2,moves);
         [cube,moves]=Face_90(cube,4,2,moves);
         [cube,moves]=Face_90(cube,5,2,moves);
         [cube,moves]=Face_90(cube,4,1,moves);
         [cube,moves]=Face_90(cube,5,1,moves);
         [cube,moves]=Face_90(cube,4,3,moves);
         [cube,moves]=Face_90(cube,5,1,moves);
         [cube,moves]=Face_90(cube,4,2,moves);
         [cube,moves]=rotacion(cube,1,moves);
         [cube,moves]=rotacion(cube,1,moves);
         [cube,moves]=rotacion(cube,1,moves);
        aristas_end=aristas_end+1;
        sec=1;
        23
        
     end  
     if  cube(1,2,6)==esquina_2(rec)&&cube(2,3,3)==esquina_1(rec)&&sec==0 
         [cube,moves]=Face_90(cube,4,1,moves);
         [cube,moves]=Face_90(cube,5,2,moves);
         [cube,moves]=Face_90(cube,4,3,moves);
         [cube,moves]=Face_90(cube,5,3,moves);
         [cube,moves]=Face_90(cube,4,1,moves);
         [cube,moves]=Face_90(cube,5,1,moves);
         [cube,moves]=Face_90(cube,4,3,moves);
        aristas_end=aristas_end+1;
        sec=1;
        24
     end  
     %%Separadas
     if  cube(1,2,3)==esquina_1(rec)&&cube(1,2,2)==esquina_2(rec)&&sec==0   
         [cube,moves]=Face_90(cube,5,1,moves);
         [cube,moves]=Face_90(cube,4,1,moves);
         [cube,moves]=Face_90(cube,5,2,moves);
         [cube,moves]=Face_90(cube,4,3,moves);
         [cube,moves]=Face_90(cube,5,1,moves);
         [cube,moves]=Face_90(cube,4,1,moves);
         [cube,moves]=Face_90(cube,5,3,moves);
         [cube,moves]=Face_90(cube,4,3,moves);
        aristas_end=aristas_end+1;
        sec=1;
        25
     end
     if  cube(1,2,3)==esquina_2(rec)&&cube(1,2,2)==esquina_1(rec)&&sec==0
         
         [cube,moves]=rotacion(cube,1,moves);
         [cube,moves]=Face_90(cube,5,2,moves);
         [cube,moves]=Face_90(cube,4,3,moves);
         [cube,moves]=Face_90(cube,5,3,moves);
         [cube,moves]=Face_90(cube,4,1,moves);
         [cube,moves]=Face_90(cube,5,3,moves);
         [cube,moves]=Face_90(cube,4,3,moves);
         [cube,moves]=Face_90(cube,5,1,moves);
         [cube,moves]=Face_90(cube,4,1,moves);
         [cube,moves]=rotacion(cube,1,moves);
         [cube,moves]=rotacion(cube,1,moves);
         [cube,moves]=rotacion(cube,1,moves);
        aristas_end=aristas_end+1;
        sec=1;
        26
     end
     if  cube(2,1,3)==esquina_1(rec)&&cube(1,2,5)==esquina_2(rec)&&sec==0   
         [cube,moves]=Face_90(cube,5,2,moves);
         [cube,moves]=Face_90(cube,4,1,moves);
         [cube,moves]=Face_90(cube,5,1,moves);
         [cube,moves]=Face_90(cube,4,3,moves);
         [cube,moves]=Face_90(cube,5,1,moves);
         [cube,moves]=Face_90(cube,4,1,moves);
         [cube,moves]=Face_90(cube,5,3,moves);
         [cube,moves]=Face_90(cube,4,3,moves);
        aristas_end=aristas_end+1;
        sec=1;
        30
        
     end
     if  cube(2,1,3)==esquina_2(rec)&&cube(1,2,5)==esquina_1(rec)&&sec==0
         [cube,moves]=rotacion(cube,1,moves);
         [cube,moves]=Face_90(cube,5,3,moves);
         [cube,moves]=Face_90(cube,4,3,moves);
         [cube,moves]=Face_90(cube,5,2,moves);
         [cube,moves]=Face_90(cube,4,1,moves);
         [cube,moves]=Face_90(cube,5,3,moves);
         [cube,moves]=Face_90(cube,4,3,moves);
         [cube,moves]=Face_90(cube,5,1,moves);
         [cube,moves]=Face_90(cube,4,1,moves);
         [cube,moves]=rotacion(cube,1,moves);
         [cube,moves]=rotacion(cube,1,moves);
         [cube,moves]=rotacion(cube,1,moves);
        aristas_end=aristas_end+1;
        sec=1;
        27
     end
     %%Aristas vien y mal colocadas
     if cube(2,3,1)==esquina_1(rec)&&cube(2,1,6)==esquina_2(rec)&&sec==0
          
         [cube,moves]=Face_90(cube,4,2,moves);
         [cube,moves]=Face_90(cube,5,1,moves);
         [cube,moves]=Face_90(cube,4,2,moves);
         [cube,moves]=Face_90(cube,5,1,moves);
         [cube,moves]=Face_90(cube,4,2,moves);
         [cube,moves]=Face_90(cube,5,2,moves);
         [cube,moves]=Face_90(cube,4,2,moves);
         aristas_end=aristas_end+1;   
         sec=1;
        
     28
     end
     if cube(2,3,1)==esquina_2(rec)&&cube(2,1,6)==esquina_1(rec)&&sec==0
         [cube,moves]=Face_90(cube,4,1,moves);
         [cube,moves]=Face_90(cube,5,3,moves);
         [cube,moves]=Face_90(cube,4,3,moves);
         [cube,moves]=Face_90(cube,1,3,moves);
         [cube,moves]=Face_90(cube,5,2,moves);
         [cube,moves]=Face_90(cube,1,1,moves);
         aristas_end=aristas_end+1; 
         sec=1;
         29
     end
     end
     

     
     
     
     
     
    

 if ((cube(2,3,1)~=esquina_1(rec)||cube(3,3,1)~=esquina_1(rec))||(cube(3,1,6)~=esquina_2(rec)&&cube(2,1,6)~=esquina_2(rec)&&cube(1,3,4)~='W'))&&gir>3&&lol<5
if sec==0
    [cube,moves]=Face_90(cube,4,1,moves);
    [cube,moves]=Face_90(cube,5,2,moves);
    [cube,moves]=Face_90(cube,4,3,moves);
     lol=lol+1;
     99
end
 end   
 
 if cube(2,3,1)~=esquina_1(rec)||cube(2,1,6)~=esquina_2(rec)&&cube(3,1,6)==esquina_2(rec)&&cube(3,3,1)==esquina_1(rec)&&cube(1,3,4)=='W'&&gir>3&&lol<5
if sec==0
    [cube,moves]=Face_90(cube,4,1,moves);
    [cube,moves]=Face_90(cube,5,2,moves);
    [cube,moves]=Face_90(cube,4,3,moves);
     lol=lol+1;
     999
end
 end 
%lol
 if ((cube(2,3,1)~=esquina_1(rec)||cube(3,3,1)~=esquina_1(rec))||(cube(3,1,6)~=esquina_2(rec)&&cube(2,1,6)~=esquina_2(rec)&&cube(1,3,4)~='W'))&&lol>5
if sec==0

    if poop<3
    [cube,moves]=Face_90(cube,4,1,moves);
    [cube,moves]=Face_90(cube,5,3,moves);
    [cube,moves]=Face_90(cube,4,3,moves);
    [cube,moves]=Face_90(cube,1,1,moves);
    [cube,moves]=Face_90(cube,4,3,moves);
    [cube,moves]=Face_90(cube,1,3,moves);
    [cube,moves]=Face_90(cube,4,1,moves);
    
    end
    if poop>3
        [cube,moves]=Face_90(cube,4,1,moves);
    [cube,moves]=Face_90(cube,5,2,moves);
    [cube,moves]=Face_90(cube,4,3,moves);
    end
    poop=poop+1;
    
    
        
   100
end
 end  

%  figure(2);
%   Show_Cube(PlotCube(cube))
% pause();
 
rec=rec+1;

[cube,moves]=rotacion(cube,1,moves);

gir=gir+1;
if rec==5
    rec=1;
end
end
gir
mit=cube;

% while isequal(moves(length(moves),:),'xm')
%     moves(length(moves),:)=[];
% end

end