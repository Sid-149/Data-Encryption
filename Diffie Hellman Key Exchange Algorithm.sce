clc
clear
p=input('Enter a prime no.:')
g=input('Enter another prime no.:')
x=input('Public key of sender:')
y=input('Public key of reciever:')
R1=modulo((g^x),(p))
R2=modulo((g^y),(p))
K1=modulo((R2^x),(p))
K2=modulo((R1^y),(p))
if (K1==K2) then
    K=K1
    disp('Shared Secret Key:')
    disp(K)
else disp('Calculation is wrong!!!!!!' )
end
