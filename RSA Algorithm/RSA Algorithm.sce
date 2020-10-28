clc;
clear all;
p=input('ENTER first PRIME NUMBER ');
q=input('ENTER second PRIME NUMBER ');
n=p*q;
phi=(p-1)*(q-1);
printf('phi(n) is %d',phi);
e=input('\n select value of e between 1 and phi: ');
for i=1:phi
    x=modulo((i*e),phi);
    if(x==1)
        d=i;
        break;
    end 
end

printf('\n private key is =%d',d);
printf('\n public key is (e,n)=(%d,%d)',e,n);
//encryption
printf('\n cipher text is =%d',c);

//decryption
md=1;
for i=1:d
md=modulo((md*c),n);
end
printf('\n decrypted message is =%d',md);