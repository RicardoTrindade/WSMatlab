Faz download do ficheiro xr.mat e carrega-o para o matlab usando o comando load. Este ficheiro contém uma matriz que deves manipular de modo a tornar num vector v de dimensão Nx1.

 x = xr(:);
	ou
 x = reshape(xr, 79282*45, 1);
