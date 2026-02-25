
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% This captures the version of Matlab and its installed toolboxes.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
ver

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
% display the search path
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
path

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Setup
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

scenario = "B"

%%% this dynamically captures the rootdir

[mydir, thisFileName, ~ ] = fileparts(mfilename('fullpath'))

if ~exist('configdone','var')
% do initial config
    if scenario == "A"
        cd ..
        rootdir = pwd
        cd(mydir)
    else
        rootdir = mydir
    end
    configdone = 'TRUE'
end

%%% Directories

results = fullfile(rootdir,'results');
dynaredir = fullfile(rootdir,'dynare');

% ensure it exists
if ~exist(results,'dir')
    mkdir(results)
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Analysis
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

cd(fullfile(dynaredir,'examples')); 
dynare example1 
dynare example2 
