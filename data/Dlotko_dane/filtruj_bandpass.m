function [t,SRF]=filtruj_bandpass(t,SR,nazwa,fd,fg);

test='n'						% 'tak' lub nie
filtracja='t'
rodzajfiltru ='b' 		%band or low
%fd=1500;						%dolna
%fg=4500;						%gora



fgg=1000;						%lowpass
%koniec Sterowanie programem  50-300 fz2  
	fs=1/(t(2)-t(1));


	if test=='t'
      szum=rand(50000,1);  smax=length(t);  SR=szum(1:smax);
      subplot(2,1,1)
      widmo5(szum,fs,'a')   ;
      osie=axis;
  else %test
	   %do nothing
%      subplot(2,1,1)
%      [p,f]=widmo5(SR,fs,'a')   ;
      %close 
%      osie=axis;       
	end%test




%sygnal oryginalny
   
%%if filtracja=='t' 
%%	figure; subplot(3,1,1)  
%%		if test=='t'
%%				widmo5(SR,fs,'a')   ;
%%	   	else %test
%%	      	plot(t,SR,'k'); title(['sygnal oryginalny   ',nazwa, ',  sygn. po filtracji i widmo obwiedni '])
%%	   end%test
%jesli filtracja =t
	%%%%%%%%%%%%%%%przygotowanie filtru gornoprzepustowego
	fmax=fs/2;  r=fmax/fs;   N=4;
	pasmo2=[fd fg]*2/fs;
   pasmo=[fgg]*2/fs;
   %   budowa filtru
		   if rodzajfiltru =='b' 
		      [B,A]=ellip(N,0.5,50,pasmo2,'bandpass');
		   else
				[B,A]=ellip(N,0.1,100,pasmo,'low');
		   end	 %rodzaj filtru
         
   %%%%%%%%%%%%%%%%%%%%%%filtracja dolu - gora out
	SRF=filter(B,A,SR); 
	%%%%%%%%%%%%%%%%%%%%%%wyniki po filtracji dolu
   %figure
   if test=='t'
%      subplot(2,1,2)

%widmo5(SRF,fs,'a')   ;
%axis([osie])
	else %koniec testu wyswietlanie czasowki po filtracji
       
%        [pf,ff]=widmo5(SRF,fs,'a')   ;
        
%        plot(f,p);
%        hold
%        plot(ff,pf,'r');
%        axis([osie])        
%        hold
%        pause
%        figure
%        subplot(211)        
%
%        plot(t,SR)        
%        subplot(212)        
%        plot(t,SRF,'r')


	end %test (koniec wyswietlania)

   
%%else %bez filracji
 
%end %bez filtracji


return


