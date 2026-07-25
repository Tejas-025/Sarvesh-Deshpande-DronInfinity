%% UAV Parameters

g = 9.81;
rho = 1.225;

%% Mission

payload = 5;             % kg
endurance = 4;           % hr
range = 50e3;            % m

%% Geometry

span = 2.2;              % m
frontArea = 0.64;        % m^2
rearArea = 0.55;         % m^2

wingArea = frontArea + rearArea;

AR = span^2/frontArea;

%% Weight

MTOW = 20;               % kg

%% Cruise

Vc = 18;                 % m/s

%% Hover

hoverMotors = 4;

%% Propulsion

etaProp = 0.82;
etaMotor = 0.92;

%% Battery

batteryVoltage = 44.4;
batteryCapacity = 40;
