function [ S ] = vector2String( M )
S = '';
s = 'acgt';
    for i = 1:length(M)
    	x = s(M(i) + 1);
        S = [x; S];
    end
end

