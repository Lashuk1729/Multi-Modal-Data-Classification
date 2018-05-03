clear
X = multibandread('2018_IEEE_GRSS_DFC_HSI_TR',[601,2384,50],'uint16',0,'bsq','ieee-le');
[row, col, band] = size(X);

vec1=zeros(band,357900);
vec2=zeros(band,357300);
vec3=zeros(band,357900);
vec4=zeros(band,357300);


for i = 1:band    
    Y = X(:,:,i);
    [v1, v2, v3, v4] = Img2Vect(Y,row,col);
    vec1(i,:)=v1;
    vec2(i,:)=v2;
    vec3(i,:)=v3;
    vec4(i,:)=v4;
    
    %pause(5);
end

