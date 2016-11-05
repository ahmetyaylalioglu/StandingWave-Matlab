clc;
l=1.5;%Hatt�n uzunlugu
zl=10;%Y�k�n empedans�
f=0.2;%frekans
zo=40;%Hatt�n karakteristik empedans�
r =((zl-zo)/(zl+zo));
s =(1+abs(r))./(1-abs(r));
z=linspace(0,l,1000);
for t=1:0.05:1000
    Viletilen=exp((2*pi*f*t)*1i).*exp((-2*pi*z)*1i);
    Vyansiyan=r.*exp(2*pi*f.*t*1i)*exp(2*pi.*z*1i);
    v=Viletilen+Vyansiyan;
   %plot(z,v,'b',z,Viletilen,'c',z,Vyansiyan,'m');
   plot(z,v,'b');
   ylim([-2,2]);
   drawnow;   
end