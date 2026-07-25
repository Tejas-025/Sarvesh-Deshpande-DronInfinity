Component = {

'Payload'
'Battery'
'Fuselage'
'Wing'
'Motors'

};

Mass = [

5
10
1.6
2.2
2.2

];

x = [

0.65
0.82
0.72
0.75
0.70

];

CG = sum(Mass.*x)/sum(Mass);

fprintf('CG = %.3f m\n',CG);
