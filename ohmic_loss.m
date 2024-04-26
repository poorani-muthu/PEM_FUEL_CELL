function f= ohmic_loss(iFC,T,phi,A,l,Rc)
    a=iFC/A;
    rho_neumerator= 181.6*(1+0.03*a+0.062*((T/303)^2)*(a^2.5));
    rho_denominator= (phi-0.634-3*a)*exp((4.18/T)*(T-303));
    rho=rho_neumerator/rho_denominator;
    Rm= (rho*l)/A;
    f=iFC*(Rm+Rc);
end