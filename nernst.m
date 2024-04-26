function f= nernst(T,Ph2,Po2,Ph2o)
    f=1.229-0.85*10^(-3)*(T-298.15)+4.3085*10^(-5)*T*log((1/Ph2o)*Ph2*(Po2^0.5));
end
