%%%%%%%%%%%%%%%In this program testing is performed on datasets of Fingerprint
%%%%%%%%%%%%%%%six image is taken for training purpose
%%%%%feture extractio is taken by storing the standard deviation of
%%%%%selected block (after calculting DCT of image)as a feature vector
%%%%%%Single image is converted into vector of 1*39 only%%%%%%%

clear all;
close all;
clc;
no_im=(200*6);
aa='E:\MTECH_PROJECT\DATABASE\fp\';
i=1;
for f=151:200 
for j=1:6
%%%%%%%%%%%%%%%%%taking location of finger print 
str1=strcat('E:\Database\Finger print\',num2str(f),'\',num2str(j+1),'.bmp');
a=imread(str1);
[m,n,z]=size(a); %storing image
bc=imresize(a,[64,64]);
if(z==3)
b=rgb2gray(bc);
else
    b=bc;
end
d{i} = dct2(b);%%%%%%%%%%calculating DCT
%%%%%%%%%%% Block by block feature extraction%%%%%%%%%%%%%%%%%%%%
M1{i}=d{i}(1:4,1:4);
M2{i}=d{i}(1:8,1:8);
M3{i}=d{i}(17:32,17:32);
M4{i}=d{i}(17:20,17:20);
M5{i}=d{i}(17:32,1:16);
M6{i}=d{i}(1:4,9:12);
M7{i}=d{i}(9:12,9:12);
M8{i}=d{i}(17:20,9:12);
M9{i}=d{i}(9:12,17:20);
M10{i}=d{i}(25:28,9:12);
M11{i}=d{i}(17:20,17:20);
M12{i}=d{i}(25:28,17:20);
M13{i}=d{i}(1:4,25:28);
M14{i}=d{i}(17:20,25:28);
M15{i}=d{i}(9:12,25:28);
M16{i}=d{i}(25:28,25:28);
M17{i}=d{i}(1:4,33:36);
M18{i}=d{i}(1:4,41:44);
M19{i}=d{i}(9:12,33:36);
M20{i}=d{i}(9:12,40:44);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%5555555555
M21{i}=d{i}(21:24,53:56);
M22{i}=d{i}(13:16,45:48);
M23{i}=d{i}(53:56,21:24);
M24{i}=d{i}(45:48,13:16);
M25{i}=d{i}(1:8,61:64);% taking lower freq coefficient
M26{i}=d{i}(61:64,1:8);
M27{i}=d{i}(57:64,25:32);
M28{i}=d{i}(25:32,57:64);
M29{i}=d{i}(47:52,53:56);
M30{i}=d{i}(45:48,53:56);
M31{i}=d{i}(33:48,49:64);
M32{i}=d{i}(49:64,33:48);
M33{i}=d{i}(49:52,49:52);
M34{i}=d{i}(25:32,25:32);
M35{i}=d{i}(45:48,45:48);
M36{i}=d{i}(37:40,37:40);
M37{i}=d{i}(33:40,33:40);
M38{i}=d{i}(52:56,52:56);
M39{i}=d{i}(57:64,57:64);
%%%%%%%%%%%%%%%%calculating standard deviation of blocks%%%%%%%%%%%%%%%
s1{i}=std(M1{i});Fea(i,1)=0;%mean(s1{i});
s2{i}=std(M2{i});Fea(i,2)=0;%mean(s2{i});
s3{i}=std(M3{i});Fea(i,3)=0;%mean(s3{i});
s4{i}=std(M4{i});Fea(i,4)=mean(s4{i});
s5{i}=std(M5{i});Fea(i,5)=mean(s5{i});
s6{i}=std(M6{i});Fea(i,6)=mean(s6{i});
s7{i}=std(M7{i});Fea(i,7)=mean(s7{i});
s8{i}=std(M8{i});Fea(i,8)=mean(s8{i});
s9{i}=std(M9{i});Fea(i,9)=mean(s9{i});
s10{i}=std(M10{i});Fea(i,10)=mean(s10{i});
s11{i}=std(M11{i});Fea(i,11)=mean(s11{i});
s12{i}=std(M12{i});Fea(i,12)=mean(s12{i});
s13{i}=std(M13{i});Fea(i,13)=mean(s13{i});
s14{i}=std(M14{i});Fea(i,14)=mean(s14{i});
s15{i}=std(M15{i});Fea(i,15)=mean(s15{i});
s16{i}=std(M16{i});Fea(i,16)=mean(s16{i});
s17{i}=std(M17{i});Fea(i,17)=mean(s17{i});
s18{i}=std(M18{i});Fea(i,18)=mean(s18{i});
s19{i}=std(M19{i});Fea(i,19)=mean(s19{i});
s20{i}=std(M20{i});Fea(i,20)=mean(s20{i});
s21{i}=std(M21{i});Fea(i,21)=mean(s21{i});
s22{i}=std(M22{i});Fea(i,22)=mean(s22{i});
s23{i}=std(M23{i});Fea(i,23)=mean(s23{i});
s24{i}=std(M24{i});Fea(i,24)=mean(s24{i});
s25{i}=std(M25{i});Fea(i,25)=mean(s25{i});
s26{i}=std(M26{i});Fea(i,26)=mean(s26{i});% taken other than lower freq coefficient............................
s27{i}=std(M27{i});Fea(i,27)=mean(s27{i});
s28{i}=std(M28{i});Fea(i,28)=mean(s28{i});
s29{i}=std(M29{i});Fea(i,29)=mean(s29{i});
s30{i}=std(M30{i});Fea(i,30)=mean(s30{i});
s31{i}=std(M31{i});Fea(i,31)=mean(s31{i});
s32{i}=std(M32{i});Fea(i,32)=mean(s32{i});
s33{i}=std(M33{i});Fea(i,33)=mean(s33{i});
s34{i}=std(M34{i});Fea(i,34)=mean(s34{i});
s35{i}=std(M35{i});Fea(i,35)=mean(s35{i});
s36{i}=std(M36{i});Fea(i,36)=mean(s36{i});
s37{i}=std(M37{i});Fea(i,37)=mean(s37{i});
s38{i}=std(M38{i});Fea(i,38)=mean(s38{i});
s39{i}=std(M39{i});Fea(i,39)=mean(s39{i});
i=i+1;
end
end
fid = fopen('E:\Program Files (x86)\Microsoft Visual Studio 10.0\Project\Photo\Photo\Database\features_fingure_new.txt','w');
fprintf(fid,'%6.4f \n',Fea);
fclose(fid);