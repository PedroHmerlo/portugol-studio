programa
{
	inteiro n[10], num, i
	logico lo
	
	
	funcao inicio()
	{
		lo = falso

		para(i = 0; i < 10; i++){
			escreva("Digite um número: ")
			leia(n[i])
		}
		escreva("\n")
		escreva("Escolha um número: ")
		leia(num)

		para(i = 0; i < 10; i++){
			se (num == n[i]){
				lo = verdadeiro
			}
		}
		limpa()
		escreva("O número esta na lista?")
		escreva("\n")
		escreva(lo)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 270; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */