function [vec1, vec2, vec3, vec4] = Img2Vect(Image, row, col)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
    if (mod(row,2) ~= 0)
        if(mod(col,2) ~= 0)
            vec1 = VectSol(Image,1,row/2,1,col/2);
            vec2 = VectSol(Image,1,row/2,(col/2)+1,col);
            vec3 = VectSol(Image,(row/2)+1,row,1,col/2);
            vec4 = VectSol(Image,(row/2)+1,row,(col/2)+1,col);
        else
            vec1 = VectSol(Image,1,row/2,1,(col/2)+1);
            vec2 = VectSol(Image,1,row/2,(col/2)+2,col);
            vec3 = VectSol(Image,(row/2)+1,row,1,(col/2)+1);
            vec4 = VectSol(Image,(row/2)+1,row,(col/2)+2,col);
        end
    else
        if(mod(col,2) ~= 0)
            vec1 = VectSol(Image,1,(row/2)+1,1,col/2);
            vec2 = VectSol(Image,1,(row/2)+1,col/2,col);
            vec3 = VectSol(Image,(row/2)+2,row,1,col/2);
            vec4 = VectSol(Image,(row/2)+2,row,col/2,col);
        else
            vec1 = VectSol(Image,1,(row/2)+1,1,(col/2)+1);
            vec2 = VectSol(Image,1,(row/2)+1,(col/2)+2,col);
            vec3 = VectSol(Image,(row/2)+2,row,1,(col/2)+1);
            vec4 = VectSol(Image,(row/2)+2,row,(col/2)+2,col);
        end
    end
end