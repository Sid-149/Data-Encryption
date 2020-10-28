#include<stdio.h>
#include<conio.h>
#include<math.h>
void main()
{
int e,n1,r1,r2,r,q,t1,t2,t,n,p,q1,f,d;
int m,c,m2;
double c1,m1;
clrscr();
t1=0;
t2=1;
p=3;
q1=11;
e=3;
m=5;
clrscr();
n=p*q1;
f=(p-1)*(q1-1);
printf("Enter the set:");
scanf("%d",&n1);
printf("Enter a number for Multiplicative Inverse:");
scanf("%d",&r2);
r1=f;
r2=e;
while(r2>0)
{
q=r1/r2;
r=r1-q*r2;
r1=r2;
r2=r;
t=t1-q*t2;
t1=t2;
t2=t;
}
if(t1<0)
t1=t1+n1;
if(r1==1)
{
printf("Multiplicative Inverse:%d",t1);
}
else
printf("Multipicative Inverse does not Exist");
d=t1;
c1=pow(m,e);
c=fmod(c1,n);
printf("\nCipher Text:%d",c);
m1=pow(c,d);
m2=fmod(m1,n);
printf("\nMessage:%d",m2);
getch();
}
