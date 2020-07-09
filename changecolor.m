clear;
clc;
[fileName,filePath] = uigetfile('*');
str  = strcat(filePath,fileName);
input_img =  imread(str);
rgb = input_img;
figure;
imshow(rgb);
R=rgb(:,:,1); %red
G=rgb(:,:,2); %green
B=rgb(:,:,3); %blue
[x,y,z]=size(rgb);
for i=1:x
    for j=1:y
        if( (R(i,j) >= 190) && (R(i,j) <=255) && (G(i,j) >=190) && (G(i,j) <=255)&&(B(i,j) >=190) && (B(i,j) <=255) )
            %the RGB value can be customized
            R(i,j) = 255;
            G(i,j) = 255;
            B(i,j) = 255;
        end
%          if( (R(i,j) ==218) && (G(i,j) ==218) && (B(i,j) ==218) )
%             R(i,j) = 255;
%             G(i,j) = 255;
%             B(i,j) = 255;
%          end
    end
end
% in this way
% blue(:,:,1)=R(:,:);
% blue(:,:,2)=G(:,:);
% blue(:,:,3)=B(:,:);
% 
% % another way
for i=1:x
    for j=1:y
        output(i,j,1) = R(i,j);
        output(i,j,2) = G(i,j);
        output(i,j,3) = B(i,j);
    end
end

figure;
imshow(output);
imwrite(output,'output.png')