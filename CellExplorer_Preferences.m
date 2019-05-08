% % % % % % % % % % % % % % % % % % % % % %
% Cell Explorer Preferences  
% % % % % % % % % % % % % % % % % % % % % %

% Display settings
UI.settings.customCellPlotIn1 = 'Single waveform';
UI.settings.customCellPlotIn2 = 'Single ACG'; 
UI.settings.customCellPlotIn3 = 'firingRateAcrossTime';
UI.settings.customCellPlotIn4 = 'thetaPhaseResponse';
UI.settings.customCellPlotIn5 = 'firingRateMap';
UI.settings.customCellPlotIn6 = 'firingRateMap';

UI.settings.acgType = 'Normal'; % Normal (100ms), Wide (1s), Narrow (30ms)
UI.settings.monoSynDispIn = 'Selected'; % All, Selected, None
UI.settings.displayMetricsTable = true; % boolean
UI.settings.plotCountIn = 'GUI 3+3'; % ['GUI 1+3','GUI 2+3','GUI 3+3','GUI 3+4','GUI 3+5','GUI 3+6']
UI.settings.dispLegend = 0; % [0,1] Display legend for scatter plots?
UI.settings.dispFullWaveform = 0; % [0,1] Display legend for scatter plots?

% Autosave settings
UI.settings.autoSaveFrequency = 6; % How often you want to autosave (classifications steps). Put to 0 to turn autosave off
UI.settings.autoSaveVarName = 'cell_metrics'; % Variable name used in autosave

% Initial data displayed in the customPlot
UI.settings.plotXdata = 'firingRate';
UI.settings.plotYdata = 'peakVoltage';
UI.settings.plotZdata = 'troughToPeak';

% Cell type classification definitions
UI.settings.cellTypes = {'Unknown','Pyramidal Cell','Narrow Interneuron','Wide Interneuron','Inverse spike'};
UI.settings.deepSuperficial = {'Unknown','Cortical','Deep','Superficial'};
UI.settings.tags = {'Good','Bad','Mua','Noise','InverseSpike','Other'};

% Cell type classification colors
UI.settings.cellTypeColors = [[.5,.5,.5];[.2,.8,.2];[.8,.2,.2];[0.8,0.2,0.8];[.2,.2,.8];[0.2,0.8,0.8]];

% Fields used to define the tSNE represetation
UI.settings.tSNE_calcWideAcg = false; % boolean
UI.settings.tSNE_calcNarrowAcg = false; % boolean
UI.settings.tSNE_calcFiltWaveform = false; % boolean
UI.settings.tSNE_calcRawWaveform = false; % boolean

% List of fields to use in the general tSNE representation
UI.settings.tSNE_metrics = {'firingRate','thetaModulationIndex','burstIndex_Mizuseki2012','troughToPeak','ab_ratio','burstIndex_Royer2012','acg_tau_rise','acg_tau_burst','acg_h','acg_tau_decay','cv2','burstIndex_Doublets','thetaPhaseTrough','thetaEntrainment','derivative_TroughtoPeak','filtWaveform_zscored','acg2_zscored'};

% Highlight excitatory / inhibitory cells
UI.settings.displayInhibitory = false; % boolean
UI.settings.displayExcitatory = false; % boolean

% % % % % % % % % % % % % % % % % % % % % %
% Spikes plot definitions
% % % % % % % % % % % % % % % % % % % % % %

% Spike plots can be loaded by pressing S in the Cell Explorer
spikesPlots.spikes_pos_vs_phase.x = 'pos_linearized';
spikesPlots.spikes_pos_vs_phase.y = 'theta_phase';
spikesPlots.spikes_pos_vs_phase.x_label = 'Position (cm)';
spikesPlots.spikes_pos_vs_phase.y_label = 'Theta phase';
spikesPlots.spikes_pos_vs_phase.state = '';
spikesPlots.spikes_pos_vs_phase.event = '';
spikesPlots.spikes_pos_vs_phase.eventSecBefore = []; % in seconds
spikesPlots.spikes_pos_vs_phase.eventSecAfter = []; % in seconds

spikesPlots.spikes_pos_vs_trials.x = 'pos_linearized';
spikesPlots.spikes_pos_vs_trials.y = 'trials';
spikesPlots.spikes_pos_vs_trials.x_label = 'Position (cm)';
spikesPlots.spikes_pos_vs_trials.y_label = 'Trials';
spikesPlots.spikes_pos_vs_trials.state = '';
spikesPlots.spikes_pos_vs_trials.event = '';
spikesPlots.spikes_pos_vs_trials.eventSecBefore = []; % in seconds
spikesPlots.spikes_pos_vs_trials.eventSecAfter = []; % in seconds

