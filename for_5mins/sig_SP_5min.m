clear all
%% ids = [1012 1052 1156 1173 1252 1397 1426 1439 1578 1774 1921 2042 2083 2095 2190 2221 2322 2355 2531 2682 2760 2811 2930 2998]
%ids = [1001 1006 1008 1012 1052 1125 1156 1173 1219 1245 1252 1372 1388 1397 1426 1439 1444 1454 1521 1570 1578 1598 1604 1625 1633 1664 1711 1774 1787 1804 1817 1837 1907 1921 1970];

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
    
    higharm_filename = sprintf('/Users/kitty/Desktop/4970/for_results/woman_data/%d/higharm1_%d.csv', str_fileID,fileID);
    highhead_filename = sprintf('/Users/kitty/Desktop/4970/for_results/woman_data/%d/highhead1_%d.csv', str_fileID,fileID);
    lowarm_filename = sprintf('/Users/kitty/Desktop/4970/for_results/woman_data/%d/lowarm1_%d.csv', str_fileID,fileID);
    lowhead_filename = sprintf('/Users/kitty/Desktop/4970/for_results/woman_data/%d/lowhead1_%d.csv', str_fileID,fileID);

    higharm{i} = readmatrix(higharm_filename,'Range','A1:A12000');
    highhead{i} = readmatrix(highhead_filename,'Range','A1:A12000');
    lowarm{i} = readmatrix(lowarm_filename,'Range','A1:A12000');
    lowhead{i} = readmatrix(lowhead_filename,'Range','A1:A12000');

end

%male = [higharm; highhead; lowarm; lowhead];




%% Store them all in one test variable
% select different pair test you want to minimalzie run time
%low_arm
%test1 = lowarm; 
test1 = lowhead; 

% low_head
%test1 = m_lowtemp_head; 
%test2 = fm_lowtemp_head;

% high_arm
%test2 =higharm;
test2 = highhead;

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



