% generateReport.m
fprintf('--- Generating UAV Analysis Report ---\n');

% Collect data into a cell array
reportData = cell(10, 2);
reportData(1,:) = {'MTOW (kg)', MTOW};
reportData(2,:) = {'Wing Area (m^2)', wingArea};
reportData(3,:) = {'Wing Loading (N/m^2)', WingLoading};
reportData(4,:) = {'Cruise CL', CL};
reportData(5,:) = {'Cruise CD', CD};
reportData(6,:) = {'Cruise Power (W)', CruisePower};
reportData(7,:) = {'Hover Power (W)', HoverPower};
reportData(8,:) = {'Battery Capacity (Ah)', Ah};
reportData(9,:) = {'Endurance (hr)', TrueEndurance};
reportData(10,:) = {'Static Margin (%)', StaticMargin*100};

% Convert to table and write to CSV
T_report = cell2table(reportData, 'VariableNames', {'Parameter', 'Value'});
writetable(T_report, 'UAV_Summary.csv');

fprintf('Report successfully saved to UAV_Summary.csv\n');
