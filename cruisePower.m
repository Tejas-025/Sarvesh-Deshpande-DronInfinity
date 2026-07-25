clc

run aerodynamicAnalysis

CruisePower = Drag*Vc/(etaProp*etaMotor);

fprintf('\nCruise Power\n');

fprintf('%.2f W\n',CruisePower);
