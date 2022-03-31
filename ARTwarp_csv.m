% FORMATTING
clear all
close gcf

global vigilance bias learningRate maxNumCategories maxNumIterations sampleInterval resample callback2

load Default.mat

addpath(pwd);

% GENERATE FIGURE
h0 = figure('Units','normalized', ...
    'CloseRequestFcn',callback1, ...
    'Color',[0.752941176470588 0.752941176470588 0.752941176470588], ...
    'MenuBar','none', ...
    'Name','ART2 Neural Network', ...
    'NumberTitle','off', ...
    'PaperPosition',[18 180 576 432], ...
    'PaperUnits','points', ...
    'Position',[0 0.04036458333333333 1 0.8671875], ...
    'Tag','ARTwarp');
h1 = uimenu('Parent',h0, ...
    'Label','File', ...
    'Tag','uimenu1');
h2 = uimenu('Parent',h1, ...
    'Callback','ARTwarp_Load_Data', ...
    'Accelerator','o', ...
    'Label','Load Frequency Contours (*.ctr)', ...
    'Tag','Fileuimenu1');
h2 = uimenu('Parent',h1, ...
    'Callback','ARTwarp_Load_CSV_Data', ...
    'Accelerator','c', ...
    'Label','Load Frequency Contours (*.csv)', ...
    'Tag','Fileuimenu3');
h2 = uimenu('Parent',h1, ...
    'Callback','ARTwarp_Load_Net', ...
    'Accelerator','n', ...
    'Label','Load Categorisation', ...
    'Tag','Fileuimenu2');
h1 = uimenu('Parent',h0, ...
    'Label','Analyse', ...
    'Tag','uimenu1');
h2 = uimenu('Parent',h1, ...
    'Callback','ARTwarp_Get_Parameters', ...
    'Accelerator','r', ...
    'Label','Run Categorisation', ...
    'Enable','off', ...
    'Tag','Runmenu');
h2 = uimenu('Parent',h1, ...
    'Callback','ARTwarp_Plot_Net', ...
    'Accelerator','p', ...
    'Label','Plot Categorisation', ...
    'Enable','off', ...
    'Tag','Plotmenu');
h2 = uimenu('Parent',h1, ...
    'Callback','ARTwarp_Plot_Net2', ...
    'Accelerator','o', ...
    'Label','Plot Categorisation 2', ...
    'Enable','off', ...
    'Tag','Plot2menu');