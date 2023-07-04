%Converts time series data into a binary sequence based on Chipperfield et al. 2019
%(If the next value is greater than the prior value, 1. If less, 0)

function [bindat] = convert_time2binary(dat)

%If data type is table, convert to array
if class(dat) == "table"
    dat = table2array(dat); %convert table into a double array   
end

%Initialize bindat variable
bindat = dat;
%Delete the last row of bindat because we cannot calculate the binary
%sequence value for the last value of the dat.Flux1 (it's based on the
%increase/decrease of the signal, which depends on the next value, which
%the last value doesn't have)
bindat(end,:) = [];

if size(dat,2) == 1  
    %For each element in dat, bindat = 1 if dat(i+1) is greater than dat(i)
    for i = 1:size(bindat,1)
        bindat(i) = dat(i+1) > dat(i);
    end
else
    %For each element in dat, bindat = 1 if dat(i+1) is greater than dat(i)
    for i = 1:size(bindat,1)
        bindat(i,2) = dat(i+1,2) > dat(i,2);
    end 
end

end

