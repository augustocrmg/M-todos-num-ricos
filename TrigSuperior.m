function MTR = TrigSuperior(A,b)
   
  %Verifica o tamanho da matriz dos coeficientes 
  [nl,nc]=size(A);
  %cirando a vari�vel MTR
  MTR=zeros(nl,nc);
 
  %loop da diagonal
  for dig=1:nc
    %loop da linha
    for linha=dig+1:nl
      %defini��o coeficiente pivo
      m=(A(linha,dig)/A(dig,dig));
      %loop coluna      
      for coluna=dig+1:nc
        MTR(linha,coluna)=A(linha,coluna)-m*(A(dig,coluna));
      endfor
    endfor
  endfor
 
endfunction
 