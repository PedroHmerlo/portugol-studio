programa
{
	caracter sexo, saude
	cadeia nome
	inteiro contador, idade, p, ap
		
	funcao inicio()
	{
inteiro x = 0
ap = 0
saude = 's'

		escreva("Quantas pessoas iremos filtrar? ")
		leia(p)
		limpa()

		para(contador = 1; contador < p+1; contador++){
			escreva("Digite o nome da ", contador, " pessoa: ")
			leia(nome)
			escreva("\n")
			escreva("digite seu sexo| F para feminino| M para masculino|: ")
			leia(sexo)
			escreva("\n")
			escreva("Digite a idade da ", contador, " pessoa: ")
			leia(idade)
			escreva("\n")
			escreva("Sua condição fisíca está boa? | S para sim| N para não: ")
			leia(saude)
			
			se (saude == 's'){
				x = 1 
			}senao{
				x = 2
			}
			
			escreva("=============================================")
			escreva("\n")

			se(idade >= 18 e x == 1){
				ap = ap + 1
			}
		}
		limpa()
		escreva("===================================================")
		escreva("\n")
		escreva("Foram filtrados: ", p, " pessoas")
		escreva("\n ")
		escreva("Estão aptos: ", ap, " pessoas")
		escreva("\n")
		escreva("===================================================")
		
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1018; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */