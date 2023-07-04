%% this scrip is for ploting scalogram only
%compare between male vs female(F/L cycle) at high/low arm/head--->this
%could be on one graph
%compare high/low arm/head
clear all
%% choose your male data from first session/
% put ite in to one array
% manually type in ids for male
ids = [1006 1008 1012 1052 1125 1156 1173 1219 1245 1252 1388 1397 1426 1439 1444 1454 1521 1570 1578 1598 1604 1625 1633 1664 1711 1774 1787 1804 1817 1837 1907 1921 1970];
   clear higharm;
   clear highhead;
   clear lowarm;
   clear lowhead;
for i = 1:length(ids)
   fileID = ids(i);
   str_fileID = char(fileID);
   higharm_filename = sprintf('./Man_Feb21/%d/higharm1_%d.csv', str_fileID,fileID);
   highhead_filename = sprintf('./Man_Feb21/%d/highhead1_%d.csv', str_fileID,fileID);
   lowarm_filename = sprintf('./Man_Feb21/%d/lowarm1_%d.csv', str_fileID,fileID);
   lowhead_filename = sprintf('./Man_Feb21/%d/lowhead1_%d.csv', str_fileID,fileID);
   higharm{i} = readmatrix(higharm_filename);
   highhead{i} = readmatrix(highhead_filename);
   lowarm{i} = readmatrix(lowarm_filename);
   lowhead{i} = readmatrix(lowhead_filename);
end
%male = [higharm; highhead; lowarm; lowhead];
m_low_arm1 = lowarm;
m_high_arm1 = higharm;
m_low_head1 = lowhead;
m_high_head1 = highhead;
%% choose your male data from second session 
% manually type in ids for male
ids = [1006 1008 1012 1052 1125 1156 1173 1219 1245 1252 1388 1397 1426 1439 1444 1454 1521 1570 1578 1598 1604 1625 1633 1664 1711 1774 1787 1804 1817 1837 1907 1921 1970];
   clear higharm;
   clear highhead;
   clear lowarm;
   clear lowhead;
for i = 1:length(ids)
   fileID = ids(i);
   str_fileID = char(fileID);
   higharm_filename = sprintf('./Man_Feb21/%d/higharm2_%d.csv', str_fileID,fileID);
   highhead_filename = sprintf('./Man_Feb21/%d/highhead2_%d.csv', str_fileID,fileID);
   lowarm_filename = sprintf('./Man_Feb21/%d/lowarm2_%d.csv', str_fileID,fileID);
   lowhead_filename = sprintf('./Man_Feb21/%d/lowhead2_%d.csv', str_fileID,fileID);
   higharm{i} = readmatrix(higharm_filename);
   highhead{i} = readmatrix(highhead_filename);
   lowarm{i} = readmatrix(lowarm_filename);
   lowhead{i} = readmatrix(lowhead_filename);
end
%male = [higharm; highhead; lowarm; lowhead];
m_low_arm2 = lowarm;
m_high_arm2 = higharm;
m_low_head2 = lowhead;
m_high_head2 = highhead;
%% ADD two session male together
m_low_arm = [m_low_arm1 m_low_arm2];
m_high_arm = [m_high_arm1 m_high_arm2];
m_low_head = [m_low_head1 m_low_head2];
m_high_head = [m_high_head1 m_high_head2];
% m_low_arm = m_low_arm2 ;
% m_high_arm = m_high_arm2 ;
% m_low_head = m_low_head2 ;
% m_high_head = m_high_head2;

%% choose your female data from first session 
% put ite in to one array
% manually type in ids for female
% first session
ids = [2002 2030 2042 2083 2095 2124 2182 2190 2221 2233 2253 2301 2322 2355 2371 2408 2441 2480 2531 2532 2577 2604 2641 2675 2682 2739 2760 2811 2822 2853 2905 2914 2930 2998];
    clear higharm;
   clear highhead;
   clear lowarm;
   clear lowhead;
for i = 1:length(ids)
 
   fileID = ids(i);
   str_fileID = char(fileID);
