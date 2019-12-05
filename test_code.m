%% Example Code
% Select individual experiment (run)
run = getexp(trainData, 1);

% Down-select to specific variables from that run to model
runSel = run(:, 'diameter',{'spool', 'speed', 'extfrq'});


% Plot response of select variables
figure()
plot(run(:, 'diameter',{'spool', 'speed', 'extfrq'}));


% Impulse response (not sure if working correctly)
figure()
mi = impulseest(run, 50);
clf, step(mi)

% Test out an ARMAX model
na = 10;
nb = [10 10 10];
nc = 10;
nk = [4 4 4];
m1 = armax(runSel,'na',na,'nb',nb,'nc',nc,'nk',nk);

% Compare models
figure()
compare(runSel, m1)
