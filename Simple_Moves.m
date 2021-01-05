function simple_moves=Simple_Moves(moves)

simple_moves=moves;
[m,~]=size(moves);

for i=1:m-1
    if ~isequal(simple_moves(i,:),'XX')
        if isequal(moves(i,:),'F1')
            if isequal(moves(i+1,:),'F1')
                simple_moves(i,:)='F2';simple_moves(i+1,:)='XX';
            elseif isequal(moves(i+1,:),'F2')
                simple_moves(i,:)='F3';simple_moves(i+1,:)='XX';
            elseif isequal(moves(i+1,:),'F3')
                simple_moves(i,:)='XX';simple_moves(i+1,:)='XX';
            else
                simple_moves(i,:)=moves(i,:);
            end

        elseif isequal(moves(i,:),'F2')
            if isequal(moves(i+1,:),'F1')
                simple_moves(i,:)='F3';simple_moves(i+1,:)='XX';
            elseif isequal(moves(i+1,:),'F2')
                simple_moves(i,:)='XX';simple_moves(i+1,:)='XX';
            elseif isequal(moves(i+1,:),'F3')
                simple_moves(i,:)='F1';simple_moves(i+1,:)='XX';
            else
                simple_moves(i,:)=moves(i,:);
            end

        elseif isequal(moves(i,:),'F3')
            if isequal(moves(i+1,:),'F1')
                simple_moves(i,:)='XX';simple_moves(i+1,:)='XX';
            elseif isequal(moves(i+1,:),'F2')
                simple_moves(i,:)='F1';simple_moves(i+1,:)='XX';
            elseif isequal(moves(i+1,:),'F3')
                simple_moves(i,:)='F2';simple_moves(i+1,:)='XX';
            else
                simple_moves(i,:)=moves(i,:);
            end

        elseif isequal(moves(i,:),'B1')
            if isequal(moves(i+1,:),'B1')
                simple_moves(i,:)='B2';simple_moves(i+1,:)='XX';
            elseif isequal(moves(i+1,:),'B2')
                simple_moves(i,:)='B3';simple_moves(i+1,:)='XX';
            elseif isequal(moves(i+1,:),'B3')
                simple_moves(i,:)='XX';simple_moves(i+1,:)='XX';
            else
                simple_moves(i,:)=moves(i,:);
            end 

        elseif isequal(moves(i,:),'B2')
            if isequal(moves(i+1,:),'B1')
                simple_moves(i,:)='B3';simple_moves(i+1,:)='XX';
            elseif isequal(moves(i+1,:),'B2')
                simple_moves(i,:)='XX';simple_moves(i+1,:)='XX';
            elseif isequal(moves(i+1,:),'B3')
                simple_moves(i,:)='B1';simple_moves(i+1,:)='XX';
            else
                simple_moves(i,:)=moves(i,:);
            end
            
        elseif isequal(moves(i,:),'B3')
            if isequal(moves(i+1,:),'B1')
                simple_moves(i,:)='XX';simple_moves(i+1,:)='XX';
            elseif isequal(moves(i+1,:),'B2')
                simple_moves(i,:)='B1';simple_moves(i+1,:)='XX';
            elseif isequal(moves(i+1,:),'B3')
                simple_moves(i,:)='B2';simple_moves(i+1,:)='XX';
            else
                simple_moves(i,:)=moves(i,:);
            end
            
        elseif isequal(moves(i,:),'L1')
            if isequal(moves(i+1,:),'L1')
                simple_moves(i,:)='L2';simple_moves(i+1,:)='XX';
            elseif isequal(moves(i+1,:),'L2')
                simple_moves(i,:)='L3';simple_moves(i+1,:)='XX';
            elseif isequal(moves(i+1,:),'L3')
                simple_moves(i,:)='XX';simple_moves(i+1,:)='XX';
            else
                simple_moves(i,:)=moves(i,:);
            end 
            
        elseif isequal(moves(i,:),'L2')
            if isequal(moves(i+1,:),'L1')
                simple_moves(i,:)='L3';simple_moves(i+1,:)='XX';
            elseif isequal(moves(i+1,:),'L2')
                simple_moves(i,:)='XX';simple_moves(i+1,:)='XX';
            elseif isequal(moves(i+1,:),'L3')
                simple_moves(i,:)='L1';simple_moves(i+1,:)='XX';
            else
                simple_moves(i,:)=moves(i,:);
            end
            
        elseif isequal(moves(i,:),'L3')
            if isequal(moves(i+1,:),'L1')
                simple_moves(i,:)='XX';simple_moves(i+1,:)='XX';
            elseif isequal(moves(i+1,:),'L2')
                simple_moves(i,:)='L1';simple_moves(i+1,:)='XX';
            elseif isequal(moves(i+1,:),'L3')
                simple_moves(i,:)='L2';simple_moves(i+1,:)='XX';
            else
                simple_moves(i,:)=moves(i,:);
            end 

        elseif isequal(moves(i,:),'R1')
            if isequal(moves(i+1,:),'R1')
                simple_moves(i,:)='R2';simple_moves(i+1,:)='XX';
            elseif isequal(moves(i+1,:),'R2')
                simple_moves(i,:)='R3';simple_moves(i+1,:)='XX';
            elseif isequal(moves(i+1,:),'R3')
                simple_moves(i,:)='XX';simple_moves(i+1,:)='XX';
            else
                simple_moves(i,:)=moves(i,:);
            end 
            
        elseif isequal(moves(i,:),'R2')
            if isequal(moves(i+1,:),'R1')
                simple_moves(i,:)='R3';simple_moves(i+1,:)='XX';
            elseif isequal(moves(i+1,:),'R2')
                simple_moves(i,:)='XX';simple_moves(i+1,:)='XX';
            elseif isequal(moves(i+1,:),'R3')
                simple_moves(i,:)='R1';simple_moves(i+1,:)='XX';
            else
                simple_moves(i,:)=moves(i,:);
            end
            
        elseif isequal(moves(i,:),'R3')
            if isequal(moves(i+1,:),'R1')
                simple_moves(i,:)='XX';simple_moves(i+1,:)='XX';
            elseif isequal(moves(i+1,:),'R2')
                simple_moves(i,:)='R1';simple_moves(i+1,:)='XX';
            elseif isequal(moves(i+1,:),'R3')
                simple_moves(i,:)='R2';simple_moves(i+1,:)='XX';
            else
                simple_moves(i,:)=moves(i,:);
            end 

        elseif isequal(moves(i,:),'U1')
            if isequal(moves(i+1,:),'U1')
                simple_moves(i,:)='U2';simple_moves(i+1,:)='XX';
            elseif isequal(moves(i+1,:),'U2')
                simple_moves(i,:)='U3';simple_moves(i+1,:)='XX';
            elseif isequal(moves(i+1,:),'U3')
                simple_moves(i,:)='XX';simple_moves(i+1,:)='XX';
            else
                simple_moves(i,:)=moves(i,:);
            end 
            
        elseif isequal(moves(i,:),'U2')
            if isequal(moves(i+1,:),'U1')
                simple_moves(i,:)='U3';simple_moves(i+1,:)='XX';
            elseif isequal(moves(i+1,:),'U2')
                simple_moves(i,:)='XX';simple_moves(i+1,:)='XX';
            elseif isequal(moves(i+1,:),'U3')
                simple_moves(i,:)='U1';simple_moves(i+1,:)='XX';
            else
                simple_moves(i,:)=moves(i,:);
            end
            
        elseif isequal(moves(i,:),'U3')
            if isequal(moves(i+1,:),'U1')
                simple_moves(i,:)='XX';simple_moves(i+1,:)='XX';
            elseif isequal(moves(i+1,:),'U2')
                simple_moves(i,:)='U1';simple_moves(i+1,:)='XX';
            elseif isequal(moves(i+1,:),'U3')
                simple_moves(i,:)='U2';simple_moves(i+1,:)='XX';
            else
                simple_moves(i,:)=moves(i,:);    
            end

        elseif isequal(moves(i,:),'D1')
            if isequal(moves(i+1,:),'D1')
                simple_moves(i,:)='D2';simple_moves(i+1,:)='XX';
            elseif isequal(moves(i+1,:),'D2')
                simple_moves(i,:)='D3';simple_moves(i+1,:)='XX';
            elseif isequal(moves(i+1,:),'D3')
                simple_moves(i,:)='XX';simple_moves(i+1,:)='XX';
            else
                simple_moves(i,:)=moves(i,:);    
            end 
            
        elseif isequal(moves(i,:),'D2')
            if isequal(moves(i+1,:),'D1')
                simple_moves(i,:)='D3';simple_moves(i+1,:)='XX';
            elseif isequal(moves(i+1,:),'D2')
                simple_moves(i,:)='XX';simple_moves(i+1,:)='XX';
            elseif isequal(moves(i+1,:),'D3')
                simple_moves(i,:)='D1';simple_moves(i+1,:)='XX';
            else
                simple_moves(i,:)=moves(i,:);
            end
            
        elseif isequal(moves(i,:),'D3')
            if isequal(moves(i+1,:),'D1')
                simple_moves(i,:)='XX';simple_moves(i+1,:)='XX';
            elseif isequal(moves(i+1,:),'D2')
                simple_moves(i,:)='D1';simple_moves(i+1,:)='XX';
            elseif isequal(moves(i+1,:),'D3')
                simple_moves(i,:)='D2';simple_moves(i+1,:)='XX';
            else
                simple_moves(i,:)=moves(i,:);
            end  
            
        elseif isequal(moves(i,:),'xm')
            if isequal(moves(i+1,:),'xm')
                if isequal(moves(i+2,:),'xm')
                    if isequal(moves(i+3,:),'xm')
                        simple_moves(i,:)='XX';simple_moves(i+1,:)='XX';
                        simple_moves(i+2,:)='XX';simple_moves(i+3,:)='XX';
                    end
                end
            end
            
        end
    end
end

simple_moves=simple_moves(simple_moves~='X');
[m,~]=size(simple_moves);
simple_moves(1:m/2,2)=simple_moves(m/2+1:m);
simple_moves(m/2+1:m,:)=[];

end