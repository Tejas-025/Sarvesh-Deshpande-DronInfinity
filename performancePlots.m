V = linspace(5,35,100);

rho = 1.225;

S = 1.19;

W = 20*9.81;

AR = 7.6;

e = 0.85;

CD0 = 0.03;

CL = W./(0.5*rho*V.^2*S);

k = 1/(pi*AR*e);

CD = CD0 + k*CL.^2;

Drag = 0.5*rho*V.^2*S.*CD;

Power = Drag.*V;

figure

plot(V,Power,'LineWidth',2)

xlabel('Velocity (m/s)')
ylabel('Power (W)')
grid on
title('Power Required')

saveas(gcf, 'PowerRequired.png');
