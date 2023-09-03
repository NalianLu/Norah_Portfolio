function [ST] = MCwJump(Info)

% Stock Input
alpha = Info(1);
sigma = Info(2);
delta = Info(3);
S0 = Info(4);
% Jump Input
lambda = Info(5);
alphaJ = Info(6);
SigmaJ = Info(7);
% Option Input
T = Info(8);
% Simulation Input
N = Info(9);
P = Info(10);
E = Info(11);

h = T/N;

% pre-allocate
ST = repmat(S0,P,1);

% sumulate
for n =1:N
    if E==1 % Stratified Sampling
       z = zeros(P,1); % pre-allocate
       u = rand(P,1);
       for p = 1:P
           temp = u(p)/P + (p-1)/P;
           z(p) = norminv(temp);
       end
    else
        z = norminv(rand(P,1));
    end

    % S(t+h) without jump
    S=ST(:,n).*exp((alpha-delta-0.5*sigma*sigma).*h+sigma*sqrt(h)*z);

    % Simulate Jump
    J = [poissrnd(lambda,[1 P])];
    sum_w =[];
    for j=J
        sum_w =[sum_w; sum(randn(j,1))];
    end
    J=J';
    
    %S(t+h) with jumps(naiive)
    ST = [ST S.*exp(J.*(alphaJ-0.5*SigmaJ*SigmaJ)+SigmaJ.*sum_w)];

end