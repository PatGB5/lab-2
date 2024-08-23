load ("q2_2.mat")
M =3;
y = zeros(M*length(x),1);
y(1)= 0;
for nn = 2:length(y)
    if mod(nn, M) == 0
        y(nn) = x(nn/M);
    else
        y(nn)=y(nn-1);
    end
end
figure(1)
stem(y);