
function defineNodeDampingForceRecorders3DModel(buildingGeometry,...
    XDirectionWoodPanelNodes,ZDirectionWoodPanelNodes,...
    leaningColumnNodes,BuildingModelDirectory,AnalysisType)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%      Generating Tcl File with Defined Node Displacement Recorders       %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

cd(BuildingModelDirectory);
cd OpenSees3DModels
cd(AnalysisType);
fid = fopen('DefineNodeDampingForceRecorders3DModel.tcl','wt');

% Writing file description into tcl file
fprintf(fid,'%s\n','# Define node damping forces recorders');
fprintf(fid,'%s\n','');
fprintf(fid,'%s\n','');

% Changing directory to output location
fprintf(fid,'%s\t','cd');
if strcmp(AnalysisType,'PushoverAnalysis') == 1
    fprintf(fid,'%s\n',strcat('$baseDir/$dataDir/NodeDampingForces'));
else
    fprintf(fid,'%s\n',strcat('$pathToResults/EQ_$folderNumber/NodeDampingForces'));
end
fprintf(fid,'%s\n','');

% Defining recorders for X-Direction Wood Panel Node Displacements
fprintf(fid,'%s\n',...
    '# Record displacements for x-direction wood panel nodes');
% Looping over number of stories
for i = 1:buildingGeometry.numberOfStories
    fprintf(fid,'%s\t','recorder Node -file');
    fprintf(fid,'%s\t',strcat('XWoodPanelNodeDampingForceLevel',num2str(i),'.out'));
    fprintf(fid,'%s\t','-time -node');
    % Loop over the number of X-Direction wood panels
    for j = 1:buildingGeometry.numberOfXDirectionWoodPanels(i,1)
        fprintf(fid,'%s\t',...
            XDirectionWoodPanelNodes{i,j}(2,1).openSeesTag);
    end
    fprintf(fid,'%s\n','-dof 1 2 3 rayleighForces');
end
fprintf(fid,'%s\n','');

% Defining recorders for Z-Direction Wood Panel Node Displacements
fprintf(fid,'%s\n',...
    '# Record displacements for z-direction wood panel nodes');
% Looping over number of stories
for i = 1:buildingGeometry.numberOfStories
    fprintf(fid,'%s\t','recorder Node -file');
    fprintf(fid,'%s\t',strcat('ZWoodPanelNodeDampingForceLevel',num2str(i),'.out'));
    fprintf(fid,'%s\t','-time -node');
    % Loop over the number of Z-Direction wood panels
    for j = 1:buildingGeometry.numberOfZDirectionWoodPanels(i,1)
        fprintf(fid,'%s\t',...
            ZDirectionWoodPanelNodes{i,j}(2,1).openSeesTag);
    end
    fprintf(fid,'%s\n','-dof 1 2 3 rayleighForces');
end
fprintf(fid,'%s\n','');

% Defining recorders for Leaning Column Node Displacements
fprintf(fid,'%s\n','# Record displacements for leaning column nodes');
% Looping over number of stories
for i = 2:buildingGeometry.numberOfStories + 1
    fprintf(fid,'%s\t','recorder Node -file');
    fprintf(fid,'%s\t',strcat('LeaningColumnNodeDampingForceLevel',num2str(i),'.out'));
    fprintf(fid,'%s\t','-time -node');
    fprintf(fid,'%s\t',num2str(leaningColumnNodes{2}(4)),num2str(leaningColumnNodes{4}(4)),num2str(leaningColumnNodes{6}(4)),...
    num2str(leaningColumnNodes{8}(4)),num2str(leaningColumnNodes{10}(4)),num2str(leaningColumnNodes{12}(4)),...
    num2str(leaningColumnNodes{14}(4)),num2str(leaningColumnNodes{16}(4)),num2str(leaningColumnNodes{18}(4)));

    fprintf(fid,'%s\n','-dof 1 2 3 rayleighForces');
end
fprintf(fid,'%s\n','');

% Closing and saving tcl file
fclose(fid);

end

