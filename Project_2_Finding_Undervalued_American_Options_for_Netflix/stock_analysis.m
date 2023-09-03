function [alpha, sigma, alphaj, sigmaj,lambda]= stock_analysis(x,J)

T = length(x);

% calculate log return
ret = zeros(1,T-1); % pre-allocate
for i = 1:T-1
    ret(i) =  log(x(i+1)/x(i));
end

alpha = mean(ret);
sigma = std(ret);

j_set = [];
for i = 1:T-1
    if alpha > 0
        if ret(i)>J
            j_set = [j_set, ret(i)];
        end
    end
    if alpha < 0 
        if ret(i)<-J
            j_set = [j_set, ret(i)];
        end
    end
end

lambda = poissfit(abs(j_set)); % estimate lambda using MLE
alphaj = mean(j_set);
sigmaj = std(j_set);
