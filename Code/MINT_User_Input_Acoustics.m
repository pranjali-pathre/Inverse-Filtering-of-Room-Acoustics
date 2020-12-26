%Number of inputs   
ni = 2;

durations = zeros(1,ni);
 
prompt = 'Input the duration of all input vectors:';
% User input the duration values of each impulse response 
for nn = 1:ni
    durations(nn) = input(prompt);
end 
 
L = sum(durations')-ni-1;
value = zeros(sum(durations')-ni,ni);

disp('Input each impulse response starting with n = 0');
% User input values of each impulse response starting with n = 0
for nn = 1:ni
    prompt = ' ';
    for nn1 = 1:durations(nn)
        value(nn1,nn) = input(prompt);
    end 
end   

% L = sum(durations')-ni-1;
G = value(:,1);
 
% Generating matrix G by circularly shifting the the columns of matrix
% values
for nn = 1:ni 
    for nn1 = 0:L-durations(nn)+1
        if nn ~= 1 || nn1 ~= 0
            G = [G, circshift(value(:,nn),nn1)]; 
        end 
    end 
end

% Finding the inverse of matrix G
Ginv = inv(G);
 
D = [1,zeros(1,L)]';
 
% Calculating H (the inverse to be realised) satisfying H = G*I. 

H = Ginv*D;
count = 1;
for nn = 1:ni
    hi = H(count:L+count-durations(nn)+1);
    count = L-durations(nn)+3;
    disp("The exact inverse for the acoustic filter response h_" + nn + " is:");
    disp(hi);
end
