function [done,moves]=WCruz(cube)

moves='NA';

%%Azul
    %%rojo
       if cube(2,1,3)=='W'&&cube(1,2,5)=='B'
          % cube=Left90(cube);
           [cube,moves]=Face_90(cube,3,1,moves);

       end
       if cube(1,2,3)=='W'&&cube(1,2,2)=='B'               
          % cube=Up270(cube);
         %  cube=Left90(cube);
            [cube,moves]=Face_90(cube,5,3,moves);
            [cube,moves]=Face_90(cube,3,1,moves);

       end
       if cube(2,3,3)=='W'&&cube(1,2,6)=='B'
          % cube=Up180(cube);
           %cube=Left270(cube);
           [cube,moves]=Face_90(cube,5,2,moves);
           [cube,moves]=Face_90(cube,3,3,moves);

       end
       if cube(3,2,3)=='W'&&cube(1,2,1)=='B'
          % cube=Up90(cube);
           %cube=Left90(cube);
           [cube,moves]=Face_90(cube,5,1,moves);
           [cube,moves]=Face_90(cube,3,1,moves);

       end

   %%verde
        if cube(2,1,6)=='W'&&cube(2,3,1)=='B'
          % cube=Right90(cube);
           %cube=Up90(cube);
           %cube=Front270(cube);
           [cube,moves]=Face_90(cube,4,1,moves);
           [cube,moves]=Face_90(cube,5,1,moves);
           [cube,moves]=Face_90(cube,1,3,moves);
       end
       if cube(1,2,6)=='W'&&cube(2,3,3)=='B'               
          % cube=Up90(cube);
           %cube=Front270(cube);
           [cube,moves]=Face_90(cube,5,1,moves);
           [cube,moves]=Face_90(cube,1,3,moves);
       end
       if cube(2,3,6)=='W'&&cube(2,1,2)=='B'
          % cube=Right270(cube);
          %cube=Up90(cube);
          %cube=Left270(cube);
          [cube,moves]=Face_90(cube,4,3,moves);
          [cube,moves]=Face_90(cube,5,1,moves);
          [cube,moves]=Face_90(cube,3,3,moves);
       end
       if cube(3,2,6)=='W'&&cube(2,3,4)=='B'
           %cube=Down270(cube);
           %cube=Front90(cube);
           [cube,moves]=Face_90(cube,6,3,moves);
           [cube,moves]=Face_90(cube,1,1,moves);
       end



   %%Naranja

       if cube(2,1,4)=='W'&&cube(3,2,5)=='B'
           %cube=Left270(cube);
           [cube,moves]=Face_90(cube,3,3,moves);
       end
       if cube(1,2,4)=='W'&&cube(3,2,1)=='B'               
         %  cube=Down270(cube);
          % cube=Left270(cube);
           [cube,moves]=Face_90(cube,6,3,moves);
           [cube,moves]=Face_90(cube,3,3,moves);
       end
       if cube(2,3,4)=='W'&&cube(3,2,6)=='B'
          % cube=Right90(cube);
           %cube=Front180(cube);
           [cube,moves]=Face_90(cube,4,1,moves);
           [cube,moves]=Face_90(cube,1,2,moves);

       end
       if cube(3,2,4)=='W'&&cube(3,2,2)=='B'
          %cube=Down90(cube);
           %cube=Left270(cube);
           [cube,moves]=Face_90(cube,6,1,moves);
           [cube,moves]=Face_90(cube,3,3,moves);
       end 
   %%Azul
       if cube(2,1,5)=='W'&&cube(2,3,2)=='B'
%                [cube,moves]=Left90(cube);
%                [cube,moves]=Up270(cube);
%                [cube,moves]=Front270(cube);
             [cube,moves]=Face_90(cube,3,1,moves);
             [cube,moves]=Face_90(cube,5,3,moves);
             [cube,moves]=Face_90(cube,1,3,moves);
       end
       if cube(1,2,5)=='W'&&cube(2,1,3)=='B'               
          % cube=Up270(cube);
           %cube=Front270(cube);
           [cube,moves]=Face_90(cube,5,3,moves);
           [cube,moves]=Face_90(cube,1,3,moves);
       end
       if cube(2,3,5)=='W'&&cube(2,1,1)=='B'
