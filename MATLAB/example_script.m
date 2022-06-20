%% Example Script
% William Davis, 17/01/20
% Illustrating how to use the secPR package
clearvars,clc,close all
%% Import data and true model
[observationVector,trueModel] = importExampleData();

%% Make observation object
observationData = buildObservation(trueModel.dt,...
    observationVector);
figure,observationData.plotObservation();

%% Make moment matrices
% Setting options (timeShiftSamplePoints,nEvalPoints,evalLims,bandwidth)
momentOptions = MomentOptionsClass(1:60,20,[-1,1],0.1);

% Making moments
momentData = buildMoments(observationData,momentOptions);
figure,momentData.plotMoment1()

% Making adjustments to moment calculations
momentOptions.timeShiftSamplePoints = 1:15;
momentData = buildMoments(observationData,momentOptions);
figure,momentData.plotMoment1()

%% Fitting to functions
% Setting options (no arguments => default)
fitOptions = FitOptionsClass();

% Estimate stochastic process model
SPmodel = estimateSPmodel(momentData,fitOptions);

% Review autocorrelation and moments functional fit
figure,SPmodel.plotAutocorrelation();
figure,SPmodel.plotMoment1();
figure,SPmodel.plotMoment2();

% View estimated functions
figure
subplot(1,2,1)
h = SPmodel.plotDrift();
h.model = plot(SPmodel.momentData.evalPoints,...
    trueModel.drift(SPmodel.momentData.evalPoints),'r-','LineWidth',2);
legend([h.scatter,h.model],{'Data','True model'},'Location','NorthEast')
subplot(1,2,2)
h = SPmodel.plotNoise();
h.model = plot(SPmodel.momentData.evalPoints,...
    trueModel.noise(SPmodel.momentData.evalPoints),'r-','LineWidth',2);
legend([h.scatter,h.model],{'Data','True model'},'Location','NorthWest')

%% Bootstrapping uncertainties
% Setting options (nBootstrapSamples)
bootstrapOptions = BootstrapOptionsClass(20);

% Estimate uncertainties
SPbootstrap = estimateBootstrapModel(SPmodel,bootstrapOptions);

% View estimated uncertainties
figure
subplot(1,2,1)
h = SPbootstrap.plotDrift();
h.model = plot(SPmodel.momentData.evalPoints,...
    trueModel.drift(SPmodel.momentData.evalPoints),'r-','LineWidth',2);
legend([h.scatter,h.fill,h.model],'Best estimate',...
    '95% confidence interval','True model')
subplot(1,2,2)
h = SPbootstrap.plotNoise();
h.model = plot(SPmodel.momentData.evalPoints,...
    trueModel.noise(SPmodel.momentData.evalPoints),'r-','LineWidth',2);
legend([h.scatter,h.fill,h.model],'Best estimate',...
    '95% confidence interval','True model')
