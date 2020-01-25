clear
clc
global c1 c2 c3
id=0;
for c1=1:3:10
    for c2=1:1
        for c3=1:1
            % c1=2; 
% c2=1; 
% c1=1;
tspan=[0:0.01:5];
x_initial=[1,1,1];
[T,x]=ode45(@assignment_1,tspan,x_initial);
%[T,x]=ode15s(@assignment_1,tspan,x_initial);
figure(1)

hold on
subplot(3,3,1+3*id)
hold on
% plot(T,x(:,1),'r',T,x(:,2),'b',T,x(:,3),'c')
plot(T,x(:,1),'LineWidth',2)
%%
dx(:,1)=x(:,2)+x(:,1).^2;
dx(:,2)=x(:,3)+exp(x(:,2)).*x(:,1);
z(:,1)=x(:,1);
a(:,1)=-c1*z(:,1)-x(:,1).^2;
da1(:,1)=-c1-2*x(:,1);
dda1(:,1)=-2;
z(:,2)=x(:,2)-a(:,1);
a(:,2)=-z(:,1)-c2*z(:,2)-exp(x(:,2)).*x(:,1)+da1(:).*(x(:,2)+x(:,1).^2);
da2(:,1)=-1+c2*da1(:,1)-exp(x(:,2))+2*da1(:,1).*x(:,1)+dda1(:,1).*(x(:,2)+x(:,1).^2);
da2(:,2)=-c2-exp(x(:,2)).*x(:,1)+da1(:,1);
z(:,3)=x(:,3)-a(:,2);
u(:,1)=-z(:,2)-c3*z(:,3)-x(:,1).^2.*x(:,3).^3+...
    da2(:,1).*(x(:,2)+x(:,1).^2)+...
    da2(:,2).*(x(:,3)+exp(x(:,2)).*x(:,1));
dx(:,3)=u(:,1)+x(:,1).^2.*x(:,3).^3;
% %%
% figure(2)
% hold on
% plot(T,x(:,2),'r',T,a(:,1),'b')
% figure(3)
% hold on
% plot(T,x(:,3),'r',T,a(:,2),'b')
 figure(1)
 subplot(3,3,2+3*id)
hold on
plot(T,x(:,2),'LineWidth',2)
% figure(2)
% hold on
% plot(T,z(:,1),'r',T,z(:,2),'b',T,z(:,3),'c')
%%
V(:,1)=0.5*z(:,1).^2+0.5*z(:,2).^2+0.5*z(:,3).^2;
dV(:,1)=-c1*z(:,1).^2-c2*z(:,2).^2-c3*z(:,3).^2;
% figure(1)
subplot(3,3,3+3*id)
hold on
plot(T,x(:,3),'LineWidth',2)
% plot(T,a(:,1),'r',T,a(:,2),'b')
% plot(T,V,'r',T,dV,'b')
% figure(6)
% hold on
% %subplot(3,1,id)
% plot(T,u,'-.','LineWidth',2)
% mx1(c3)=max(abs(x(:,1)));
% mx2(c3)=max(abs(x(:,2)));
% mx3(c3)=max(abs(x(:,3)));
% ma1(c3)=max(abs(a(:,1)));
% ma2(c3)=max(abs(a(:,2)));
% for i=1:length(x(:,1))
%     if(x(i,3)<0.01 && x(i,3)<0.01 && x(i,3)<0.01 )
%         st(c3)=T(i);
%         break
%     end
% end
        end
    end
end
% figure(2)
% subplot(3,1,3)
% hold on
% plot(mx1,'ro-')
% plot(mx2,'bo-')
% plot(mx3,'go-')
% % plot(ma1,'o-')
% % plot(ma2,'o-')
% plot(st,'co-')
