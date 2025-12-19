% main.m

% Create results directory

if ~exist('results', 'dir')
    mkdir('results');
end

% Run the MATLAB test script

test-matlab

% Run the Dynare test script

test-dynare

