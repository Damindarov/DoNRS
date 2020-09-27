A = fopen('Text_File.txt');
formatSpec = '%f';
mas = fscanf(A,formatSpec);
q1 = 0;q2 = 0; q3 = 0; q4 =0; q5 = 0; q6 = 0;
%syms q1 q2 q3 q4 q5 q6 L1 L2 L3;
test_file = fopen('Test_FK.txt');

% close the file
M = Matrix(q1,q2,q3,q4,q5,q6)
function M = Matrix(q1,q2,q3,q4,q5,q6)
L1 = 10; L2 =10; L3 = 10;
RzQ1 = [cos(q1) -sin(q1) 0 0;%rotation z on q1
        sin(q1) cos(q1) 0 0; 
        0 0 1 0; 
        0 0 0 1];
RyQ2 = [cos(q2) 0 sin(q2) 0;%rotation y on q2
        0 1 0 0;
        -sin(q2) 0 cos(q2) 0;
        0 0 0 1];
RxQ3 = [1 0 0 0;            %rotation x on q3
        0 cos(q3) -sin(q3) 0;
        0 sin(q3) cos(q3) 0; 
        0 0 0 1];
TzL1 = [1 0 0 0;            %translation z on L1
        0 1 0 0; 
        0 0 1 -L1; 
        0 0 0 1];
RxQ4 = [1 0 0 0;            %rotation x on q4
        0 cos(q4) -sin(q4) 0;
        0 sin(q4) cos(q4) 0; 
        0 0 0 1];
RyQ5 = [cos(q5) 0 sin(q5) 0;%rotation y on q5
        0 1 0 0; 
        -sin(q5) 0 cos(q5) 0; 
        0 0 0 1];
RxQ6 = [1 0 0 0;            %rotation x on q6
        0 cos(q6) -sin(q6) 0;
        0 sin(q6) cos(q6) 0; 
        0 0 0 1];
TzL2 = [1 0 0 0;            %translation z on L2
        0 1 0 0;
        0 0 1 -L2;
        0 0 0 1];
TzL3 = [1 0 0 0;            %translation z on L3
        0 1 0 0;
        0 0 1 -L3;
        0 0 0 1];
M = RyQ2*RzQ1*RxQ3*TzL1*RxQ4*TzL2*RyQ5*RxQ6*TzL3
end
