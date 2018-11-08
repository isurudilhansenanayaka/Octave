t=0:.001:1;
h=1.5;  
g=9.8;  
v=4;  
Q=pi*45/180;
 
 
x=v*cos(Q)*t
y=h+v*sin(Q)*t-g*t.^2/2
v*sin(Q)==0;
t=time
plot(x,y)
ylabel('Ball Height (m)');
xlabel('Distance (m)');
title('Ball Trajectory')
hold on
x2=0:0.0001:3;
y2=0;
line(x2,y2)
 
clc
diary throwBall.m
h=1.5; %meters
g=9.8; %m/s^2
v=4; %m/s
theta=45; %degrees
t=linspace(0,1,1000);
x=v*cos(theta/180*pi)*t;
y=h+v*sin(theta/180*pi)*t-1/2*g*t.^2;
ind=find(y<0,1,'first');
distance=x(ind);
figure
plot(x,y)
xlabel('Distance (m)');
ylabel('Ball Height (m)');
title('Ball Trajectory');
hold on
plot([0 max(x)],[0 0],'k--'); 
diary
h=1.5; %meters
g=9.8; %m/s^2
v=4; %m/s
theta=45; %degrees
t=linspace(0,1,1000);
x=v*cos(theta/180*pi)*t;
y=h+v*sin(theta/180*pi)*t-1/2*g*t.^2;
ind=find(y<0,1,'first');
distance=x(ind);

figure
plot(x,y)
xlabel('Distance (m)');
ylabel('Ball Height (m)');
title('Ball Trajectory');
hold on
plot([0 max(x)],[0 0],'k--');

diary off