%                [cube,moves]=Left270(cube);
%                [cube,moves]=Up270(cube);
%                [cube,moves]=Front270(cube);
           [cube,moves]=Face_90(cube,3,3,moves);
           [cube,moves]=Face_90(cube,5,3,moves);
           [cube,moves]=Face_90(cube,1,3,moves);
       end
       if cube(3,2,5)=='W'&&cube(2,1,4)=='B'
%                [cube,moves]=Down90(cube);
%                [cube,moves]=Front90(cube);
             [cube,moves]=Face_90(cube,6,1,moves);
             [cube,moves]=Face_90(cube,1,1,moves);
       end 
   %%Amarillo
       if cube(2,1,2)=='W'&&cube(2,3,6)=='B'
%                [cube,moves]=Right180(cube);
%                [cube,moves]=Front180(cube);
             [cube,moves]=Face_90(cube,4,2,moves);
             [cube,moves]=Face_90(cube,1,2,moves);
       end
       if cube(1,2,2)=='W'&&cube(1,2,3)=='B'               
          %cube=Up180(cube);
          % cube=Front270(cube);
            [cube,moves]=Face_90(cube,5,2,moves);
            [cube,moves]=Face_90(cube,1,3,moves);
       end
       if cube(2,3,2)=='W'&&cube(2,1,5)=='B'
           %cube=Left180(cube);
           [cube,moves]=Face_90(cube,3,2,moves);
       end
       if cube(3,2,2)=='W'&&cube(3,2,4)=='B'
          % cube=Down180(cube);
          % cube=Front90(cube);
           [cube,moves]=Face_90(cube,6,2,moves);
           [cube,moves]=Face_90(cube,1,1,moves);
       end  
   %%White 
       if cube(1,2,1)=='W'&&cube(3,2,3)=='B'               
           %cube=Front270(cube);
           [cube,moves]=Face_90(cube,1,3,moves);
       end
       if cube(2,3,1)=='W'&&cube(2,1,6)=='B'
         %cube=Front180(cube);
          [cube,moves]=Face_90(cube,1,2,moves);
       end
       if cube(3,2,1)=='W'&&cube(1,2,4)=='B'
              %cube=Front90(cube);
              [cube,moves]=Face_90(cube,1,1,moves);

       end
