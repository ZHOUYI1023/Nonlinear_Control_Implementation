clear
options = simset('SrcWorkspace','current');
sim('as2',[],options)
figure(1)
plot(ym0,'r','LineWidth',2)
hold on
plot(y0,'b--','LineWidth',2)
xlabel('Time/ s')
ylabel('Amplitude')
legend('ym','y')
% figure(2)
% plot(e0,'r','LineWidth',2)
% xlabel('Time/ s')
% ylabel('Amplitude')
g1=10;
g2=10;
g3=10;
g4=10;
% run('a2messy.mdl')
options = simset('SrcWorkspace','current');
sim('a2messy',[],options)
figure(3)
subplot(2,1,1)
plot(ym,'r','LineWidth',2)
hold on
plot(y,'b--','LineWidth',2)
xlabel('Time/ s')
ylabel('Amplitude')
legend('ym','y')
title('Tracking Performance')
figure(3)
subplot(2,1,2)
plot(e1,'r','LineWidth',2)
xlabel('Time/ s')
ylabel('Amplitude')
title('Tracking Error')
g1=10;
g2=10;
g3=10;
g4=10;
options = simset('SrcWorkspace','current');
sim('a2messy2',[],options)
figure(4)
subplot(2,1,1)
plot(ym2,'r','LineWidth',2)
hold on
plot(y2,'b--','LineWidth',2)
axis([0,100,-1.5,1.5])
xlabel('Time/ s')
ylabel('Amplitude')
legend('ym','y')
title('Tracking Performance')
figure(4)
subplot(2,1,2)
plot(e,'r')
xlabel('Time/ s')
ylabel('Amplitude')
title('Tracking Error')
% figure(7)
% plot(u1,'r','LineWidth',2)
% hold on
% xlabel('Time/ s')
% ylabel('Amplitude')
% plot(u2,'b--','LineWidth',2)
figure(8)
subplot(2,1,1)
plot(2-theta11,'LineWidth',2)
hold on
plot(1.5-theta12,'LineWidth',2)
plot(-1-theta13,'LineWidth',2)
plot(0.5-theta14,'LineWidth',2)
xlabel('Time/ s')
ylabel('Amplitude')
title('Error of the estimated parameters when r=sin(t)')
legend('error in theta1','error in theta2','error in theta3','error in theta4')
figure(8)
subplot(2,1,2)
plot(2-theta1)
hold on
plot(1.5-theta2)
plot(-1-theta3)
plot(0.5-theta4)
xlabel('Time/ s')
ylabel('Amplitude')
title('Error of the estimated parameters when r=sin(t)+sin(3t)')
legend('error in theta1','error in theta2','error in theta3','error in theta4')