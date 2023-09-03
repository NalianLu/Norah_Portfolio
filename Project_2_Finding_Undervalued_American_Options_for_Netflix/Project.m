%pre-work
clc
close all
clear

%% load data

x = readmatrix('MNST.csv');
x = x(:,6); % adj.price

S0 = x(end);

%% Stock Analysis

J = 0.03; % jump threshold
[alpha, sigma, alphaj, sigmaj,lambda] = stock_analysis(x,J);

% annulize
alpha = alpha*252;
sigma = sigma*sqrt(252);

[alpha, sigma, lambda , alphaj, sigmaj]

%% MC Simulation

T = 1; % option maturity in year
N = 252; % daily review
P = 1000; % number of path
E = 1; % set E=1 if you want to use stratified sampling

Info = [alpha, sigma, 0, S0, lambda , alphaj, sigmaj, T, N, P, E]; % 0 dividend w/ Jump
%Info = [alpha, sigma, 0, S0, 0 , 0, 0, T, N, P, E]; % 0 dividend w/o Jump

ST = MCwJump(Info);

%% Option Price

K = 135;
r = 0.0465; % use 1 Year Treasury Rate as risk-free rate 
Type = 1; % 0 for 'Call'; 1 for 'Put'


Info = [K, r, T, N, Type, P];
Price = AmericanOptionPrice(Info, ST)