%%Rojo
    %%rojo
       if cube(2,1,3)=='W'&&cube(1,2,5)=='R'
         %  cube=Left90(cube);
          % cube=Front90(cube);
          % cube=Left270(cube);
          [cube,moves]=Face_90(cube,3,1,moves);
          [cube,moves]=Face_90(cube,1,1,moves);
          [cube,moves]=Face_90(cube,3,3,moves);
       end
       if cube(1,2,3)=='W'&&cube(1,2,2)=='R'  
           %cube=Up270(cube);
           %cube=Left90(cube);
           %cube=Front90(cube);
           %cube=Left270(cube);
           [cube,moves]=Face_90(cube,5,3,moves);
           [cube,moves]=Face_90(cube,3,1,moves);
           [cube,moves]=Face_90(cube,1,1,moves);
           [cube,moves]=Face_90(cube,3,3,moves);
       end
       if cube(2,3,3)=='W'&&cube(1,2,6)=='R'
          % cube=Front90(cube);
           %cube=Right270(cube);
          % cube=Front270(cube);
           [cube,moves]=Face_90(cube,1,1,moves);
           [cube,moves]=Face_90(cube,4,3,moves);
           [cube,moves]=Face_90(cube,1,3,moves);

       end
       if cube(3,2,3)=='W'&&cube(1,2,1)=='R'
          % cube=Up90(cube);
           %cube=Left90(cube);
           %cube=Front90(cube);
          % cube=Left270(cube);
           [cube,moves]=Face_90(cube,5,1,moves);
           [cube,moves]=Face_90(cube,3,1,moves);
           [cube,moves]=Face_90(cube,1,1,moves);
           [cube,moves]=Face_90(cube,3,3,moves);
       end
   %%verde
       if cube(2,1,6)=='W'&&cube(2,3,1)=='R'
           %cube=Right90(cube);
           %cube=Up90(cube);
           [cube,moves]=Face_90(cube,4,1,moves);
           [cube,moves]=Face_90(cube,5,1,moves);
           53
       end
       if cube(1,2,6)=='W'&&cube(2,3,3)=='R'               
           %cube=Up90(cube);
           [cube,moves]=Face_90(cube,5,1,moves);
           52
       end
       if cube(2,3,6)=='W'&&cube(2,1,2)=='R'
       %    [cube,moves]=Right270(cube);
        %   cube=Up90(cube);
           [cube,moves]=Face_90(cube,4,3,moves);
           [cube,moves]=Face_90(cube,5,1,moves);
           51
       end
       if cube(3,2,6)=='W'&&cube(2,3,4)=='R'
         %  cube=Right180(cube);
          % cube=Up90(cube);
           [cube,moves]=Face_90(cube,4,2,moves);
           [cube,moves]=Face_90(cube,5,1,moves);
           50

       end
   %%Naranja
       if cube(2,1,4)=='W'&&cube(3,2,5)=='R'
      %     [cube,moves]=Front270(cube);
       %    [cube,moves]=Left270(cube);
        %   cube=Front90(cube);
           [cube,moves]=Face_90(cube,1,3,moves);
           [cube,moves]=Face_90(cube,3,3,moves);
           [cube,moves]=Face_90(cube,1,1,moves);
       49
       end
       if cube(1,2,4)=='W'&&cube(3,2,1)=='R'               
          % cube=Down270(cube);
          % cube=Front270(cube);
          % cube=Left270(cube);
          % cube=Front90(cube);
           [cube,moves]=Face_90(cube,6,3,moves);
           [cube,moves]=Face_90(cube,1,3,moves);
           [cube,moves]=Face_90(cube,3,3,moves);
           [cube,moves]=Face_90(cube,1,1,moves);
           48
       end
       if cube(2,3,4)=='W'&&cube(3,2,6)=='R'
          % cube=Front90(cube);
          % cube=Right90(cube);
          % cube=Front270(cube);
           [cube,moves]=Face_90(cube,1,1,moves);
           [cube,moves]=Face_90(cube,4,1,moves);
           [cube,moves]=Face_90(cube,1,3,moves);
           47
       end
       if cube(3,2,4)=='W'&&cube(3,2,2)=='R'
          % cube=Down270(cube);
           %cube=Front270(cube);
           %cube=Left270(cube);
           %cube=Front90(cube);
           [cube,moves]=Face_90(cube,6,3,moves);
           [cube,moves]=Face_90(cube,1,1,moves);
           [cube,moves]=Face_90(cube,4,1,moves);
           [cube,moves]=Face_90(cube,1,3,moves);
           46

       end
   %%Azul
      if cube(2,1,5)=='W'&&cube(2,3,2)=='R'
        %   cube=Left90(cube);
         %  cube=Up270(cube);
          % cube=Left270(cube);
           [cube,moves]=Face_90(cube,3,1,moves);
           [cube,moves]=Face_90(cube,5,3,moves);
           [cube,moves]=Face_90(cube,3,3,moves);
           45
       end
       if cube(1,2,5)=='W'&&cube(2,1,3)=='R'               
          % cube=Up270(cube);
           [cube,moves]=Face_90(cube,5,3,moves);
           44
       end
       if cube(3,2,5)=='W'&&cube(2,1,4)=='R'
        %   cube=Front180(cube);
         %  cube=Down90(cube);
          % cube=Front180(cube);
           [cube,moves]=Face_90(cube,1,2,moves);
           [cube,moves]=Face_90(cube,6,1,moves);
           [cube,moves]=Face_90(cube,1,2,moves);
           43

       end
   %%Amarillo
       if cube(2,1,2)=='W'&&cube(2,3,6)=='R'
       %    [cube,moves]=Front90(cube);
        %   cube=Right180(cube);
         %  cube=Front270(cube);
           [cube,moves]=Face_90(cube,1,1,moves);
           [cube,moves]=Face_90(cube,4,2,moves);
           [cube,moves]=Face_90(cube,1,3,moves);
           42
       end
       if cube(1,2,2)=='W'&&cube(1,2,3)=='R'               
          % cube=Right180(cube);
           [cube,moves]=Face_90(cube,5,2,moves);
           41
       end
       if cube(2,3,2)=='W'&&cube(2,1,5)=='R'
        %    [cube,moves]=Front270(cube);
         %  cube=Right180(cube);
          % cube=Front90(cube);
           [cube,moves]=Face_90(cube,1,3,moves);
           [cube,moves]=Face_90(cube,4,2,moves);
           [cube,moves]=Face_90(cube,1,1,moves);
           40
       end
       if cube(3,2,2)=='W'&&cube(3,2,4)=='R'
         %  cube=Front180(cube);
          % cube=Down180(cube);
           %cube=Front180(cube);
           [cube,moves]=Face_90(cube,1,2,moves);
           [cube,moves]=Face_90(cube,6,2,moves);
           [cube,moves]=Face_90(cube,1,2,moves);
