programa
{
	
		real mat[10][10]
		inteiro l, c, n, maior
		
	funcao inicio()
	{
		escreva("Informar numero da matriz: ")
		leia(n)

		para (l = 0; l < n; l++){
			para (c = 0; c < n; c++){
				escreva("Elemento [", l, "," , c, "]: ")
					leia(mat[l][c])	
			}
		}
			escreva("Maior Elemento de cada linha")

			para (l = 0; l < n; l++){
				maior = mat[l][0]
					para (c = 0; c < n; c++){
						se (mat[l][c] > maior){
							maior = mat[l][c]
						}
					}
					escreva("\n", maior)
			}




	
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 509; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {mat, 4, 7, 3};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */