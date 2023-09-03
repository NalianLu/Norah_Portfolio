function [Price] = AmericanOptionPrice(Info, x)

% Input
K = Info(1);
r = Info(2);
T = Info(3);
N = Info(4);
Type = Info(5);
P = Info(6);
ST = x;

h = T/N;

% pre-allocate
EST = zeros(P,N);
Payoff = zeros(P,N);

if Type==1 % Put option
    Payoff(:,end) = max(K-ST(:,end),0); % T=end
    Exercise = max(K-ST(:,2:end),0);
elseif Type==0 % Call option
    Payoff(:,end) = max(ST(:,end)-K,0); % T=end
    Exercise = max(ST(:,2:end)-K,0);
end

% Stopping Rule 1) EST and Payoff
for t = 1:N-1
    index = Exercise(:,end-t)>0;
    Y = Payoff(index,end-(t-1))*exp(-r*h); % PV
    X = [ones(sum(index),1) ST(index,end-t) ST(index,end-t).^2];
    c = X\Y; % coefficient
    EST(index,end-t) = X*c;
end

% Stopping Rule 2) SR Matrix
SR = zeros(P,N); % pre-allocate
SR(Exercise(:,1)>EST(:,1),1) = 1; % first column
for t=2:N
    SR((sum(SR(:,1:t-1),2)==0)&(Exercise(:,t)>EST(:,t)),t) = 1;
end

% PV Factors
PV = [];
for t = 1:N
    PV = [PV exp(-r*t)];
end
PV = repmat(PV,P,1);

% PV Option Payoff
Option = Exercise.*SR.*PV;
Price = sum(sum(Option))/P;