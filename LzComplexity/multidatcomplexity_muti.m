%Apply 3 filters to data

%Inputs:
% test: cell array
%   - 3 columns: data filtered using 3 filters (1 is rectangular, 2 is
%   hamming, 3 is kaiser) -- AT LEAST 1 COLUMN REQUIRED
%   - 4 rows: consisting of low temp and high temp forehead, low temp and
%   high temp forearm. Order does not matter, input however you want.

%Outputs:
% C: complexity values 
%   - 3 columns, each reflecting a different filter (1 is rectangular, 2 is
%   hamming, 3 is kaiser)
%   - 4 rows consisting of: low temp and high temp forehead, low temp and
%   high temp forearm. Order is the same as the order in 'test'
%   - 3rd dimension: scale values

function [C] = multidatcomplexity(test)

%Add filter:
% Step 1: type filterDesigner
%Step 2: Export as variable - Rectangular, Kaiser, Hamming
Rectangular = filter_rectangular;
%Hamming = filter_hamming;
%Kaiser = filter_kaiser; %Applied Kaiser, order 16, beta 0.5

%Step 3: Run line below to filter dat with corresponding windowing method
for i = 1:size(test,1)
    %testfilt{i}(:,1) = filter(Rectangular,test{i}{:,2});
      testfilt{i}(:,1) = filter(Rectangular,test{i,1});
    %testfilt{i}(:,2) = filter(Hamming,test{i}(:,2)); 
    %testfilt{i}(:,3) = filter(Kaiser,test{i}(:,2)); 
end

%% Perform Multiscale Complexity on it

%(Figure 7 from Thanaj et al 2018 paper)

%The scales we want on the x-axis
scale = [1:25]';

%Calculate complexity values
for k = 1:size(test,1) %The 4 cases
    for j = 1:size(testfilt{1},2) %The 3 filters
        for i = 1:scale(end) %for each scale value
            %Import scaled data
            %function [dat_scaled] = convert_datscale(flux, SHtemp, scale)
           % [bintest] = convert_datscale(testfilt{k}(:,j), test{k}{:,3}, scale(i));
            [bintest] = convert_datscale_muti(testfilt{k}(:,j), scale(i));
            %Convert scaled data to binary
            [bintest_scaled] = convert_time2binary_muti(bintest);
            %Calculate complexity value of each scaled data
            C(k,j,i) = calc_lz_complexity(bintest_scaled(:,2), 'exhaustive', 1);
            %Format:
            %Row: Each of the cases
            %Column: Same cases across for 4 datasets
            %3rd dimension: scale values
        end
    end
end

end



