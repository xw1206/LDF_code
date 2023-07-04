clear all
%% ids = [1012 1052 1156 1173 1252 1397 1426 1439 1578 1774 1921 2042 2083 2095 2190 2221 2322 2355 2531 2682 2760 2811 2930 2998]
%ids = [1006 1008 1012 1052 1125 1156 1173 1219 1245 1252 1388 1397 1426 1439 1444 1454 1521 1570 1578 1598 1604 1625 1633 1664 1711 1774 1787 1804 1817 1837 1907 1921 1970];
ids = [2002 2030 2042 2083 2095 2124 2182 2190 2221 2233 2253  2301 2322 2355 2371 2408 2441 2480 2531 2532 2577 2604 2641 2675 2682 2739 2760 2811 2822 2853 2905 2914 2930 2998];


for i = 1:length(ids)

    fileID = ids(i);
    str_fileID = char(fileID);
% 
%     higharm_filename = sprintf('/Users/kitty/Desktop/4970/for_results/man_data/%d/higharm2_%d.csv', str_fileID,fileID);
%  
%     highhead_filename = sprintf('/Users/kitty/Desktop/4970/for_results/man_data/%d/highhead2_%d.csv', str_fileID,fileID);
%     lowarm_filename = sprintf('/Users/kitty/Desktop/4970/for_results/man_data/%d/lowarm2_%d.csv', str_fileID,fileID);
%     lowhead_filename = sprintf('/Users/kitty/Desktop/4970/for_results/man_data/%d/lowhead2_%d.csv', str_fileID,fileID);
%     
    higharm_filename = sprintf('/Users/kitty/Desktop/4970/for_results/woman_data/%d/higharm2_%d.csv', str_fileID,fileID);
    highhead_filename = sprintf('/Users/kitty/Desktop/4970/for_results/woman_data/%d/highhead2_%d.csv', str_fileID,fileID);
    lowarm_filename = sprintf('/Users/kitty/Desktop/4970/for_results/woman_data/%d/lowarm2_%d.csv', str_fileID,fileID);
    lowhead_filename = sprintf('/Users/kitty/Desktop/4970/for_results/woman_data/%d/lowhead2_%d.csv', str_fileID,fileID);

    higharm{i} = readmatrix(higharm_filename);
    highhead{i} = readmatrix(highhead_filename);
    lowarm{i} = readmatrix(lowarm_filename);
    lowhead{i} = readmatrix(lowhead_filename);

end

%male = [higharm; highhead; lowarm; lowhead];




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
%% convert to binary
%[testbinary1] = convert_time2binary(test1);
%% Useful parameters
N = size(testbinary1{1},1)
m =2;
r =1;
%s = std(testbinary1{1}(:,1)) 
dist_type =  'chebychev';
% 
idx1 = 1;
idx2 = 1;

% N is the  length  of  the  time  series,
% M is  the  length  of sequences  to  be  compared,  
% R is  the  tolerance  for accepting matches. It is convenient to set the tolerance as r*SD



%% r =1 

for i = 1:size(testbinary1,2)    
       result1(idx1) = sampen(testbinary1{i}(:,1), m, r, dist_type);   
       idx1 = idx1 + 1;
end


for i = 1:size(testbinary2,2)    
       result2(idx2) = sampen(testbinary2{i}(:,1), m, r, dist_type);   
       idx2 = idx2 + 1;
end
%% take the average
% sp1 = mean(result1,'all')
% sp2 = mean(result2,'all')
% 
% SEM1 = std(result1)/sqrt(length(result2));
% SEM2 = std(result2)/sqrt(length(result2));


%% RESULT FORM LAST RUN

% 
% lowarm =0.216320596
% higharm = 0.170655392
% semlowarm = 0.012060804
% semhigharm =0.008347074
% plot single scale
% 
% 
% subplot(1,2,1)
% hold on
% errorbar(-1,lowarm,semlowarm,'*b')
% errorbar(1,higharm,semhigharm,'*b')
% xlim([-2 2])
% xticks([-1 1])
% xticklabels({'low','high'})
% title('Forearm')
% 
% 
% subplot(1,2,2)
% hold on
% 
% errorbar(-1,sp1,SEM1,'*r')
% errorbar(1,sp2,SEM2,'*r')
% xlim([-2 2])
% xticks([-1 1])
% xticklabels({'low','high'})
% 
% title('Forehead')
% sgtitle('Single Scale Sample Entropy')
% legend('Froearm','','Forehead')
% 
% 
% 
% plot for gender
% clear all
% lowarm_m =0.2237	
% lowarm_wm = 0.2100	
% 
% higharm_m= 0.1669	
% higharm_wm = 0.1738	
% 
% lowhead_m= 0.1772	
% lowhead_wm = 0.1715	
% 
% highhead_m = 0.1467	
% highhead_wm =0.1526	
% 
% 
% lowarmsem_m = 0.021319727	
% lowarmsem_wm = 0.013676181
% 
% higharmsem_m=0.013004102	
% higharmsem_wm = 0.011202192
% 
% lowheadsem_m = 0.015990839	
% lowheadsem_m = 0.011561939
% 
% highheadsem_m = 0.011500277	
% highheadsem_wm = 0.006506148
% 
% subplot(1,2,1)
% hold on
% errorbar(-1,lowarm_m,lowarmsem_m,'*b')
% errorbar(1,higharm_m,higharmsem_m,'*b')
% xlim([-2 2])
% xticks([-1 1])
% xticklabels({'low','high'})
% title('Forearm')
% 
% 
% subplot(1,2,2)
% hold on
% 
% errorbar(-1,lowarm_wm,lowarmsem_wm,'*r')
% errorbar(1,higharm_wm,higharmsem_wm,'*r')
% xlim([-2 2])
% xticks([-1 1])
% xticklabels({'low','high'})
% 
% title('Forehead')
% sgtitle('Single Scale Sample Entropy')
% legend('Male','','Female')
% save the variable
% save("m_temp_arm.mat",'result1','result2')
% 
% 
% 
