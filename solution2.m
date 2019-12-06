function [x]=solution2(tau, T)
% t为周期，tau为脉冲宽度
% t,tau均为int类型，t范围为1到20，tau范围为1到10
n=-30:30;
w1=2*pi/T;
x=n*tau/T;
fn=tau/T*sinc(x);
subplot(311);
stem(n*w1,fn),grid on
name1=strcat('\tau = ',num2str(tau));
name2=strcat(name1, ',T = ');
name=strcat(name2,num2str(T));
title(name)
end