39
       end
   %%White

       if cube(2,3,1)=='W'&&cube(2,1,6)=='R'
         %  cube=Left90(cube);
        %   cube=Front270(cube);
          % cube=Left270(cube);
           [cube,moves]=Face_90(cube,3,1,moves);
           [cube,moves]=Face_90(cube,1,3,moves);
           [cube,moves]=Face_90(cube,3,3,moves);
           38
       end
       if cube(3,2,1)=='W'&&cube(1,2,4)=='R'
          %    [cube,moves]=Left90(cube);
           %   cube=Front180(cube);
            %  cube=Left270(cube);
              [cube,moves]=Face_90(cube,3,1,moves);
              [cube,moves]=Face_90(cube,1,2,moves);
              [cube,moves]=Face_90(cube,3,3,moves);
              37

       end
%%Verde
    %%rojo
      if cube(2,1,3)=='W'&&cube(1,2,5)=='G'
%            [cube,moves]=Front180(cube);
%            [cube,moves]=Left90(cube);
%            [cube,moves]=Front180(cube);
             [cube,moves]=Face_90(cube,1,2,moves);
             [cube,moves]=Face_90(cube,3,1,moves);
             [cube,moves]=Face_90(cube,1,2,moves);
             36
       end
       if cube(1,2,3)=='W'&&cube(1,2,2)=='G' 
       %    [cube,moves]=Front270(cube);
        %   cube=Up90(cube);
         %  cube=Front90(cube);
          % cube=Right270(cube);
           [cube,moves]=Face_90(cube,1,3,moves);
           [cube,moves]=Face_90(cube,5,1,moves);
           [cube,moves]=Face_90(cube,1,1,moves);
           [cube,moves]=Face_90(cube,4,3,moves);
           35
       end
       if cube(2,3,3)=='W'&&cube(1,2,6)=='G'
         %  cube=Right270(cube);
           [cube,moves]=Face_90(cube,4,3,moves);
           34
       end
 %%verde

       if cube(2,1,6)=='W'&&cube(2,3,1)=='G'
     %      [cube,moves]=Right90(cube);
      %     [cube,moves]=Front270(cube);
       %    [cube,moves]=Up90(cube);
        %   cube=Front90(cube);
           [cube,moves]=Face_90(cube,4,1,moves);
           [cube,moves]=Face_90(cube,1,3,moves);
           [cube,moves]=Face_90(cube,5,1,moves);
           [cube,moves]=Face_90(cube,1,1,moves);
           33
       end
       if cube(1,2,6)=='W'&&cube(2,3,3)=='G'               
          % cube=Front270(cube);
           %cube=Up90(cube);
          % cube=Front90(cube);
           [cube,moves]=Face_90(cube,1,3,moves);
           [cube,moves]=Face_90(cube,5,1,moves);
           [cube,moves]=Face_90(cube,1,1,moves);
           32
       end
       if cube(2,3,6)=='W'&&cube(2,1,2)=='G'
       %   cube=Right270(cube);
        %   cube=Front270(cube);
         %  cube=Up90(cube);
          % cube=Front90(cube);   
           [cube,moves]=Face_90(cube,4,3,moves);
           [cube,moves]=Face_90(cube,1,3,moves);
           [cube,moves]=Face_90(cube,5,1,moves);
           [cube,moves]=Face_90(cube,1,1,moves);
           31
       end
       if cube(3,2,6)=='W'&&cube(2,3,4)=='G'
        %   cube=Front90(cube);
         %  cube=Down270(cube);
          % cube=Front270(cube);
           [cube,moves]=Face_90(cube,1,1,moves);
           [cube,moves]=Face_90(cube,6,3,moves);
           [cube,moves]=Face_90(cube,1,3,moves);
           30

       end
  %%Naranja
       if cube(2,1,4)=='W'&&cube(3,2,5)=='G'
       %    [cube,moves]=Front180(cube);
        %   cube=Left270(cube);
         %  cube=Front180(cube);
           [cube,moves]=Face_90(cube,1,2,moves);
           [cube,moves]=Face_90(cube,3,3,moves);
           [cube,moves]=Face_90(cube,1,2,moves);
           29
       end
       if cube(1,2,4)=='W'&&cube(3,2,1)=='G'               
          % cube=Down90(cube);
           %cube=Righy90(cube);
           [cube,moves]=Face_90(cube,6,1,moves);
           [cube,moves]=Face_90(cube,4,1,moves);
           28
       end
       if cube(2,3,4)=='W'&&cube(3,2,6)=='G'
          % cube=Right90(cube);
           [cube,moves]=Face_90(cube,4,1,moves);
           27
       end
       if cube(3,2,4)=='W'&&cube(3,2,2)=='G'
          % cube=Down270(cube);
           %cube=Right90(cube);
           [cube,moves]=Face_90(cube,6,3,moves);
           [cube,moves]=Face_90(cube,4,1,moves);
           26

       end
   %%Azul
      if cube(2,1,5)=='W'&&cube(2,3,2)=='G'
     %      [cube,moves]=Front180(cube);
      %     [cube,moves]=Left90(cube);
       %    [cube,moves]=Front90(cube);
        %   cube=Up270(cube);
         %  cube=Front90(cube);
           [cube,moves]=Face_90(cube,1,2,moves);
           [cube,moves]=Face_90(cube,3,1,moves);
           [cube,moves]=Face_90(cube,1,1,moves);
           [cube,moves]=Face_90(cube,5,3,moves);
           [cube,moves]=Face_90(cube,1,1,moves);
           25
       end
       if cube(1,2,5)=='W'&&cube(2,1,3)=='G'               
      %     [cube,moves]=Front270(cube);
       %    [cube,moves]=Up270(cube);
        %   cube=Front90(cube);
           [cube,moves]=Face_90(cube,1,3,moves);
           [cube,moves]=Face_90(cube,5,3,moves);
           [cube,moves]=Face_90(cube,1,1,moves);
           24
       end
       if cube(3,2,5)=='W'&&cube(2,1,4)=='G'
       %    [cube,moves]=Front90(cube);
        %   cube=Down90(cube);
         %  cube=Front270(cube);
           [cube,moves]=Face_90(cube,1,1,moves);
           [cube,moves]=Face_90(cube,6,1,moves);
           [cube,moves]=Face_90(cube,1,3,moves);
           23

       end
   %%Amarillo
       if cube(2,1,2)=='W'&&cube(2,3,6)=='G'
         %  cube=Right180(cube);
           [cube,moves]=Face_90(cube,4,2,moves);
           22
       end
       if cube(1,2,2)=='W'&&cube(1,2,3)=='G'
        %   cube=Front270(cube);
         %  cube=Up180(cube);
          % cube=Front90(cube);
           [cube,moves]=Face_90(cube,1,3,moves);
           [cube,moves]=Face_90(cube,5,2,moves);
           [cube,moves]=Face_90(cube,1,1,moves);
           21
       end
       if cube(2,3,2)=='W'&&cube(2,1,5)=='G'
       %     [cube,moves]=Front180(cube);
        %   cube=Left180(cube);
         %  cube=Front180(cube);
           [cube,moves]=Face_90(cube,1,2,moves);
           [cube,moves]=Face_90(cube,3,2,moves);
           [cube,moves]=Face_90(cube,1,2,moves);
           20
       end
       if cube(3,2,2)=='W'&&cube(3,2,4)=='G'
        %   cube=Front90(cube);
         %  cube=Down180(cube);
          % cube=Front270(cube);
           [cube,moves]=Face_90(cube,1,1,moves);
           [cube,moves]=Face_90(cube,6,2,moves);
           [cube,moves]=Face_90(cube,1,3,moves);
           19

       end
   %%White

       if cube(3,2,1)=='W'&&cube(1,2,4)=='G'
           %   cube=Left90(cube);
            %  cube=Up270(cube);
             % cube=Front270(cube);
              %cube=Up90(cube);
           %   cube=Left270(cube);
              [cube,moves]=Face_90(cube,1,3,moves);
              [cube,moves]=Face_90(cube,4,1,moves);
              [cube,moves]=Face_90(cube,1,1,moves);
              [cube,moves]=Face_90(cube,4,3,moves);
              
              18

       end