%first session
   higharm_filename = sprintf('./Woman_Feb21/%d/higharm1_%d.csv', str_fileID,fileID);
   highhead_filename = sprintf('./Woman_Feb21/%d/highhead1_%d.csv', str_fileID,fileID);
   lowarm_filename = sprintf('./Woman_Feb21/%d/lowarm1_%d.csv', str_fileID,fileID);
   lowhead_filename = sprintf('./Woman_Feb21/%d/lowhead1_%d.csv', str_fileID,fileID);
   higharm{i} = readmatrix(higharm_filename);
   highhead{i} = readmatrix(highhead_filename);
   lowarm{i} = readmatrix(lowarm_filename);
   lowhead{i} = readmatrix(lowhead_filename);
end
fm_low_arm1 = lowarm;
fm_high_arm1 = higharm;
fm_low_head1 = lowhead;
fm_high_head1 = highhead;
%% choose your female data from second session 
% put ite in to one array
% manually type in ids for female
% first session
ids = [2002 2030 2042 2083 2095 2124 2182 2190 2221 2233 2253 2301 2322 2355 2371 2408 2441 2480 2531 2532 2577 2604 2641 2675 2682 2739 2760 2811 2822 2853 2905 2914 2930 2998];
    clear higharm;
   clear highhead;
   clear lowarm;
   clear lowhead;
for i = 1:length(ids)
 
   fileID = ids(i);
   str_fileID = char(fileID);
%first session
   higharm_filename = sprintf('./Woman_Feb21/%d/higharm2_%d.csv', str_fileID,fileID);
   highhead_filename = sprintf('./Woman_Feb21/%d/highhead2_%d.csv', str_fileID,fileID);
   lowarm_filename = sprintf('./Woman_Feb21/%d/lowarm2_%d.csv', str_fileID,fileID);
   lowhead_filename = sprintf('./Woman_Feb21/%d/lowhead2_%d.csv', str_fileID,fileID);
   higharm{i} = readmatrix(higharm_filename);
   highhead{i} = readmatrix(highhead_filename);
   lowarm{i} = readmatrix(lowarm_filename);
   lowhead{i} = readmatrix(lowhead_filename);
end
fm_low_arm2 = lowarm;
fm_high_arm2 = higharm;
fm_low_head2 = lowhead;
fm_high_head2 = highhead;
%% ADD two session male together
fm_low_arm = [fm_low_arm1 fm_low_arm2];
fm_high_arm = [fm_high_arm1 fm_high_arm2];
fm_low_head = [fm_low_head1 fm_low_head2];
fm_high_head = [fm_high_head1 fm_high_head2];




%%
%Choose the one you want to test: we want 4 plot each contain 3 lines
% at low arm temp male female leteal/follicular
% m_low_arm
% low_arm_l
% low_arm_f
% at low head temp male female leteal/follicular
% m_low_head
% low_head_l
% low_head_f
% at high arm temp male female leteal/follicular
% m_high_arm
% high_arm_l
% high_arm_f
% at high head temp male female leteal/follicular
% m_high_head
% high_head_l
% high_head_f
clear higharm;
clear highhead;
clear lowarm;
clear lowhead;
clear low_arm
clear low_head 
clear high_arm 
clear high_head

% low_arm = [m_low_arm low_arm_l low_arm_f];
% low_head = [m_low_head low_head_l low_head_f];
% high_arm = [m_high_arm high_arm_l high_arm_f];
% high_head = [ m_high_head high_head_l high_head_f];
low_arm = [m_low_arm fm_low_arm];
low_head = [m_low_head fm_low_head];
high_arm = [m_high_arm fm_high_arm];
high_head = [ m_high_head fm_high_head];

%% compare only femal with male
clear higharm;
clear highhead;
clear lowarm;
clear lowhead;
clear low_arm
clear low_head 
clear high_arm 
clear high_head

low_arm = [m_low_arm fm_low_arm ];
low_head = [m_low_head fm_low_arm ];
high_arm = [m_high_arm fm_low_arm ];
high_head = [ m_high_head fm_low_arm];

%% first we apply filter
% apuiring the wavelet transform values for low arm group(male vs female)
%Add filter:
%Step 1: type filterDesigner
%Step 2: Export as variable - Rectangular, Kaiser, Hamming
Rectangular = filter_rectangular;
%Hamming = filter_hamming;
%Kaiser = filter_kaiser; %Applied Kaiser, order 16, beta 0.5
Fs = 40;
fb = cwtfilterbank("SignalLength",36000,"Wavelet","amor",'SamplingFrequency',40);
%%
for i = 1:size(m_low_arm,2)
   testfilt = filter(Rectangular, m_low_arm{i}(:,1));
   m_low_arm{i}(:,1) = testfilt;
   %[m_low_arm_wt{i},m_low_arm_f{i},~] = cwt(m_low_arm{i}(:,1),'amor',Fs);
   [m_low_arm_tavap{i},m_low_arm_f{i} ]= timeSpectrum(fb,m_low_arm{i}(:,1),"Normalization","pdf");
