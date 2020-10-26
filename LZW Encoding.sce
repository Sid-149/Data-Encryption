clc;
clear all;
datain='wabba.wabba.wabba.woo.woo.woo.woo$'
lda=length(datain)
dict=['w','a','b','o','.']
ldi=size(dict,'c')
for i=1:ldi
    dictnew(i)={dict(i)};
end
for i=1:lda
    datasep(i)=part(datain,i)
end
p=datasep(1)//first symbol
s=p//current symbol
k=1;
j=1;
i=1;
m=0;
while datasep(i)~='$'
    c=datasep(i+1)
    if c~=$ then
        comb=s+c
        if strcmp(dict,comb)~=0 then
            dict(j+ldi)=s+c
            check=strcmp(dict,s)
            for l=1:length(check)
                if check(l)==0 then
                    tx(k)=l
                    k=k+1
                    break
                end
            end
            s=c;
            j=j+1;
            i=i+1;
            m=m+1;
        else
            s=s+c;
            i=i+1;
           end
    else
        check=strcmp(dict,s);
        for l=1:length(check)
                if check(l)==0 then
                    tx(k)=l;
                    k=k+1;
                    tx(k)=0
                end
        end
        break;    
    end
end
disp(dict);
disp(tx);
