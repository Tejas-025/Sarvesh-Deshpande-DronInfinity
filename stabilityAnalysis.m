MAC = 0.30;

CG = 0.28;

NeutralPoint = 0.34;

StaticMargin = (NeutralPoint-CG)/MAC;

fprintf('Static Margin %.2f %%\n',StaticMargin*100);
