% Write a MATLAB program to find the DTFT of a given sequence.
x=input('Enter the sequence : ');
N=length(x);
n=0:N-1;
K=0:N-1;
wn=exp(-j*2*pi/N);
nK=n'*K;
wNnK=wn.^nK;
df=x*wNnK;
subplot(3,1,1);
stem(x,abs(df));
title('DTFT');
xlabel('K');
ylabel('Magnitude');
subplot(3,1,2);
stem(x,angle(df));
title('DTFT');
xlabel('K');
ylabel('phase');
disp(df)















