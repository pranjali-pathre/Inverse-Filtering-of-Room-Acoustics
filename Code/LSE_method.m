n = 2;
m = 2;

L = m+n-1; 

%g1 = floor(rand(m+1,1)*10);

disp("The room acoustic filter response g[n] is: ");
disp(newline + g1);

g11 = [g1', zeros(1,m)]';

G1 = g11;

for nn=1:m
    G1 = [G1, circshift(g11,nn)];
end

G = (G1')*G1;

D = [1,zeros(1,L-1)]';

Ginv = inv(G);

H = Ginv*D;

disp("The exact inverse for acoustic filter responses are respectively:");
h1 = H(1:n)
h2 = H(n+1:n+m-1)

