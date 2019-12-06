function [x]=solution3(n_max)
% 频率为1Hz，占空比为50%的周期方波信号
% 输入数值，画出图像
% n_max范围是1到47  int类型
t=-1:0.001:1;ft=square(0*pi*t,50);
subplot(3,2,1),plot(t,ft),grid on
axis([-1,1,-1.5,1.5])
title('周期方波信号');
str2double(n_max)
n=1:2:n_max;
b=4./(pi*n);
x=b*sin(2*pi*n'*t);
subplot(3,2,2),plot(t,x),grid on
axis([-1,1,-1.5,1.5])
title(['最大谐波次数=',num2str(n_max)])