% x= [1,2,3,4,5,6];
load ("q2_1.mat")
M =7;
y = zeros(M*length(x),1);
y(1)= 0;
for nn = 2:length(y)
    if mod(nn, M) == 0
        y(nn) = x(nn/M);
    end
end
figure(1)
stem(y);
hold on;
for nn = 2:length(y)
    if mod(nn, M) ~= 0
        prev_index = floor((nn) / M) * M ;
        next_index = ceil((nn) / M) * M ;
        if prev_index < 1
            prev_index = 1;
        end
        if next_index > length(y)
            next_index = length(y);
        end
        y(nn) = y(prev_index) + (y(next_index) - y(prev_index)) * (mod(nn, M) / M);
    end
end
figure(2)
stem(y);
hold on;
hold off;