function [x]=solution3(n_max)
% Ƶ��Ϊ1Hz��ռ�ձ�Ϊ50%�����ڷ����ź�
% ������ֵ������ͼ��
% n_max��Χ��1��47  int����
t=-1:0.001:1;ft=square(0*pi*t,50);
subplot(3,2,1),plot(t,ft),grid on
axis([-1,1,-1.5,1.5])
title('���ڷ����ź�');
str2double(n_max)
n=1:2:n_max;
b=4./(pi*n);
x=b*sin(2*pi*n'*t);
subplot(3,2,2),plot(t,x),grid on
axis([-1,1,-1.5,1.5])
title(['���г������=',num2str(n_max)])