%Coarse Graining - using Mean method to scale down dataset
%dat = the data we want to scale. Format should reflect original csv files
%after reading it in through readtable
%scale = how much to scale it (whole number value)

%function [dat_scaled] = convert_datscale(flux, SHtemp, scale)
function [dat_scaled] = convert_datscale(flux,scale)

%Create columns
for i = 1:size(flux,1)/scale
    %Calculate Index values
    index_scaled(i,:) = i*scale-1;
    %Calculate Flux1 values (For this code, used mean)
    flux_scaled(i,:) = mean(flux(scale*(i-1)+1:i*scale));
    %Calculate SHTemp1 values (For this code, used mean)
    %SHtemp_scaled(i,:) = mean(SHtemp(scale*(i-1)+1:i*scale));  
end

%Create table
dat_scaled = table(index_scaled,flux_scaled, ...
    'VariableNames', {'Index', 'Flux1'});

end

