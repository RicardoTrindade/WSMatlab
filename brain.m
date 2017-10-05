clear 
x=zeros(512,512,22);
for p=1:22
    filename = sprintf('IM-0001-%04d.dcm', p);
    x(:,:,p)= dicomread(filename);
end

%% Transversal
mov3(1:22) = struct('cdata', [],'colormap', []);
for i=1:22
    trans=reshape(x(:,:,i),512,512);
    imagesc(trans);
    colormap gray
    drawnow
    mov3(i)=getframe(gcf);
end
