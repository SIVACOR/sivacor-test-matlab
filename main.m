% main.m

% document path and toolboxes

path

ver

computer

% Create results directory

if ~exist('results', 'dir')
    mkdir('results');
end

% Run the MATLAB test script

run('test_matlab.m')

% Run the Dynare test script

test_dynare