end
%%
for i = 1:size(fm_low_arm,2)
   testfilt = filter(Rectangular, fm_low_arm{i}(:,1));
   fm_low_arm{i}(:,1) = testfilt;
   %[m_low_arm_wt{i},m_low_arm_f{i},~] = cwt(m_low_arm{i}(:,1),'amor',Fs);
   [fm_low_arm_tavap{i},fm_low_arm_f{i} ]= timeSpectrum(fb,fm_low_arm{i}(:,1),"Normalization","pdf");
end
%% calculate confidence intervel for each point across all individual
% first get each element of each individual
% to get ith emement
for i = 1   : size(m_low_arm_tavap{1},1)
    % of jth person
    clear element
    for j=1:size(m_low_arm_tavap,2)
        % because only have one column(1,i)
         element(j,1) = m_low_arm_tavap{j}(i,1);
    
    end  
    pd = fitdist(element,'Normal');
    ci = paramci(pd)
    y_up1(i,1) = ci(2,1);
    y_low1(i,1) = ci(1,1);
end

%% female 
for i = 1   : size(fm_low_arm_tavap{1},1)
    % of jth person
    clear element
    for j=1:size(fm_low_arm_tavap,2)
        % because only have one column(1,i)
         element(j,1) = fm_low_arm_tavap{j}(i,1);
    
    end  
    pd = fitdist(element,'Normal');
    ci = paramci(pd)
    y_up2(i,1) = ci(2,1);
    y_low2(i,1) = ci(1,1);
end
%% Creating an average scalogram (au) v.s. log scale = log(1/f) plot
% average across all low arm male
all_m_low_arm_tavap = m_low_arm_tavap{1};
for i = 2:size(m_low_arm_tavap,2)-1
   all_m_low_arm_tavap = m_low_arm_tavap{i} + all_m_low_arm_tavap;
end
all_m_low_arm_tavap =all_m_low_arm_tavap./size(m_low_arm_tavap,2);

%%
%

figure
hold on
% plot mean of time average wt
plot(log10(1./m_low_arm_f{1}), all_m_low_arm_tavap,'color', 'b');
plot(log10(1./fm_low_arm_f{1}), all_fm_low_arm_tavap,'color', 'r');

xlim([-0.5 2.2]);
xlabel('Log scale = log(1/f)')
ylabel('Average scalogram (au)')
set(gca,'XDir','reverse')
% making vertica lines for frequency section
xline(log10(1./0.62),'--','Heart')
xline(log10(1./0.145),'--','Respiratory')
xline(log10(1./0.052),'--','Myogenic')
xline(log10(1./0.02),'--','Neurogenic')
xline(log10(1./0.0095),'--','Endothelial(NO-dependent)')
xline(log10(1./0.003),'--','Endothelial(NO-independent)')
legend('Male',"Female")
hold on
plot(log10(1./m_low_arm_f{1}), y_up1,'color', 'b','HandleVisibility','off');
plot(log10(1./m_low_arm_f{1}), y_low1,'color', 'b','HandleVisibility','off');
plot(log10(1./fm_low_arm_f{1}), y_up2,'color', 'r','HandleVisibility','off');
plot(log10(1./fm_low_arm_f{1}), y_low2,'color', 'r','HandleVisibility','off');
title("Low arm Male vs Female")

%% first we apply filter Low Head
% apuiring the wavelet transform values for low arm group(male vs female)
%Add filter:
%Step 1: type filterDesigner
%Step 2: Export as variable - Rectangular, Kaiser, Hamming
Rectangular = filter_rectangular;
%Hamming = filter_hamming;
%Kaiser = filter_kaiser; %Applied Kaiser, order 16, beta 0.5
Fs = 40;
fb = cwtfilterbank("SignalLength",36000,"Wavelet","amor",'SamplingFrequency',40);
%%
for i = 1:size(m_low_head,2)
   testfilt = filter(Rectangular, m_low_head{i}(:,1));
   m_low_head{i}(:,1) = testfilt;
   %[m_low_head_wt{i},m_low_head_f{i},~] = cwt(m_low_head{i}(:,1),'amor',Fs);
   [m_low_head_tavap{i},m_low_head_f{i} ]= timeSpectrum(fb,m_low_head{i}(:,1),"Normalization","pdf");
