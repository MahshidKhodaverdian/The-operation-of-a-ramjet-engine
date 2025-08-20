%%
%ramjet 3-23
clc;clear;close all
f=0.02 ;
gamma=1.4 ;
Ta=216.6 ;
R=287 ;
Tmax=2500:50:3000 ;
M1=1 ;
M2=2 ;
M3=3 ;
M4=4 ;
ST1=M1*sqrt(gamma*R*Ta)*((1+f).*sqrt(Tmax./Ta).*((1+((gamma-1)/2)*M1^2)^(-1/2))-1);
ST2=M2*sqrt(gamma*R*Ta)*((1+f).*sqrt(Tmax./Ta).*((1+((gamma-1)/2)*M2^2)^(-1/2))-1);
ST3=M3*sqrt(gamma*R*Ta)*((1+f).*sqrt(Tmax./Ta).*((1+((gamma-1)/2)*M3^2)^(-1/2))-1);
ST4=M4*sqrt(gamma*R*Ta)*((1+f).*sqrt(Tmax./Ta).*((1+((gamma-1)/2)*M4^2)^(-1/2))-1);

plot(Tmax,ST1) 
hold on 
plot(Tmax,ST2) 
plot(Tmax,ST3) 
plot(Tmax,ST4) 
grid on
xlabel('Tmax')
ylabel('Specific Thrust')
%%
%ramjet 3-27
clc;clear;close all
f=0.02 ;
gamma=1.4 ;
Ta=216.6 ;
R=287 ;
Tmax1=2500 ;
Tmax2=2750 ;
Tmax3=2900 ;
Tmax4=3000 ;
M=1:0.5:4 ;
m=1+((gamma-1)/2).*M.^2;
ue1=sqrt(2*gamma*R*Tmax1.*(m-1)./((gamma-1).*m));
u=M.*sqrt(gamma*R*Ta);
np1=(2*u.*((1+f).*ue1-u))./((1+f).*ue1.^2-u.^2);

ue2=sqrt(2*gamma*R*Tmax2.*(m-1)./((gamma-1).*m));
np2=(2*u.*((1+f).*ue2-u))./((1+f).*ue2.^2-u.^2);

ue3=sqrt(2*gamma*R*Tmax3.*(m-1)./((gamma-1).*m));
np3=(2*u.*((1+f).*ue3-u))./((1+f).*ue3.^2-u.^2);

ue4=sqrt(2*gamma*R*Tmax4.*(m-1)./((gamma-1).*m));
np4=(2*u.*((1+f).*ue4-u))./((1+f).*ue4.^2-u.^2);

plot(M,np1)
hold on
plot(M,np2)
plot(M,np3)
plot(M,np4)

xlim([1 4])
xlabel('Mach')
ylabel('Etta p')
%%
%ramjet 3-28
clc;clear;close all
f=0.02 ;
gamma=1.4 ;
Ta=216.6 ;
R=287 ;
Tmax=2500:50:3000 ;
M1=1 ;
M2=2 ;
M3=3 ;
M4=4 ;
m1=1+((gamma-1)/2)*M1^2;
ue1=sqrt(2*gamma.*R*Tmax.*(m1-1)./((gamma-1).*m1));
u1=M1.*sqrt(gamma*R*Ta);
np1=2./(1+(ue1./u1)) ;

m2=1+((gamma-1)/2)*M2^2;
ue2=sqrt(2*gamma.*R.*Tmax.*(m2-1)./((gamma-1).*m2));
u2=M2.*sqrt(gamma*R*Ta);
np2=2./(1+(ue2./u2)) ;

m3=1+((gamma-1)/2)*M3^2;
ue3=sqrt(2*gamma.*R.*Tmax.*(m3-1)./((gamma-1).*m3));
u3=M3.*sqrt(gamma*R*Ta);
np3=2./(1+(ue3./u3)) ;

m4=1+((gamma-1)/2)*M4^2;
ue4=sqrt(2*gamma.*R.*Tmax.*(m4-1)./((gamma-1).*m4));
u4=M4.*sqrt(gamma*R*Ta);
np4=2./(1+(ue4./u4)) ;

plot(Tmax,np1)
hold on
plot(Tmax,np2)
plot(Tmax,np3)
plot(Tmax,np4)
xlabel('Tmax')
ylabel('Etta p')