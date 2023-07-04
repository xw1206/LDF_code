%% this will help calculate the multiscale lz complexity
% develop by Yuki and Xuan
% will take around 1 hour, please test on one participent first
clear all
%% change the ID as you want
ids = [1001 1006 1008 1012 1052 1125 1156 1173 1219 1245 1252 1372 1388 1397 1426 1439 1444 1454 1521 1570 1578 1598 1604 1625 1633 1664 1711 1774 1787 1804 1817 1837 1907 1921 1970];
%ids = [2002 2030 2042 2083 2095 2124 2182 2190 2221 2233 2253  2301 2322 2355 2371 2408 2441 2480 2531 2532 2577 2604 2641 2675 2682 2739 2760 2811 2822 2853 2905 2914 2930 2998];


for i = 1:length(ids)

    fileID = ids(i);
    str_fileID = char(fileID);
% 
    higharm_filename = sprintf('/Users/kitty/Desktop/4970/for_results/man_data/%d/higharm1_%d.csv', str_fileID,fileID);
 
    highhead_filename = sprintf('/Users/kitty/Desktop/4970/for_results/man_data/%d/highhead1_%d.csv', str_fileID,fileID);
    lowarm_filename = sprintf('/Users/kitty/Desktop/4970/for_results/man_data/%d/lowarm1_%d.csv', str_fileID,fileID);
    lowhead_filename = sprintf('/Users/kitty/Desktop/4970/for_results/man_data/%d/lowhead1_%d.csv', str_fileID,fileID);
%     
%     higharm_filename = sprintf('/Users/kitty/Desktop/4970/for_results/woman_data/%d/higharm1_%d.csv', str_fileID,fileID);
%     highhead_filename = sprintf('/Users/kitty/Desktop/4970/for_results/woman_data/%d/highhead1_%d.csv', str_fileID,fileID);
%     lowarm_filename = sprintf('/Users/kitty/Desktop/4970/for_results/woman_data/%d/lowarm1_%d.csv', str_fileID,fileID);
%     lowhead_filename = sprintf('/Users/kitty/Desktop/4970/for_results/woman_data/%d/lowhead1_%d.csv', str_fileID,fileID);

    higharm{i} = readmatrix(higharm_filename);
    highhead{i} = readmatrix(highhead_filename);
    lowarm{i} = readmatrix(lowarm_filename);
    lowhead{i} = readmatrix(lowhead_filename);

end

%% Store them all in one test variable
% select different pair test you want to minimalzie run time
% %low_arm
% test1 = lowarm; 
% %test1 = lowhead; 
% 
% % high_arm
% test2 =higharm;
% %test2 = highhead;

test = [lowarm;  lowhead; higharm; highhead];
%Format: 
% - Row: same type of data (location/gender)
% - Column: one dataset(people)

%% Calculate complexity 

%Get Complexity values for each dataset
for i = 1:size(test,2)
    [C(i,:,:,:)] = multidatcomplexity_muti(test(:,i));
    %Format:
    % - Row: same type of data (location/temp)
    % - Column: one dataset
end

%%

