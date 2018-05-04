X = multibandread('2018_IEEE_GRSS_DFC_HSI_TR',[601,2384,50],'uint16',0,'bsq','ieee-le');

band=X(:,:,1);
band1 = reshape(band,size(band,1)*size(band,2),1);
[coeff,score]=pca(band1);
new1= reshape(score,size(band,1),size(band,2));


