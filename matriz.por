programa
{
inteiro l ,c ,i ,j, linha, soma
inteiro mat[10][10]
	
	funcao inicio()
	{
		escreva("Digite o número de linhas:")
		leia(l)
		
		escreva("Digite o número de colunas:")
		leia(c)
		
		para (i = 0; i < l ; i++){
			para(j = 0; j < c ; j++){
				escreva("ELEMENTO [", i, "," ,j , "]")
				leia(mat[i][j])
			}
		}

		escreva("Qual linha deseja somar?")
		leia(linha)

		soma = 0
		para (c = 0; c < 2 ; c++){1
		
			soma = soma + mat[linha][c]
		}

		escreva("A soma  dos elementos da linha" , linha , "é:" , soma)
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 422; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */