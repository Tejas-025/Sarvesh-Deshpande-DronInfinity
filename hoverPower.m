clc

run parameters

diskDiameter = 0.71;

diskArea = pi*(diskDiameter/2)^2;

totalArea = hoverMotors*diskArea;

Weight = MTOW*g;

vi = sqrt(Weight/(2*rho*totalArea));

HoverPower = Weight*vi;

fprintf('\nHover Analysis\n');

fprintf('Induced Velocity %.2f m/s\n',vi);
fprintf('Hover Power %.2f W\n',HoverPower);
