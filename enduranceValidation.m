% Using Wh from batterySizing and CruisePower from cruisePower
% Recalculate true endurance based on battery capacity

TrueEndurance = Wh/CruisePower;

fprintf('Endurance %.2f hr\n',TrueEndurance);
