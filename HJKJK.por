programa
{
	
    	inteiro opcao 
    	real valor1, valor2
	
	funcao inicio()
	{
		escreva("\nCalculadora")
		escreva("\nDigite o primeiro número:")
		leia(valor1)
		escreva("\nDigite o segundo número:")
		leia(valor2)
		escreva("\nEscolha a opção desejada:\n")
	     escreva("1) Adição\n")
          escreva("2) Subtração\n")
          escreva("3) Multiplicação\n")
          escreva("4) Divisão\n")

	     leia(opcao)

	     escolha(opcao)
	     {
	     	caso 1:
	     	escreva("\nO resultado da adição é:", valor1 + valor2)
	     	pare

               caso 2:
	     	escreva("\nO resultado da subtração é:", valor1 - valor2)
	     	pare

	     	caso 3:
	     	escreva("\nO resultado da multiplicação é:", valor1 * valor2)
	     	pare

	     	caso 4:
	     	escreva("\nO resultado da divisão é:", valor1 / valor2)
	     	pare

	     	caso contrario:
	     	escreva("\nOpção Ínvalida")
	     }
	
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 895; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */