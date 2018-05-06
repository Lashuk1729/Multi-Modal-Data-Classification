GT = multibandread('2018_IEEE_GRSS_DFC_GT_TR',[1202,4768,1],'int8',0,'bsq','ieee-le');
ground_truth=GT(:,:,1);
gT = ground_truth;
for i = 1:size(ground_truth,1)
    for j = 1:size(ground_truth,2)
        if (eq(ground_truth(i,j),10))
            ground_truth(i,j) = 1;
        elseif (eq(ground_truth(i,j),11))
            ground_truth(i,j) = 1;
        elseif (eq(ground_truth(i,j),12))
            ground_truth(i,j) = 1;
        elseif (eq(ground_truth(i,j),14))
            ground_truth(i,j) = 1;
        else
            ground_truth(i,j) = 0;
        end
    end
end

ground_truth=ground_truth(1:4:end,1:4:end);
size(ground_truth)
imagesc(ground_truth)
colorbar

%{
all_EAPs=cat(3,EAP1,EAP2,EAP3,EAP4,EAP5,EAP6,EAP7,EAP8);
X1 = reshape(EAP1,size(EAP1,1)*size(EAP1,2),1);
X2 = reshape(EAP2,size(EAP2,1)*size(EAP2,2),1);
X3 = reshape(EAP3,size(EAP3,1)*size(EAP3,2),1);
X4 = reshape(EAP4,size(EAP4,1)*size(EAP4,2),1);
X5 = reshape(EAP5,size(EAP5,1)*size(EAP5,2),1);
X6 = reshape(EAP6,size(EAP6,1)*size(EAP6,2),1);
X7 = reshape(EAP7,size(EAP7,1)*size(EAP7,2),1);
X8 = reshape(EAP8,size(EAP8,1)*size(EAP8,2),1);
features = cat(2,X1,X2,X3,X4,X5,X6,X7,X8);
%}

%labels=reshape(ground_truth',601*2384,1);
