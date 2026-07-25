clc

run parameters

CL = MTOW*g/(0.5*rho*Vc^2*wingArea);

CD0 = 0.03;

e = 0.85;

k = 1/(pi*AR*e);

CD = CD0 + k*CL^2;

Lift = 0.5*rho*Vc^2*wingArea*CL;

Drag = 0.5*rho*Vc^2*wingArea*CD;

fprintf('\nAerodynamic Results\n')

fprintf('CL %.3f\n',CL);
fprintf('CD %.3f\n',CD);
fprintf('Lift %.2f N\n',Lift);
fprintf('Drag %.2f N\n',Drag);
