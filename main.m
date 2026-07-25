% main.m - Main execution script for TandemWingVTOL_UAV

clear; clc; close all;

disp('--- Running UAV Analysis ---');
disp(' ');

disp('1. Aircraft Sizing');
aircraftSizing;
disp(' ');

disp('2. Aerodynamic Analysis');
aerodynamicAnalysis;
disp(' ');

disp('3. Cruise Power');
cruisePower;
disp(' ');

disp('4. Hover Power');
hoverPower;
disp(' ');

disp('5. Battery Sizing');
batterySizing;
disp(' ');

disp('6. Weight Breakdown');
weightBreakdown;
disp(' ');

disp('7. CG Calculation');
cgCalculation;
disp(' ');

disp('8. Mission Profile');
missionProfile;
disp('Mission profile plotted.');
disp(' ');

disp('9. Performance Plots');
performancePlots;
disp('Performance plots generated.');
disp(' ');

disp('10. Endurance Validation');
enduranceValidation;
disp(' ');

disp('11. Stability Analysis');
stabilityAnalysis;
disp(' ');

disp('12. Generate Report');
generateReport;
disp(' ');

disp('--- Analysis Complete ---');