spikesPlots.spikes_pos_vs_trials_cooling.x = 'pos_linearized';
spikesPlots.spikes_pos_vs_trials_cooling.y = 'trials';
spikesPlots.spikes_pos_vs_trials_cooling.x_label = 'Position (cm)';
spikesPlots.spikes_pos_vs_trials_cooling.y_label = 'Trials';
spikesPlots.spikes_pos_vs_trials_cooling.state = 'state';
spikesPlots.spikes_pos_vs_trials_cooling.event = '';
spikesPlots.spikes_pos_vs_trials_cooling.eventSecBefore = []; % in seconds
spikesPlots.spikes_pos_vs_trials_cooling.eventSecAfter = []; % in seconds

spikesPlots.spikes_time_vs_amplitude.x = 'times';
spikesPlots.spikes_time_vs_amplitude.y = 'amplitudes';
spikesPlots.spikes_time_vs_amplitude.x_label = 'Time (s)';
spikesPlots.spikes_time_vs_amplitude.y_label = 'Amplitude';
spikesPlots.spikes_time_vs_amplitude.state = '';
spikesPlots.spikes_time_vs_amplitude.event = '';
spikesPlots.spikes_time_vs_amplitude.eventSecBefore = []; % in seconds
spikesPlots.spikes_time_vs_amplitude.eventSecAfter = []; % in seconds

spikesPlots.spikes_ripples_raster.x = 'times';
spikesPlots.spikes_ripples_raster.y = 'amplitudes';
spikesPlots.spikes_ripples_raster.x_label = 'Time';
spikesPlots.spikes_ripples_raster.y_label = 'Event';
spikesPlots.spikes_ripples_raster.state = '';
spikesPlots.spikes_ripples_raster.event = 'ripples';
spikesPlots.spikes_ripples_raster.eventAlignment = 'peak'; % [onset, offset, center, peak]
spikesPlots.spikes_ripples_raster.eventSorting = 'amplitude'; % [none, time, amplitude, duration]
spikesPlots.spikes_ripples_raster.eventSecBefore = 0.2; % in seconds
spikesPlots.spikes_ripples_raster.eventSecAfter = 0.2; % in seconds
spikesPlots.spikes_ripples_raster.plotRaster = 1; 
spikesPlots.spikes_ripples_raster.plotAverage = 1;
spikesPlots.spikes_ripples_raster.plotAmplitude = 1;
spikesPlots.spikes_ripples_raster.plotDuration = 1;
spikesPlots.spikes_ripples_raster.plotCount = 0;

spikesPlots.spikes_pvLightStimulation.x = 'times';
spikesPlots.spikes_pvLightStimulation.y = 'times';
spikesPlots.spikes_pvLightStimulation.x_label = 'Time';
spikesPlots.spikes_pvLightStimulation.y_label = 'Event';
spikesPlots.spikes_pvLightStimulation.state = '';
spikesPlots.spikes_pvLightStimulation.event = 'pvLightStimulation';
spikesPlots.spikes_pvLightStimulation.eventAlignment = 'onset'; % [onset, offset, center, peak]
spikesPlots.spikes_pvLightStimulation.eventSorting = 'time'; % [none, time, amplitude, duration]
spikesPlots.spikes_pvLightStimulation.eventSecBefore = 0.1; % in seconds
spikesPlots.spikes_pvLightStimulation.eventSecAfter = 0.2; % in seconds
spikesPlots.spikes_pvLightStimulation.plotRaster = 1;
spikesPlots.spikes_pvLightStimulation.plotAverage = 1;
spikesPlots.spikes_pvLightStimulation.plotAmplitude = 1;
spikesPlots.spikes_pvLightStimulation.plotDuration = 1;
spikesPlots.spikes_pvLightStimulation.plotCount = 1;

spikesPlots.spikes_tesStimulation.x = 'times';
spikesPlots.spikes_tesStimulation.y = 'times';
spikesPlots.spikes_tesStimulation.x_label = 'Time';
spikesPlots.spikes_tesStimulation.y_label = 'Event';
spikesPlots.spikes_tesStimulation.state = '';
spikesPlots.spikes_tesStimulation.event = 'stimulation';
spikesPlots.spikes_tesStimulation.eventAlignment = 'onset'; % [onset, offset, center, peak]
spikesPlots.spikes_tesStimulation.eventSorting = 'amplitude'; % [none, time, amplitude, duration]
spikesPlots.spikes_tesStimulation.eventSecBefore = 2; % in seconds
spikesPlots.spikes_tesStimulation.eventSecAfter = 2; % in seconds
spikesPlots.spikes_tesStimulation.plotRaster = 1;
spikesPlots.spikes_tesStimulation.plotAverage = 1;
spikesPlots.spikes_tesStimulation.plotAmplitude = 1;
spikesPlots.spikes_tesStimulation.plotDuration = 0;
spikesPlots.spikes_tesStimulation.plotCount = 0;

