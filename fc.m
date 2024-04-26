function Vfc=fc(T,A,l,Ph2,Po2,Ph2o,Rc,B,eta,phi,iL,a,b,N)

    nernst_p=nernst(T,Ph2,Po2,Ph2o);
    i=1;
    for iFC=0:a:b
        Vact=activation_potential(eta,Po2,T,iFC);
        Vohm=ohmic_loss(iFC,T,phi,A,l,Rc);
        Vconc=conc_loss(B,iFC,iL);
        Vfc(i)= N*(nernst_p-Vact-Vohm-Vconc);
        i=i+1;
    end
end