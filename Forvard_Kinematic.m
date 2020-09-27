
q1 = 0;q2 = 0; q3 = 0; q4 =0; q5 = 0; q6 = 0;
%syms q1 q2 q3 q4 q5 q6 L1 L2 L3;
test_file = fopen('Text_File.txt');

while ~feof(test_file)
    tline = fgetl(test_file);
    tline = str2num(tline);
    M = Matrix(tline(1),tline(2),tline(3),tline(4),tline(5),tline(6));
end

% close the file
fclose(test_file);
% close the file
function M = Matrix(q1,q2,q3,q4,q5,q6)
L1 = 280; L2 =280; L3 = 105.5;
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
