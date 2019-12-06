function []=solution1(sig)
% sigȡֵΪ0��1��2���ֱ��Ӧ�����ź�
%0�Ƿ����źţ�1�������źţ�2�������ź�
if sig==0
    % Ƶ��Ϊ1Hz��ռ�ձ�Ϊ50%�����ڷ����ź�
    t=-1:0.001:1;ft=square(2*pi*t,50);
    subplot(1,2,1),plot(t-0.25,ft),grid on
    axis([-1,1,-1.5,1.5])
    title('���ڷ����ź�')
    n=-30:30;
    T=1;tau=0.5;
    w1=2*pi/T;
    x=n*tau/T;
    fn=tau/T*sinc(x);
    subplot(1,2,2);
    plot(n*w1,fn),grid on
    name1=strcat('\tau =',num2str(tau));
    name2=strcat(name1, ',T =');
    name=strcat(name2,num2str(T));
    title(name)
elseif sig==1
    L=128;
    f1=100;
    fs=400;
    t=0:1/fs:(1/fs)*(L-1);
    si=sin(2*pi*f1*t);
    f=fft(si,L);
    f=20*log(abs(f))/log(10);
    ft=0:(fs/L):fs/2;
    f=f(1:length(ft));
    subplot(1,2,1);plot(t,si);
    xlabel('ʱ�䣨s��');
    ylabel('���ȣ�v��');title('ʱ���źŲ���');%%%%%%
    subplot(1,2,2);plot(ft,f);
    xlabel('Ƶ�ʣ�hz��');
    ylabel('���ʣ�dbw��');title('�ź�Ƶ��ͼ');
elseif sig==2
    %�����ź�y=cos(2��*f*t)��
    %�ź�Ƶ��Ϊf=10Hz��
    %ʱ��:1s
    %������Ϊfs=100Hz��
    f=10;
    fs=100;
    T=1;
    n=round(T*fs);%���������
    t=linspace(0,T,n);
    y=cos(2*pi*f/fs*[0:n-1]);
    subplot(1,2,1)
    plot(t,y);
    title('�����ź�ʱ��');
    xlabel('t/s');
    ylabel('����');
    fftshift_y=fftshift(fft(y));
    f=linspace(-fs/2,fs/2,n);
    subplot(1,2,2)
    plot(f,abs(fftshift_y));
    title('�����ź�Ƶ��');
    xlabel('f/Hz');
    ylabel('����');
end