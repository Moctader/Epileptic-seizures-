for i=4
load('521282S_eeg_data_4.mat')
end

[S,F,T,P] = spectrogram(signal,30*Fs,29*Fs,[0.1:0.1:32],Fs);
figure()
subplot(3,1,1)
plot(t,signal)
set(gca,'ylim',[-1000 1000])
subplot(3,1,2)
imagesc(T/60,F,log10(P),[-4 6]);axis xy;
subplot(3,1,3)
[se,te] = pentropy(signal,t');
plot(te,se);

%%
signal1=signal(:,Fs*320:Fs*330)
signal2=signal(:,Fs*400:Fs*410)
figure()
subplot(2,1,1)
plot(t1,signal1)
subplot(2,1,2)
plot(t1,signal2)
set(gca,'ylim',[-1000 1000])

%% Nonlinear method

signal3=signal(:,Fs*208:Fs*440)
figure()
subplot(2,1,1)
plot(t2,signal3)
set(gca,'ylim',[-1000 1000])

D=67; %delta
figure()
plot([-1500 1500],[-1500 1500], '.');
hold on
plot(signal3(1,Fs*100:Fs*132),signal3(1,Fs*100+D:Fs*132+D),'r');

plot(signal3(1,Fs*1:Fs*100),signal3(1,Fs*1+D:Fs*100+D),'k');

plot(signal3(1,Fs*132:Fs*142),signal3(1,Fs*132+D:Fs*142+D),'c');






