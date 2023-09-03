% pre-work
clc
close all
clear

%% Stuart Excel Sample

K = 1.1;
r = 0.06;
T = 3; % Maturity in year
F = 1; % Frequency per year
N = 8; % sample number

Type = 'Put'; % Put option

h = 1/F;
%% Price

ST = ones(N,F*T+1);
MCST = [1.09	1.08	1.34;
        1.16	1.26	1.54;
        1.22	1.07	1.03;
        0.93	0.97	0.92;
        1.11	1.56	1.52;
        0.76	0.77	0.90;
        0.92	0.84	1.01;
        0.88	1.22	1.34];
ST(:,2:end) = MCST;

% pre-allocate
EST = zeros(N,F*T); % T=1-3
Payoff = zeros(N,F*T); % T=1-3
Payoff(:,end) = max(K-ST(:,end-0),0); % T=3
Exercise = max(K-ST(:,2:end),0); % 1-3

%% Stopping Rule: EST and Payoff

for t = 1:F*T-1 % 1,2
    
    index = Exercise(:,end-t)>0;
    Y = Payoff(index,end-(t-1))*exp(-r*h); % PV at t=2
    X = [ones(sum(index),1) ST(index,end-t) ST(index,end-t).^2];
    c = X\Y;
    EST(index,end-t) = X*round(c,3); % round! delete if need
    Payoff(EST(:,end-t)>Exercise(:,end-t),end-t) = 0;
    Payoff(EST(:,end-t)<=Exercise(:,end-t),end-t) = Exercise(EST(:,end-t)<=Exercise(:,end-t),end-t);

end

% Stopping Rule

% pre-allocate
SR = zeros(N,F*T); % T=1-3

SR(Exercise(:,1)>EST(:,1),1) = 1 % first column

for t=2:F*T

    SR((sum(SR(:,1:t-1),2)==0)&(Exercise(:,t)>EST(:,t)),t) = 1 % 2:end column

end

%% PV Factors
PV = [];
for t = 1:F*T
    PV = [PV exp(-r*t)];
end
PV = repmat(PV,N,1);

%% PV Option Payoff

Option = Exercise.*SR.*PV
Price = sum(sum(Option))/N