programa
{
		
	inteiro n, i, n1

	funcao inicio()
	{
		escreva("quantos números deseja descobrir? ")
		leia(n)

		para(i = 0; i < n; i++){
			escreva("digite os números: ")
			leia(n1)
		se(n1 % 2 == 0){
			escreva("par")
			escreva("\n")
		}
		senao{
			escreva("impar")
			escreva("\n")
		}
		}
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 35; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */