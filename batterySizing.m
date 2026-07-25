clc

run cruisePower

Energy = CruisePower*endurance;

Wh = Energy;

Ah = Wh/batteryVoltage;

fprintf('\nBattery\n');

fprintf('Energy %.2f Wh\n',Wh);
fprintf('Capacity %.2f Ah\n',Ah);
