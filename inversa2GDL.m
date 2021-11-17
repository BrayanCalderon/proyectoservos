function [q1,q2] = inversa2GDL(x,y,L1,L2,codo)
%INVERSA2GDL Summary of this function goes here
%   Detailed explanation goes here
D = (x^2+y^2-L1^2-L2^2)/(2*L1*L2);
if codo ==0
    q2 = atan2(+sqrt(1-D^2),D);
else
    q2 = atan2(-sqrt(1-D^2),D);
end
q1 = atan2(y,x)-atan2(L2*sin(q2),L1+L2*cos(q2));
end

