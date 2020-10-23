#include<stdio.h>
#include<conio.h>

void main()
{
int q,b,t,r,n,r1,r2,t1=0,t2=1,temp;
clrscr();
printf("Enter the set:");
scanf("%d",&n);
printf("Enter a value for its Multiplicative Inverse:");
scanf("%d",&b);
r1=n;
r2=b;
temp=b;
while(r2>0)
{q=r1/r2;
r=r1-(q*r2);
r1=r2;
r2=r;
t=t1-(q*t2);
t1=t2;
t2=t;
}

if(t1<0)
{t1=t1+n;
}

if(r1==1)
{b=t1;
printf("Multiplicative inverse of %d:%d",temp,b);
}
else
printf("Multiplicative Inverse doesn't exists");

getch();
}




