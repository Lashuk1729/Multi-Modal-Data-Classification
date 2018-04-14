function [vector] = VectSol(Image,in_i,end_i,in_j,end_j)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
    k = 1;
    for i = in_i:end_i
        for j = in_j:end_j
            vector[k] = Image[i][j];
            k = k+1;
        end
    end
end

