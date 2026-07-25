Components = {

'Payload'
'Battery'
'Fuselage'
'Front Wing'
'Rear Wing'
'Landing Gear'
'Electronics'
'VTOL Motors'
'Cruise Motor'

};

Weight = [

5
8
1.6
1.2
1.0
0.5
0.5
1.6
0.6

];

T = table(Components,Weight)

disp(T)

fprintf('\nTotal %.2f kg\n',sum(Weight))
