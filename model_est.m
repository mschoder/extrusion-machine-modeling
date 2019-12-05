%% REF: https://www.mathworks.com/help/ident/ug/preliminary-step-estimating-model-orders-and-input-delays.html

% Estimate model input delays (uses ARX model structure)
estData = trainData(:, 'diameter',{'spool', 'speed', 'extfrq'});
nk = delayest(estData,2,2,0,40,100000);


% Estimate model order
% REF: https://www.mathworks.com/help/ident/ref/selstruc.html

% create different model structure options
NN = struc(2:4,2:4,2:4,2:4,9,9,38);
