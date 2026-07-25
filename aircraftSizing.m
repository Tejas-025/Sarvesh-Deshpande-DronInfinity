clc

run parameters

fprintf('Aircraft Sizing\n');

WingLoading = MTOW*g/wingArea;

fprintf('Wing Area      %.3f m^2\n',wingArea);
fprintf('Wing Loading   %.2f N/m^2\n',WingLoading);
fprintf('Aspect Ratio   %.2f\n',AR);
