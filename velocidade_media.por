programa
{
	
	funcao inicio()
	{
		inteiro velocidade, multa, kmamais

		escreva("qual a velocidade o carro estav quando passou o radar? ")
		leia(velocidade)

		se (velocidade > 80){
			escreva("você passou o radar com a velocidade de: ", velocidade , "KM/HR ")
			escreva("\n")
			kmamais = velocidade - 80

			multa = kmamais * 5

			escreva("Por isso ira pagar uma multa de: ", multa , "R$")
		}
		senao{
			escreva("você passou o radar com a velocidade de: ", velocidade , "KM/HR ")
			escreva("\n")
			escreva("Não recebe Multa")
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
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */