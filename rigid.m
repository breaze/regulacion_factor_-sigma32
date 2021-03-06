%y1 s32gen
%y2 mRNAs32
%y3 s32
%y4 ftshgen
%y5 ftsh
%y6 jcomgen
%y7 jcom
%y8 jcom-s32
%y9 e-s32
function dy = rigid(t,y)
global k1 k2 k3 k4 k5 k6 k7 k8 k9 k10 k11 k12 k13
dy = zeros(9,1); % a column vector
dy(1) = -k1*y(1)
dy(2) = k1*y(1)-k2*y(2)-k3*y(2);
dy(3) = k3*y(2)+k5*y(9)+k8*y(9)*y(6)-k4*y(3)+k11*y(8)-k10*y(3)*y(7) +k6*y(4)*y(9)-k12*y(8)*y(5);
dy(4) = -k6*y(4)*y(9)
dy(5) = k6*y(9)*y(4)-k7*y(5)-k12*y(5)*y(7);
dy(6) = -k8*y(6)*y(9)
dy(7) = k11*y(8)+k8*y(9)*y(6)+k12*y(5)*y(8)- k10*y(7)*y(3) - k9*y(7);
dy(8) = k10*y(3)*y(7)-k11*y(8)-k12*y(8)*y(5);
dy(9) = k4*y(3)-k5*y(9)-k6*y(9)*y(4) - k8*y(9)*y(6);