end
%%
for i = 1:size(fm_low_head,2)
   testfilt = filter(Rectangular, fm_low_head{i}(:,1));
   fm_low_head{i}(:,1) = testfilt;
   %[m_low_head_wt{i},m_low_head_f{i},~] = cwt(m_low_head{i}(:,1),'amor',Fs);
   [fm_low_head_tavap{i},fm_low_head_f{i} ]= timeSpectrum(fb,fm_low_head{i}(:,1),"Normalization","pdf");
end
%% calculate confidence intervel for each point across all individual
% first get each element of each individual
% to get ith emement
for i = 1   : size(m_low_head_tavap{1},1)
    % of jth person
    clear element
    for j=1:size(m_low_head_tavap,2)
        % because only have one column(1,i)
         element(j,1) = m_low_head_tavap{j}(i,1);
    
    end  
    pd = fitdist(element,'Normal');
    ci = paramci(pd)
    y_up1(i,1) = ci(2,1);
    y_low1(i,1) = ci(1,1);
end

%% female 
for i = 1   : size(fm_low_head_tavap{1},1)
    % of jth person
    clear element
    for j=1:size(fm_low_head_tavap,2)
        % because only have one column(1,i)
         element(j,1) = fm_low_head_tavap{j}(i,1);
    
    end  
    pd = fitdist(element,'Normal');
    ci = paramci(pd)
    y_up2(i,1) = ci(2,1);
    y_low2(i,1) = ci(1,1);
end
%% Creating an average scalogram (au) v.s. log scale = log(1/f) plot
% average across all low head male
all_m_low_head_tavap = m_low_head_tavap{1};
for i = 2:size(m_low_head_tavap,2)-1
   all_m_low_head_tavap = m_low_head_tavap{i} + all_m_low_head_tavap;
end
all_m_low_head_tavap =all_m_low_head_tavap./size(m_low_head_tavap,2);

%% average across all low head female luteal
all_fm_low_head_tavap = fm_low_head_tavap{1};
for i = 2:size(fm_low_head_tavap,2)-1
   all_fm_low_head_tavap = fm_low_head_tavap{i} + all_fm_low_head_tavap;
end
all_fm_low_head_tavap =all_fm_low_head_tavap./size(fm_low_head_tavap,2);

%%
%

figure
hold on
% plot mean of time average wt
plot(log10(1./m_low_head_f{1}), all_m_low_head_tavap,'color', 'b');
plot(log10(1./fm_low_head_f{1}), all_fm_low_head_tavap,'color', 'r');

xlim([-0.5 2.2]);
xlabel('Log scale = log(1/f)')
ylabel('Average scalogram (au)')
set(gca,'XDir','reverse')
% making vertica lines for frequency section
xline(log10(1./0.62),'--','Heart')
xline(log10(1./0.145),'--','Respiratory')
xline(log10(1./0.052),'--','Myogenic')
xline(log10(1./0.02),'--','Neurogenic')
xline(log10(1./0.0095),'--','Endothelial(NO-dependent)')
xline(log10(1./0.003),'--','Endothelial(NO-independent)')
legend('Male',"Female")
hold on
plot(log10(1./m_low_head_f{1}), y_up1,'color', 'b','HandleVisibility','off');
plot(log10(1./m_low_head_f{1}), y_low1,'color', 'b','HandleVisibility','off');
plot(log10(1./fm_low_head_f{1}), y_up2,'color', 'r','HandleVisibility','off');
plot(log10(1./fm_low_head_f{1}), y_low2,'color', 'r','HandleVisibility','off');
title("Low head Male vs Female")

%% first we apply filter high Head
% apuiring the wavelet transform values for low arm group(male vs female)
%Add filter:
%Step 1: type filterDesigner
%Step 2: Export as variable - Rectangular, Kaiser, Hamming
Rectangular = filter_rectangular;
%Hamming = filter_hamming;
%Kaiser = filter_kaiser; %Applied Kaiser, order 16, beta 0.5
Fs = 40;
fb = cwtfilterbank("SignalLength",36000,"Wavelet","amor",'SamplingFrequency',40);
%%
for i = 1:size(m_high_head,2)
   testfilt = filter(Rectangular, m_high_head{i}(:,1));
   m_high_head{i}(:,1) = testfilt;
   %[m_high_head_wt{i},m_high_head_f{i},~] = cwt(m_high_head{i}(:,1),'amor',Fs);
   [m_high_head_tavap{i},m_high_head_f{i} ]= timeSpectrum(fb,m_high_head{i}(:,1),"Normalization","pdf");
