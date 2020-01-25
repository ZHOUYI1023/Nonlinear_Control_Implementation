clear
clc
f=@(t,X)[X(2)+X(1)^2;X(3)+exp(X(2))*X(1);X(1)^2*X(3)^3];
y1 = linspace(-100,100,20);
y2 = linspace(230,330,20);
y3 = linspace(100,200,20);
[x,y,z] = meshgrid(y1,y2,y3);
u = zeros(size(x));
v = zeros(size(x));
w = zeros(size(x));
t=0;
for i = 1:numel(x)
    Yprime = f(t,[x(i); y(i);z(i)]);
    u(i) = Yprime(1);
    v(i) = Yprime(2);
    w(i) = Yprime(2);
end
figure(1)
quiver(x,y,u,v,'r'); figure(gcf)
xlabel('x_1')
ylabel('x_2')
hold on
for y20 = [0 0.5 1 1.5 2 2.5]
    [ts,ys] = ode45(f,[0,50],[0;y20;0]);
    plot(ys(:,1),ys(:,2))
    plot(ys(1,1),ys(1,2),'bo') % starting point
    plot(ys(end,1),ys(end,2),'ks') % ending point
end
figure(2)
quiver(x,z,u,w,'r'); figure(gcf)
xlabel('x_1')
ylabel('x_3')
figure(3)
quiver(y,z,v,w,'r'); figure(gcf)
xlabel('x_2')
ylabel('x_3')