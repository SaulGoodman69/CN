 clc
clear all
fprintf('ingrese la matriz\n\n')
m=input('ingrese el numero de filas de la matriz:')
n=input('ingrese el numero de columnas de la matriz:')
for i=1:m
  for j=1:n
    disp(['el elemento(',num2str(i),',',num2str(j),')'])
    A(i,j)=input('')
  endfor
endfor
disp('La matriz es:')
A
disp('la traspuesta de la matriz A es:')
A'
if(A==A')
disp('la matriz es simetrica')
else
disp('la matriz no es simetrica por lo tanto no se puede realizar la decomposicion por cholesky')
endif
fprintf('procedemos a verificar si la matriz es definida positiva\n\n')
sm1=A(1,1)
disp('en este es un caso especial porque solo contiene un solo valor por lo tanto se calcularia su valor absoluto:')
det1=det(sm1)
sm2=A(1:2,1:2)
disp('su determinante 2 seria:')
det2=det(sm2)
A
disp('su determinante 3 seria')
det3=det(A)

if det1>0 && det2>0 && det3>0
  disp('por lo tanto se puede realizar la descomposicion por cholesky')
else
  disp('no se puede descomponer por cholesky porque no es una matriz definida positiva')
endif

