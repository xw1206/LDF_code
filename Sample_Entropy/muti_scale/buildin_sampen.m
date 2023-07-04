%%
clear all


%% 
%ids = [1001 1006 1008 1012 1052 1125 1156 1173 1219 1245 1252 1372 1388 1397 1426 1439 1444 1454 1521 1570 1578 1598 1604 1625 1633 1664 1711 1774 1787 1804 1817 1837 1907 1921 1970];
ids = [2002 2030 2042 2083 2095 2124 2182 2190 2221 2233 2253  2301 2322 2355 2371 2408 2441 2480 2531 2532 2577 2604 2641 2675 2682 2739 2760 2811 2822 2853 2905 2914 2930 2998];

for i = 1:length(ids)

    fileID = ids(i);
    str_fileID = char(fileID);
% 
%     higharm_filename = sprintf('./man_data/%d/higharm2_%d.csv', str_fileID,fileID);
%     highhead_filename = sprintf('./man_data/%d/highhead2_%d.csv', str_fileID,fileID);
%     lowarm_filename = sprintf('./man_data/%d/lowarm2_%d.csv', str_fileID,fileID);
%     lowhead_filename = sprintf('./man_data/%d/lowhead2_%d.csv', str_fileID,fileID);

    higharm_filename = sprintf('./woman_data/%d/higharm2_%d.csv', str_fileID,fileID);
    highhead_filename = sprintf('./woman_data/%d/highhead2_%d.csv', str_fileID,fileID);
    lowarm_filename = sprintf('./woman_data/%d/lowarm2_%d.csv', str_fileID,fileID);
    lowhead_filename = sprintf('./woman_data/%d/lowhead2_%d.csv', str_fileID,fileID);

    higharm{i} = readmatrix(higharm_filename);
    highhead{i} = readmatrix(highhead_filename);
    lowarm{i} = readmatrix(lowarm_filename);
    lowhead{i} = readmatrix(lowhead_filename);

end

male = [higharm; highhead; lowarm; lowhead];

% test = load('./matlab.mat')
% data = test.LDF_Nov21

%% Store them all in one test variable
% select different pair test you want to minimalzie run time
%low_arm
test1 = lowarm; 
%test1 = lowhead; 

% low_head
%test1 = m_lowtemp_head; 
%test2 = fm_lowtemp_head;

% high_arm
test2 =higharm;
%test2 = highhead;

% high_head
% test1 = m_hightemp_head; 
% test2 = fm_hightemp_head;

%Format: 
% - Row: same type of data (location/gender)
% - Column: one dataset(people)
%% Add filter (optional)

%Add filter:
% Step 1: type filterDesigner
%Step 2: Export as variable - Rectangular, Kaiser, Hamming
Rectangular = filter_rectangular;
%Hamming = filter_hamming;
%Kaiser = filter_kaiser; %Applied Kaiser, order 16, beta 0.5

%Step 3: apply the filter
%Full data: (all of time, not split into high vs low temp)
% testfull(:,1) = filter(Rectangular, dat.Flux1);
% testfull(:,2) = filter(Rectangular, dat.Flux2);

%Sectioned data: (based on what you put in the test variable)
for i = 1:size(test1,2)
    testfilt1 = filter(Rectangular, test1{i}(:,1));
    test1{i}(:,1) = testfilt1;
    testbinary1{i}(:,1) = convert_time2binary(testfilt1);
end
%%
for i = 1:size(test2,2)
    testfilt2 = filter(Rectangular, test2{i}(:,1));
    test2{i}(:,1) = testfilt2;
    testbinary2{i}(:,1) = convert_time2binary(testfilt2);
end
%% test
rearranged1{1}
length(ids)
%% calculate mutiscale for each person
Mobj =MSobject('SampEn','r',1);
idx1 = 1;
for i = 1:size(testbinary1,2)   
      [MSx{i}(:,:),CI{i}(:,:)]= MSEn(testbinary1{i}(:,1),Mobj,'Scale',25,'RadNew',1);
       
end

Mobj =MSobject('SampEn','r',1);

for i = 1:size(testbinary2,2)   
      [MSx2{i}(:,:),CI2{i}(:,:)]= MSEn(testbinary2{i}(:,1),Mobj,'Scale',25,'RadNew',1);
       
end
%% rearrange the data so we can have each scale in one cell 
for j = 1: size(MSx,2)
    for i=1:25
         rearranged1{i}(j,1) = MSx{j}(:,i);
         rearranged1{i}(j,2) = MSx2{j}(:,i);
    
    end  
   
end
%%  compute average
    for i = 1: size(rearranged1,2)
        sp1(1,i) = mean(rearranged1{i},'all');
        SEM1(1,i) = std(rearranged1{i})/sqrt(length(ids));

        sp2(1,i) = mean(rearranged2{i},'all');
        SEM2(1,i) = std(rearranged2{i})/sqrt(length(ids));
    end   

% hold on
%%

scale_test = 1:25;
hold on
errorbar(scale_test,sp1,SEM1,'-*b')
errorbar(scale_test,sp2,SEM2,'-*r')
        
legend('low','high')
title('Muti Scale Sample Entropy Forarm')

%% 
filename = 'woman_arm2.xlsx';
for i=1:25
  
    writematrix(rearranged1{1,i}, filename,'Sheet',i,'Range','B2:C36');
end
%%
