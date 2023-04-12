programa
{

	inteiro mat1[10][10], mat2[10][10], soma[10][10], n,c,l
	
	funcao inicio()
	{
			escreva("Informar numero da matriz 1: ")
			leia(n)

		para (l = 0; l < n; l++){
			para (c = 0; c < n; c++){
				escreva("Elemento [", l, "," , c, "]: ")
					leia(mat1[l][c])	
			}
		}

			escreva("Informar numero da matriz 2: ")
			leia(n)

		para (l = 0; l < n; l++){
			para (c = 0; c < n; c++){
				escreva("Elemento [", l, "," , c, "]: ")
					leia(mat2[l][c])	
			}
		}

		
		para (l = 0; l < n; l++){
			para (c = 0; c < n; c++){
				soma[l][c] = mat1[l][c] + mat2[l][c]
			}
		}

		limpa()
		escreva("As somas foram  ")
		para(l= 0; l < n; l++){
			para(c = 0; c < n; c++){
				escreva(soma[l][c]," | ")	
			}
		}

		
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 13; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */