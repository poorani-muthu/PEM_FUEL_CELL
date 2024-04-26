function f=activation_potential(eta,Po2,T,iFC)
    Co2=Po2/(5.08*10^(6)*exp(-498/T));
    f=-(eta(1)+eta(2)*T+eta(3)*T*log(Co2)+eta(4)*T*log(iFC));
end
