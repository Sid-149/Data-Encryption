clc;
clear all;
sym=['a' 'b' 'c' 'd' 'e']
pr=[.4 .2 .15 .15 .1]
msg='edca'
//msg='ccaabb';
[x,y]=size(sym)         // x=rows ,y=columns
z=length(msg)
l(1)=0                         //l=lower interval of 1st iteration
u(1)=1                       //u=upper interval of 1st iteration
F=zeros(1,y+1)         //CDF

for n=2:y+1
    F(n)=pr(n-1)+F(n-1)
end

for j=1:z
            msgi=part(msg,j)
            
               for m=2:y+1
                  if msgi==sym(m-1)
                  i=m;
                    end
            
        
        end

l(j+1)=l(j)+((u(j)-l(j))*F(i-1));
u(j+1)=l(j)+((u(j)-l(j))*F(i));
t=(l(j+1)+u(j+1))/2;
end

printf('TAG=%f',t);

