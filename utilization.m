function f=utilization(Power,A,Vfc,ifc,i,N)
    I = ifc==i;
    V=Vfc(I);
    P=Power(I);
    f(1)= 2.59e-6*(N*P*A/V);
    f(2)= 2*2.59e-6*(N*P*A/V);
    f(3)= 2*2.59e-6*(N*P*A/V);
end