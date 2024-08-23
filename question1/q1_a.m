load ("q1.mat")
N = 100;
xt = ones(120,1); % xt is a 4x1 vector
F = zeros(120,1); % F is a 20x1 vector

for kk = 1:120
    for nn = kk-N+1:kk
        if(nn > 0 && nn <= length(x)) % Check if nn is within bounds of xt
            F(kk) = F(kk) + x(nn);
        end
    end
    F(kk) = F(kk) / N;
end
stem(F);