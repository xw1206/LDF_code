%% Preprosessing the data 
% Develop by Yuki and Xuan
% please download and save matlab file: plot_rawdat 
    %need to be saved into save directory

close all
clear

%% Import Data as an array

% %Test Pilot Data
% 
% %Import data into cell variable, dat
% 
dat{1} = readmatrix('/Users/Xuan/Desktop/4970/for_results/man_data/1001/1001_02_01302023.csv');
dat{2} = readmatrix('/Users/Xuan/Desktop/4970/for_results/man_data/1372/1372_02_01262023.csv');
dat{3} = readmatrix('/Users/Xuan/Desktop/4970/for_results/man_data/1006/1006_02_Dec162022.csv');
dat{4} = readmatrix('/Users/Xuan/Desktop/4970/for_results/man_data/1008/1008_02_15022023.csv');
dat{5} = readmatrix('/Users/Xuan/Desktop/4970/for_results/man_data/1012/1012_02_Dec22022.csv');


%% Isolated interested regions (high temp and low temp)
%note: we are assuming that the protocol is consistent enough that the same
%high/low temp regions can be used to successfully separate each dataset

%CHOOSE LENGTH/POSITION OF CHOSEN SAMPLE
len = 36000-1; %Amount of time sampled (40 Fs * 15 min(60s*15) -1)
%Specify the LAST BOUNDARY of the 2 interested samples in each dataset
range = [47849 121928 ; ... 
    47849 121928; ...
    47849 121928; ...
    47849 121928; ...
    47849 121928];

range = range - len

%If want to convert xaxis to time instead of index
tf = 1;
time = 1;
if time == 1
    tf = 1/(40*60);
    for i = 1:size(dat,2)
        %Convert Index to Time (minutes)
        dat{i}(:,1) = dat{i}(:,1)./(40*60);
    end    
end

%% CREATE PLOTS TO CHECK REGIONS
    
for i = 1:size(dat,2) %For all 3 datasets
   
    %Plot time-series data
    plot_rawdat(dat{i}, 0)
     
    %Add rectangles marking temperature regions
    subplot(2,1,1) %Forearm subplot
    %low temp
    rectangle('Position',[range(i,1)*tf -10 (len+1)*tf 800],'FaceColor',[0 .5 .5 0.1])
    %high temp
    rectangle('Position',[range(i,2)*tf -10 (len+1)*tf 800],'FaceColor',[0 .5 .5 0.1])


    subplot(2,1,2) %Forehead subplot
    %low temp
    rectangle('Position',[range(i,1)*tf -10 (len+1)*tf 800],'FaceColor',[0 .5 .5 0.1])
    %high temp
    rectangle('Position',[range(i,2)*tf -10 (len+1)*tf 800],'FaceColor',[0 .5 .5 0.1])  
    
end

%% SPECIFY GOOD DATA REGIONS BASED ON PLOTS
for i = 1:size(dat,2) %For each dataset, give same data range (for consistency)
    lowtemp_arm(:,i) = dat{i}(range(i,1):range(i,1)+len,2);
    hightemp_arm(:,i) = dat{i}(range(i,2):range(i,2)+len,2);
    lowtemp_head(:,i) = dat{i}(range(i,1):range(i,1)+len,4);
    hightemp_head(:,i) = dat{i}(range(i,2):range(i,2)+len,4);
end




%% put 5 people in a group for now, can increase latter
% put their iD in order
ID =[1001 1372 1006 1008 1012]

% each group contain 5 people
for i = 1:length(ID)
    
    hi_arm_signal = hightemp_arm(:,i);
    hi_head_signal = hightemp_head(:,i);
    lowtemp_arm_signal = lowtemp_arm(:,i);
    lowtemp_head_signal = lowtemp_head(:,i);
    fileID = ID(i)
    str_fileID = char(fileID)
% Commoent the one you do not need, one session at a time
% change the path as where you save it
% change man_data or woman_data
%first session
%     filename1 = sprintf('./final_woman/%d/higharm1_%d.csv', str_fileID,fileID);
%     filename2 = sprintf('./final_woman/%d/highhead1_%d.csv', str_fileID,fileID);
%     filename3 = sprintf('./final_woman/%d/lowarm1_%d.csv', str_fileID,fileID);
%     filename4 = sprintf('./final_woman/%d/lowhead1_%d.csv', str_fileID,fileID);

%second session
    filename1 = sprintf('./man_data/%d/higharm2_%d.csv', str_fileID,fileID);
    filename2 = sprintf('./man_data/%d/highhead2_%d.csv', str_fileID,fileID);
    filename3 = sprintf('./man_data/%d/lowarm2_%d.csv', str_fileID,fileID);
    filename4 = sprintf('./man_data/%d/lowhead2_%d.csv', str_fileID,fileID);

    writematrix(hi_arm_signal,filename1);
    writematrix(hi_head_signal,filename2);
    writematrix(lowtemp_arm_signal,filename3);
    writematrix(lowtemp_head_signal,filename4);

end
% processed data will be saved to the same fiile name as
%higharm1_ID
%lowarm1_ID
%highhead1_ID
%lowhead1_ID