%%Naranja
    %%rojo
       if cube(2,1,3)=='W'&&cube(1,2,5)=='O'
         %  cube=Front90(cube);
          % cube=Left90(cube);
           %cube=Front270(cube);
           [cube,moves]=Face_90(cube,1,1,moves);
           [cube,moves]=Face_90(cube,3,1,moves);
           [cube,moves]=Face_90(cube,1,3,moves);
           17
       end
       if cube(1,2,3)=='W'&&cube(1,2,2)=='O'
      %     [cube,moves]=Front180(cube);
       %    [cube,moves]=Up270(cube);
        %   cube=Front270(cube);
         %  cube=Left90(cube);
          % cube=Front270(cube);
           [cube,moves]=Face_90(cube,1,2,moves);
           [cube,moves]=Face_90(cube,5,3,moves);
           [cube,moves]=Face_90(cube,1,3,moves);
           [cube,moves]=Face_90(cube,3,1,moves);
           [cube,moves]=Face_90(cube,1,3,moves);
           16
       end
       if cube(2,3,3)=='W'&&cube(1,2,6)=='O'
        %   cube=Front270(cube);
         %  cube=Right270(cube);
          % cube=Front90(cube);
           [cube,moves]=Face_90(cube,1,3,moves);
           [cube,moves]=Face_90(cube,4,3,moves);
           [cube,moves]=Face_90(cube,1,1,moves);
           15
       end
 %%verde
       if cube(1,2,6)=='W'&&cube(2,3,3)=='O'               
        %   cube=Front180(cube);
         %  cube=Up90(cube);
          % cube=Front180(cube);
           [cube,moves]=Face_90(cube,1,2,moves);
           [cube,moves]=Face_90(cube,5,1,moves);
           [cube,moves]=Face_90(cube,1,2,moves);
           14
       end
       if cube(2,3,6)=='W'&&cube(2,1,2)=='O'
      %     [cube,moves]=Left270(cube);
       %    [cube,moves]=Right270(cube);
        %  cube=Front270(cube);
         %  cube=Up90(cube);
          % cube=Front180(cube);  
           [cube,moves]=Face_90(cube,4,1,moves);
           [cube,moves]=Face_90(cube,6,3,moves);
           [cube,moves]=Face_90(cube,4,3,moves);
           13
       end
       if cube(3,2,6)=='W'&&cube(2,3,4)=='O'
          % cube=Down270(cube);  
           [cube,moves]=Face_90(cube,6,3,moves);
           12
       end
   %%Naranja
       if cube(2,1,4)=='W'&&cube(3,2,5)=='O'
       %    [cube,moves]=Front90(cube);
        %   cube=Left270(cube);
         %  cube=Front270(cube);
           [cube,moves]=Face_90(cube,1,1,moves);
           [cube,moves]=Face_90(cube,3,1,moves);
           [cube,moves]=Face_90(cube,1,3,moves);
           11
       end
       if cube(1,2,4)=='W'&&cube(3,2,1)=='O'               
       %    [cube,moves]=Down90(cube);
        %   cube=Front270(cube);
         %  cube=Right90(cube);
          % cube=Front90(cube);
           [cube,moves]=Face_90(cube,6,1,moves);
           [cube,moves]=Face_90(cube,1,3,moves);
           [cube,moves]=Face_90(cube,4,1,moves);
           [cube,moves]=Face_90(cube,1,1,moves);
           10

       end
       if  cube(2,3,4)=='W'&&cube(3,2,6)=='O'
      %     [cube,moves]=Front270(cube);
       %    [cube,moves]=Right90(cube);
        %   cube=Front90(cube);
           [cube,moves]=Face_90(cube,1,3,moves);
           [cube,moves]=Face_90(cube,4,1,moves);
           [cube,moves]=Face_90(cube,1,1,moves);
           9
       end
       if cube(3,2,4)=='W'&&cube(3,2,2)=='O'
      %     [cube,moves]=Down270(cube);
       %     [cube,moves]=Front270(cube);
        %   cube=Right90(cube);
         %  cube=Front90(cube);
           [cube,moves]=Face_90(cube,6,3,moves);
           [cube,moves]=Face_90(cube,1,3,moves);
           [cube,moves]=Face_90(cube,4,1,moves);
           [cube,moves]=Face_90(cube,1,1,moves);
           8

       end
   %%Azul
       if cube(2,1,5)=='W'&&cube(2,3,2)=='O'
      %     [cube,moves]=Front90(cube);
       %    [cube,moves]=Left90(cube);
        %   cube=Front90(cube);
         %  cube=Up270(cube);
          % cube=Front180(cube);
           [cube,moves]=Face_90(cube,1,1,moves);
           [cube,moves]=Face_90(cube,3,1,moves);
           [cube,moves]=Face_90(cube,1,1,moves);
           [cube,moves]=Face_90(cube,5,1,moves);
           [cube,moves]=Face_90(cube,1,2,moves);
           7
       end
      if cube(1,2,5)=='W'&&cube(2,1,3)=='O'               
        %   cube=Front180(cube);
         %  cube=Up270(cube);
          % cube=Front180(cube);
           [cube,moves]=Face_90(cube,1,2,moves);
           [cube,moves]=Face_90(cube,5,3,moves);
           [cube,moves]=Face_90(cube,1,2,moves);
           6
       end
       if cube(3,2,5)=='W'&&cube(2,1,4)=='O'
         %  cube=Down90(cube); 
           [cube,moves]=Face_90(cube,6,1,moves);
           5
       end
   %%Amarillo
      if cube(2,1,2)=='W'&&cube(2,3,6)=='O'
       %    [cube,moves]=Front270(cube);
        %   cube=Right180(cube);
         %  cube=Front90(cube);
           [cube,moves]=Face_90(cube,1,3,moves);
           [cube,moves]=Face_90(cube,4,2,moves);
           [cube,moves]=Face_90(cube,1,1,moves);
           4
       end
       if cube(1,2,2)=='W'&&cube(1,2,3)=='O'
        %   cube=Front180(cube);
         %  cube=Up180(cube);
          % cube=Front180(cube);
           [cube,moves]=Face_90(cube,1,2,moves);
           [cube,moves]=Face_90(cube,5,2,moves);
           [cube,moves]=Face_90(cube,1,2,moves);
           3

       end
       if cube(2,3,2)=='W'&&cube(2,1,5)=='O'
       %     [cube,moves]=Front90(cube);
        %   cube=Left180(cube);
         %  cube=Front2700(cube);
           [cube,moves]=Face_90(cube,1,1,moves);
           [cube,moves]=Face_90(cube,3,2,moves);
           [cube,moves]=Face_90(cube,1,3,moves);
           2
       end
       if cube(3,2,2)=='W'&&cube(3,2,4)=='O'
           %cube=Down180(cube);  
           [cube,moves]=Face_90(cube,6,2,moves);
           1
       end
done=cube;
% [m,~]=size(moves);
% if m>1
%     moves=moves(2:m,:);
% end
% 
% moves=Simple_Moves(Simple_Moves(moves));

end
       