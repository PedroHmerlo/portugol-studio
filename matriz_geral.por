programa
{
	inclua biblioteca Util 
	inteiro mat[10][10]
	inteiro c, l, n, soma, linha, coluna



	
	funcao inicio()
	{
		escreva("Qual o tamanho da sua matriz? ")
		leia(n)

		para(l = 0; l < n; l++){
			para(c = 0; c < n; c++){
				//escreva("Elemento [", l, "," , c, "]: ")
				mat[l][c] = Util.sorteia(-9, 9)
			}
		}
		soma = 0
		para(l = 0; l < n; l++){
			para(c = l + 1; c < n; c++){
				se(mat[l][c] > 0){
					soma = soma + mat[l][c]
				}	
			}
		}
		 escreva("A soma dos valores acima da diagonal principal é: ", soma)
		 escreva("\n")
		 escreva("Escolha uma linha: ")
		 leia(linha)
		 escreva("Linha escolhida", linha)
		 	para(c = 0; c < n; c++){
		 		escreva(mat[linha-1][c], ",")
		 	}
		 escreva("\n")
		 escreva("Escolha uma coluna: ")
		 leia(coluna)
		 escreva("Linha escolhida", coluna)
		 	para(l = 0; l < n; l++){
		 		escreva(mat[l][coluna-1], ",")
		 	}
		 escreva("\n")
		 escreva("Diagonal principal: ")
		 	para(l = 0; l < n; l++){
		 		escreva(mat[l][l], ",")
	}

	para(l = 0; l < n; l++){
		para(c = 0; c < n; c++){
			se(mat[l][c] < 0){
				mat[l][c] = mat[l][c] * mat[l][c]
			}
		}
	}
	escreva("\n A matriz alternada é: ")
	para(l = 0; l < n; l++){
		para(c = 0; c < n; c++){
			escreva(mat[l][c], ",")
			escreva(" ")
		}
	}



	
}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 48; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */