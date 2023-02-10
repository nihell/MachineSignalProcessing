load('C:\!!_2021\hebda_infogram\niecykliczny_noise.mat')
sig1a=Y(:,1);
sig1b=Y(:,2);
t1=(0:length(sig1a)-1)/FS;
load('C:\!!_2021\hebda_infogram\cykliczny_noise.mat')
sig2a=Y(:,1);
sig2b=Y(:,2);
t2=(0:length(sig2a)-1)/FS;
load('C:\!!_2021\hebda_infogram\dobry.mat')
sig3a=Y(:,1);
sig3b=Y(:,2);
t3=(0:length(sig3a)-1)/FS;

figure
subplot(321)
plot(t1,sig1a)

title(num2str(kurtosis(sig1a)))
subplot(322)
plot(t1,sig1b)
title(num2str(kurtosis(sig1a)))

subplot(323)
plot(t2,sig2a)

title(num2str(kurtosis(sig2a)))
subplot(324)
plot(t2,sig2b)
title(num2str(kurtosis(sig2a)))

subplot(325)
plot(t3,sig3a)
title(num2str(kurtosis(sig3a)))

subplot(326)
plot(t3,sig3b)
title(num2str(kurtosis(sig3b)))



%%
figure
subplot(321)
spectrogram(sig1a,kaiser(500,5),475,512,FS);
 colormap jet
subplot(322)
spectrogram(sig1b,kaiser(500,5),475,512,FS);
 colormap jet
subplot(323)
spectrogram(sig2a,kaiser(500,5),475,512,FS);
 colormap jet
subplot(324)
spectrogram(sig2b,kaiser(500,5),475,512,FS);
 colormap jet
subplot(325)
spectrogram(sig3a,kaiser(500,5),475,512,FS);
 colormap jet
subplot(326)
spectrogram(sig3b,kaiser(500,5),475,512,FS);
 colormap jet

 
 %%
 figure
 subplot(321)
 [t1,SRF1a]=filtruj_bandpass(t1,sig1a,'',3000,20000);
 plot(t1,SRF1a)
 
 subplot(322)
 [t1,SRF1b]=filtruj_bandpass(t1,sig1b,'',3000,20000);
 plot(t1,SRF1b)
 

 
 subplot(323)
 [t2,SRF2a]=filtruj_bandpass(t2,sig2a,'',3000,20000);
 plot(t2,SRF2a)
 
 subplot(324)
 [t2,SRF2b]=filtruj_bandpass(t2,sig2b,'',3000,20000);
 plot(t2,SRF2b)
 
 
 
 subplot(325)
 [t3,SRF3a]=filtruj_bandpass(t3,sig3a,'',3000,20000);
 plot(t3,SRF3a)
 
 subplot(326)
 [t3,SRF3b]=filtruj_bandpass(t3,sig3b,'',3000,20000);
 plot(t3,SRF3b)
 
 
 