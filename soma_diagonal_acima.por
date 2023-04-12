programa
{
	inteiro mat[10][10]
	inteiro c, l, n, soma



	
	funcao inicio()
	{
		escreva("Qual o tamanho da sua matriz? ")
		leia(n)

		para(l = 0; l < n; l++){
			para(c = 0; c < n; c++){
				escreva("Elemento [", l, "," , c, "]: ")
				leia(mat[l][c]) 
			}
		}
		soma = 0
		para(l = 0; l < n; l++){
			para(c = l + 1; c < n; c++){
				soma = soma + mat[l][c]
				
			}
		}
		 escreva("A soma dos valores acima da diagonal principal é: ", soma)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 26; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {soma, 4, 18, 4}-{mat, 3, 10, 3};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */