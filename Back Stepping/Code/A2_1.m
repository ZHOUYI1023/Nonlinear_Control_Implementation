num=[1 3];
den=[1 3 2];
G=tf(num,den);
t=[0:0.1:10];
r=sin(t);
[ym,t]=lsim(G,r,t)
u=0;
y=0;
for t=0:0.1:10
u=input_mrac(u,y,r)
y=step(G*u)