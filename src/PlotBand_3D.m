clear
X = multibandread('2018_IEEE_GRSS_DFC_HSI_TR',[601,2384,50],'uint16',0,'bsq','ieee-le');
[row, col, band] = size(X);
%for i = 1:band    
    Y = squeeze(X(:,:,1));
    vec1, vec2, vec3, vec4 = Img2Vect(Y,row,col);
    pause(5);
%end