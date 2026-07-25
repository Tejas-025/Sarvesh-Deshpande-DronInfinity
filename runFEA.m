% runFEA.m
% Automated Structural FEA Script for Tandem Wing VTOL UAV

try
    disp('--- Starting Automated FEA Analysis ---');
    disp('Initializing PDE Model...');
    model = createpde('structural','static-solid');
    
    disp('Importing geometry (assembly.step)...');
    % The STEP file is in the parent directory
    importGeometry(model, '../assembly.step'); 
    
    disp('Generating volumetric mesh... (This may take several minutes for a 31MB assembly)');
    % Use default mesh parameters; MATLAB will attempt to auto-size
    generateMesh(model);
    
    disp('Applying material properties (Generic Aerospace Aluminum 6061)...');
    structuralProperties(model, 'YoungsModulus', 69e9, 'PoissonsRatio', 0.33, 'MassDensity', 2700);
    
    disp('Applying Boundary Conditions...');
    % Since this is an automated run without user-selected faces, 
    % we will fix Face 1 to prevent rigid body motion and anchor the model.
    structuralBC(model, 'Face', 1, 'Constraint', 'fixed');
    
    disp('Applying 3G Vertical Flight Load (Body Load)...');
    structuralBodyLoad(model, 'Gravity', [0, 0, -9.81*3]);
    
    disp('Solving PDE... (Calculating stresses and deformations)');
    result = solvepde(model);
    
    disp('Plotting Results...');
    fig = figure('Visible','off', 'Position', [100, 100, 1200, 800]);
    pdeplot3D(model, 'ColorMapData', result.VonMisesStress, 'Deformation', result.Displacement);
    title('Von Mises Stress under 3G Flight Load');
    
    % Save to the current UAV directory
    saveas(fig, 'Stress_Results.png');
    
    disp('--- Analysis completed successfully! ---');
    disp('Results saved to Stress_Results.png');
catch ME
    disp('!!! An error occurred during FEA !!!');
    disp(ME.message);
end
exit;
