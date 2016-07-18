clear;
load traceData.mat;
addpath utilities
addpath(genpath('../constrained-foopsi'));
%Y = squeeze(traceData.traces(129,7,:));   % pick a particular trace (low SNR)
Y = mean(squeeze(traceData.traces(:,7,:))); % average over ROI (high SNR)

%% run MCMC sampler and plot results
SAMP = cont_ca_sampler(Y);
plot_continuous_samples(SAMP,Y);