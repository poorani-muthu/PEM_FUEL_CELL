clear all
clc

N=100;
T=343;
A=30*30;
l=117*10^(-4);
Ph2=101.3;
Po2=101.3;
Ph2o=101.3;
Rc=0.0003;
B=0.016;
eta=[];
eta(1)=-0.948;
Ch2=Ph2/(5.08*10^(6)*exp(-498/T));
eta(2)=0.00286+0.0002*log(A)+ 4.38*(10^(-5))*log(Ch2);
eta(3)=7.6*10^(-5);
eta(4)=-1.93*10^(-4);
phi=23;
iL=1500*10^(-3);
a=0.005;
b=1.5;

Cell_voltage= fc(T,A,l,Ph2,Po2,Ph2o,Rc,B,eta,phi,iL,a,b,N);

%considering 70% efficiency

Cell_voltage=0.7*Cell_voltage;

subplot(1,2,1)
ifc=0:a:b;
plot(ifc,Cell_voltage)
xlim([0 1.6])
ylim([70 150])
xlabel('stack current A/cm^2')
ylabel('stack voltage V')
title('IV-curve')

subplot(1,2,2)

Power=(Cell_voltage.*ifc);
P=max(Power);
plot(ifc,Power)
xlim([0 1.6])
ylim([0 1.5*P])
xlabel('stack current A/cm^2')
ylabel('stack Power W')
title('Power Density Curve')

j=Power==P;
i=ifc(j);
u=utilization(Power,A,Cell_voltage,ifc,i,N);

disp("Fuel and oxygen utilization at 70% efficiency")
disp('Uo2 in mol/s')
disp(u(1))
disp('Uh2 in mol/s')
disp(u(2))


required_power_output=1000;
u_=utilization(Power,A,Cell_voltage,ifc,i,N);

disp("To attain a Power Output of 1000 at 70% efficiency")

disp('O2 required in mol/hr')
disp(u_(1)*1000/3600*P)
disp('H2 required in mol/hr')
disp(u_(2)*1000/3600*P)