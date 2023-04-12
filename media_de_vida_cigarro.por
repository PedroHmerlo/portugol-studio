programa
{
	
	funcao inicio()
	{
		inteiro quanti_cigarros, fuma_tempo ,dias_vida ,dias, total, tempo_perdido_min, tempo_perdido_dias






		 


		 escreva("quantos cigarros você fuma por dia? ")
		 leia(quanti_cigarros)

		 escreva("Há quantos anos você fuma? ")
		 leia(fuma_tempo)

		total = quanti_cigarros * 365 * fuma_tempo

		
		tempo_perdido_min = total * 10

		tempo_perdido_dias = tempo_perdido_min / 1440


		escreva("Você já fumou um total de ", total, " cigarros.")
		
		escreva("Isso significa que você perdeu um total de ", tempo_perdido_dias, " dias de vida.")


		 
		
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 487; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */