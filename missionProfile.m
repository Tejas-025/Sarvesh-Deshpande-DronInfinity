Time = [

0
2
5
240
245
250

];

Power = [

4500
3000
900
900
2500
4000

];

stairs(Time,Power,'LineWidth',2)

xlabel('Time (min)')
ylabel('Power (W)')
grid on
title('Mission Power Profile')

saveas(gcf, 'MissionProfile.png');
