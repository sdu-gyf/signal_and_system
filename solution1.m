function []=solution1(sig)
% sig取值为0，1，2；分别对应三个信号
%0是方波信号，1是正弦信号，2是余弦信号
if sig==0
    % 频率为1Hz，占空比为50%的周期方波信号
    t=-1:0.001:1;ft=square(2*pi*t,50);
    subplot(1,2,1),plot(t-0.25,ft),grid on
    axis([-1,1,-1.5,1.5])
    title('周期方波信号')
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
    xlabel('时间（s）');
    ylabel('幅度（v）');title('时域信号波形');%%%%%%
    subplot(1,2,2);plot(ft,f);
    xlabel('频率（hz）');
    ylabel('功率（dbw）');title('信号频谱图');
elseif sig==2
    %余弦信号y=cos(2π*f*t)；
    %信号频率为f=10Hz；
    %时宽:1s
    %采样率为fs=100Hz；
    f=10;
    fs=100;
    T=1;
    n=round(T*fs);%采样点个数
    t=linspace(0,T,n);
    y=cos(2*pi*f/fs*[0:n-1]);
    subplot(1,2,1)
    plot(t,y);
    title('余弦信号时域');
    xlabel('t/s');
    ylabel('幅度');
    fftshift_y=fftshift(fft(y));
    f=linspace(-fs/2,fs/2,n);
    subplot(1,2,2)
    plot(f,abs(fftshift_y));
    title('余弦信号频谱');
    xlabel('f/Hz');
    ylabel('幅度');
end