X = multibandread('2018_IEEE_GRSS_DFC_HSI_TR',[601,2384,50],'uint16',0,'bsq','ieee-le');

band=X(:,:,1);
band1 = reshape(band,size(band,1)*size(band,2),1);
[coeff,score]=pca(band1);
new1= reshape(score,size(band,1),size(band,2));

new_mat = reshape(new1,size(new1,1)*size(new1,2),1);
new_std = std(new_mat);

EAP8 = (new_std*ones(size(new1,1),size(new1,2)) - new1);

rand_arr = randi([uint8(min(min(new1))) uint8(max(max(new1)))], 1, 10);

EAP1 = new1;
for i = 1:size(new1,1)
    for j = 1:size(new1,2)
        if(EAP1(i,j) < rand_arr(1))
            EAP1(i,j) = 0;
        end
    end
end

EAP2 = new1;
for i = 1:size(new1,1)
    for j = 1:size(new1,2)
        if(EAP2(i,j) < rand_arr(2))
            EAP2(i,j) = 0;
        end
    end
end

EAP3 = new1;
for i = 1:size(new1,1)
    for j = 1:size(new1,2)
        if(EAP3(i,j) < rand_arr(3))
            EAP3(i,j) = 0;
        end
    end
end

EAP4 = new1;
for i = 1:size(new1,1)
    for j = 1:size(new1,2)
        if(EAP4(i,j) < rand_arr(4))
            EAP4(i,j) = 0;
        end
    end
end

EAP5 = new1;
for i = 1:size(new1,1)
    for j = 1:size(new1,2)
        if(EAP5(i,j) < rand_arr(5))
            EAP5(i,j) = 0;
        end
    end
end

EAP6 = new1;
for i = 1:size(new1,1)
    for j = 1:size(new1,2)
        if(EAP6(i,j) < rand_arr(6))
            EAP6(i,j) = 0;
        end
    end
end

EAP7 = new1;
for i = 1:size(new1,1)
    for j = 1:size(new1,2)
        if(EAP7(i,j) < rand_arr(7))
            EAP7(i,j) = 0;
        end
    end
end

A = zeros(size(new1),'double');
A = A + double(EAP1);
A = imfuse(A, EAP2, 'blend', 'Scaling', 'joint');
A = imfuse(A, EAP3, 'blend', 'Scaling', 'joint');
A = imfuse(A, EAP4, 'blend', 'Scaling', 'joint');
A = imfuse(A, EAP5, 'blend', 'Scaling', 'joint');
A = imfuse(A, EAP6, 'blend', 'Scaling', 'joint');
A = imfuse(A, EAP7, 'blend', 'Scaling', 'joint');
A = imfuse(A, EAP8, 'blend', 'Scaling', 'joint');

figure;
imagesc(A);
colorbar;

for i=1:size(A,1)
    for j=1:size(A,2)
        if(A(i,j) < 209)
            A(i,j) = 0;
        elseif(A(i,j) > 212)
            A(i,j) = 0;
        end
    end
end

A=A(1:2:end,1:2:end);
size(A)
figure;
imagesc(A);
colorbar