function [x]=solution2(tau, T)
% tΪ���ڣ�tauΪ������
% t,tau��Ϊint���ͣ�t��ΧΪ1��20��tau��ΧΪ1��10
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