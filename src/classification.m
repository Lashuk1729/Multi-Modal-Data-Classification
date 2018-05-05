GT = multibandread('2018_IEEE_GRSS_DFC_GT_TR',[4768,1202,1],'int8',0,'bsq','ieee-le');
ground_truth=GT(:,:,1);
ground_truth=downsample(ground_truth,2);