end
%%
for i = 1:size(fm_high_head,2)
   testfilt = filter(Rectangular, fm_high_head{i}(:,1));
   fm_high_head{i}(:,1) = testfilt;
   %[m_high_head_wt{i},m_high_head_f{i},~] = cwt(m_high_head{i}(:,1),'amor',Fs);
   [fm_high_head_tavap{i},fm_high_head_f{i} ]= timeSpectrum(fb,fm_high_head{i}(:,1),"Normalization","pdf");
end
%% calculate confidence intervel for each point across all individual
% first get each element of each individual
% to get ith emement
for i = 1   : size(m_high_head_tavap{1},1)
    % of jth person
    clear element
    for j=1:size(m_high_head_tavap,2)
        % because only have one column(1,i)
         element(j,1) = m_high_head_tavap{j}(i,1);
    
    end  
    pd = fitdist(element,'Normal');
    ci = paramci(pd)
    y_up1(i,1) = ci(2,1);
    y_low1(i,1) = ci(1,1);
end

%% female 
for i = 1   : size(fm_high_head_tavap{1},1)
    % of jth person
    clear element
    for j=1:size(fm_high_head_tavap,2)
        % because only have one column(1,i)
         element(j,1) = fm_high_head_tavap{j}(i,1);
    
    end  
    pd = fitdist(element,'Normal');
    ci = paramci(pd)
    y_up2(i,1) = ci(2,1);
    y_low2(i,1) = ci(1,1);
end
%% Creating an average scalogram (au) v.s. log scale = log(1/f) plot
% average across all high head male
all_m_high_head_tavap = m_high_head_tavap{1};
for i = 2:size(m_high_head_tavap,2)-1
   all_m_high_head_tavap = m_high_head_tavap{i} + all_m_high_head_tavap;
end
all_m_high_head_tavap =all_m_high_head_tavap./size(m_high_head_tavap,2);

%% average across all high head female luteal
all_fm_high_head_tavap = fm_high_head_tavap{1};
for i = 2:size(fm_high_head_tavap,2)-1
   all_fm_high_head_tavap = fm_high_head_tavap{i} + all_fm_high_head_tavap;
end
all_fm_high_head_tavap =all_fm_high_head_tavap./size(fm_high_head_tavap,2);

%%
%

figure
hold on
% plot mean of time average wt
plot(log10(1./m_high_head_f{1}), all_m_high_head_tavap,'color', 'b');
plot(log10(1./fm_high_head_f{1}), all_fm_high_head_tavap,'color', 'r');

xlim([-0.5 2.2]);
xlabel('Log scale = log(1/f)')
ylabel('Average scalogram (au)')
set(gca,'XDir','reverse')
% making vertica lines for frequency section
xline(log10(1./0.62),'--','Heart')
xline(log10(1./0.145),'--','Respiratory')
xline(log10(1./0.052),'--','Myogenic')
xline(log10(1./0.02),'--','Neurogenic')
xline(log10(1./0.0095),'--','Endothelial(NO-dependent)')
xline(log10(1./0.003),'--','Endothelial(NO-independent)')
legend('Male',"Female")
hold on
plot(log10(1./m_high_head_f{1}), y_up1,'color', 'b','HandleVisibility','off');
plot(log10(1./m_high_head_f{1}), y_low1,'color', 'b','HandleVisibility','off');
plot(log10(1./fm_high_head_f{1}), y_up2,'color', 'r','HandleVisibility','off');
plot(log10(1./fm_high_head_f{1}), y_low2,'color', 'r','HandleVisibility','off');
title("high head Male vs Female")
%% first we apply filter high arm
% apuiring the wavelet transform values for low arm group(male vs female)
%Add filter:
%Step 1: type filterDesigner
%Step 2: Export as variable - Rectangular, Kaiser, Hamming
Rectangular = filter_rectangular;
%Hamming = filter_hamming;
%Kaiser = filter_kaiser; %Applied Kaiser, order 16, beta 0.5
Fs = 40;
fb = cwtfilterbank("SignalLength",36000,"Wavelet","amor",'SamplingFrequency',40);
%%
for i = 1:size(m_high_arm,2)
   testfilt = filter(Rectangular, m_high_arm{i}(:,1));
   m_high_arm{i}(:,1) = testfilt;
   %[m_high_arm_wt{i},m_high_arm_f{i},~] = cwt(m_high_arm{i}(:,1),'amor',Fs);
   [m_high_arm_tavap{i},m_high_arm_f{i} ]= timeSpectrum(fb,m_high_arm{i}(:,1),"Normalization","pdf");
