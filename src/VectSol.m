function [vector] = VectSol(Image,in_i,end_i,in_j,end_j)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
vector = Image(in_i:end_i,in_j:end_j);
vector = reshape(vector,[],1);

