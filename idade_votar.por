programa
{
	
	funcao inicio()
	{
		inteiro ano_nascimento
		inteiro idade









		escreva("Em que ano você nasceu? ")
		leia(ano_nascimento)

		idade = 2023 - ano_nascimento

		se(idade >= 18){
			escreva("sua idade é ", idade)
			escreva("\n")
			escreva("Pode votar")
		}
		senao{
			escreva("sua idade é ", idade)
			escreva("\n")
			escreva("Não pode votar")
		}

		
		



		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 123; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */