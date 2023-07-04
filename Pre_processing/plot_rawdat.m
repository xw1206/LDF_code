%Plots the raw data in the dataset


function plot_rawdat(dat, ndatsec)

%Convert Index to Time (minutes)
% dat.Index = dat.Index/(40*60);

%Plot forearm
figure
subplot(2,1,1)
hold on
yyaxis left %Plot the flux

% plot(dat.Index, dat.Flux1); %/max(dat.Flux1))
plot(dat(:,1), dat(:,2))
ylabel('Flux')
ylim([0 750])
yyaxis right %Plot the temperature
%plot(dat.Index, dat.SHTemp1)
plot(dat(:,1), dat(:,3))
ylim([0 50])
ylabel('Temperature (C)')
%legend('Flux','Temp','AutoUpdate','off') %Add a legend
title('Forearm')
%xlabel('Time (minutes)') %Some unit of time

%Plot forehead
subplot(2,1,2)
hold on
yyaxis left %Plot the flux
%plot(dat.Index, dat.Flux2); %/max(dat.Flux2))
plot(dat(:,1), dat(:,4)); 
ylabel('Flux')
ylim([0 750])
yyaxis right %Plot the temperature
%plot(dat.Index, dat.SHTemp2)
plot(dat(:,1), dat(:,5))
ylim([0 50])
ylabel('Temperature (C)')
legend('Flux','Temp','AutoUpdate','off') %Add a legend
title('Forehead')
xlabel('Index') %Some unit of time

%% plot line separating segments

%split equally
if any(ndatsec)
    for i = 1:max(dat(:,1))/(ndatsec)
        subplot(2,1,1)
        xline(ndatsec*i)
        subplot(2,1,2)
        xline(ndatsec*i)
    end 
end

end
