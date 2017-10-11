function [ s ] = vector2StringMap( v )
    key = { 0, 1, 2, 3};
    value = {'A','C','T','G'};
    newMap = containers.Map(key,value);
    s = '';
    for i =1:length(v)
        s = [newMap(v(i)); s];
    end
end