end
%%
for i = 1:size(fm_high_arm,2)
   testfilt = filter(Rectangular, fm_high_arm{i}(:,1));
   fm_high_arm{i}(:,1) = testfilt;
   %[m_high_arm_wt{i},m_high_arm_f{i},~] = cwt(m_high_arm{i}(:,1),'amor',Fs);
   [fm_high_arm_tavap{i},fm_high_arm_f{i} ]= timeSpectrum(fb,fm_high_arm{i}(:,1),"Normalization","pdf");
end
%% calculate confidence intervel for each point across all individual
% first get each element of each individual
% to get ith emement
for i = 1   : size(m_high_arm_tavap{1},1)
    % of jth person
    clear element
    for j=1:size(m_high_arm_tavap,2)
        % because only have one column(1,i)
         element(j,1) = m_high_arm_tavap{j}(i,1);
    
    end  
    pd = fitdist(element,'Normal');
    ci = paramci(pd)
    y_up1(i,1) = ci(2,1);
    y_high1(i,1) = ci(1,1);
end

%% female 
for i = 1   : size(fm_high_arm_tavap{1},1)
    % of jth person
    clear element
    for j=1:size(fm_high_arm_tavap,2)
        % because only have one column(1,i)
         element(j,1) = fm_high_arm_tavap{j}(i,1);
    
    end  
    pd = fitdist(element,'Normal');
    ci = paramci(pd)
    y_up2(i,1) = ci(2,1);
    y_high2(i,1) = ci(1,1);
end
%% Creating an average scalogram (au) v.s. log scale = log(1/f) plot
% average across all high arm male
all_m_high_arm_tavap = m_high_arm_tavap{1};
for i = 2:size(m_high_arm_tavap,2)-1
   all_m_high_arm_tavap = m_high_arm_tavap{i} + all_m_high_arm_tavap;
end
all_m_high_arm_tavap =all_m_high_arm_tavap./size(m_high_arm_tavap,2);

%% average across all high arm female luteal
all_fm_high_arm_tavap = fm_high_arm_tavap{1};
for i = 2:size(fm_high_arm_tavap,2)-1
   all_fm_high_arm_tavap = fm_high_arm_tavap{i} + all_fm_high_arm_tavap;
end
all_fm_high_arm_tavap =all_fm_high_arm_tavap./size(fm_high_arm_tavap,2);

%%
%

figure
hold on
% plot mean of time average wt
plot(log10(1./m_high_arm_f{1}), all_m_high_arm_tavap,'color', 'b');
plot(log10(1./fm_high_arm_f{1}), all_fm_high_arm_tavap,'color', 'r');

xlim([-0.5 2.2]);
xlabel('Log scale = log(1/f)')
ylabel('Average scalogram (au)')
set(gca,'XDir','reverse')
% making vertica lines for frequency section
xline(log10(1./0.62),'--','Heart')
xline(log10(1./0.145),'--','Respiratory')
xline(log10(1./0.052),'--','Myogenic')
xline(log10(1./0.02),'--','Neurogenic')
xline(log10(1./0.0095),'--','Endothelial(NO-dependent)')
xline(log10(1./0.003),'--','Endothelial(NO-independent)')
legend('Male',"Female")
hold on
plot(log10(1./m_high_arm_f{1}), y_up1,'color', 'b','HandleVisibility','off');
plot(log10(1./m_high_arm_f{1}), y_low1,'color', 'b','HandleVisibility','off');
plot(log10(1./fm_high_arm_f{1}), y_up2,'color', 'r','HandleVisibility','off');
plot(log10(1./fm_high_arm_f{1}), y_low2,'color', 'r','HandleVisibility','off');
title("high arm Male vs Female")


