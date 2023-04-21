programa
{/*oioioioioio*/


	funcao principal(){
		escreva("============================================\n")
		escreva("=== Bem vindo ao cinema, oq deseja fazer ===")
		escreva("\n============================================\n")

		escreva("--------------------------------------------------")
		escreva("\n1-Reservar seu assento \n2-loja de conveniencia 	")
		leia(opc)

		escolha(opc){
			caso 1:
			limpa()
			cadeiras()

			caso 2:
			limpa()
			loja()
			
		}
	}



	funcao loja(){
		escreva("===========================\n")
		escreva("== Produtos Disponiveis ==")
		escreva("\n===========================\n")

		escreva("---------------------------")
		escreva("\n1-Pipoca \n2-Refrigerante \n3-Água \n4-Bala Fini \n5-Chocolate")
		escreva("\n---------------------------\n")
		escreva("quantos produtos deseja levar? ")
		leia(produtos)


		para(i = 0; i < produtos; i++){
			escreva("Produto: ")
			leia(posi)
			vett[i] = posi - 1
		}
		
		escreva("------------------------------------\n")
		escreva("Você escolheu os seguintes produtos: \n")
		
		para(i = 0; i < produtos; i++){
			
			posicao = vett[i]
			escreva(vet[posicao])
			escreva("\n")
		}
		escreva("------------------------------------\n")
		escreva("Deseja volta a tela inicial? ")
		leia(resp)

		se(resp == 's'){
			limpa()
			principal()
		}senao{
			limpa()
			escreva("Obrigado por utilizar nossos serviços!! Até mais")
		}
	}

	funcao cadeiras(){
		faca{
			escreva("Colunas: \n")
		      escreva("0  1  2  3  4  5  6  7  8  9  10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29\n")
		      escreva("==========================================================================================   | linhas: \n")
		      para(l = 0; l < 25; l++){
		        para(c = 0; c < 30; c++){
		          escreva(mat[l][c], "  ")
		        }
		        escreva("   || ", l , "\n")
		      }
		      escreva("\n                                 Telão")

		  	escreva("\n==========================================================================================\n")
		  	
		      escreva("Digite linha e coluna da poltrona desejada ou digite um número negativo para sair: ")
		      leia(linha, coluna)
		      limpa()
		  
		      se(linha < 0 ou linha > 25){
		        escreva("\nObrigado por escolher nosso cinema!\n")
		        desejo()
		      }
		      senao{
		        se(coluna < 0 ou coluna > 30){
		          escreva("\nColuna inválida. Digite outra coluna válida!\n")
		        }
		        senao{
		          se(mat[linha][coluna] == 'x'){
		            escreva("\nPoltrona já reservada. Escolha outra!\n")
		          }
		          senao{
		            mat[linha][coluna] = 'x'
		            escreva("\nReserva realizada com sucesso!!!\n")
		            lugar++
		          }
		        }
		      }
    }enquanto(lugar < 750 e linha >= 0 ou coluna >= 0)
		
	}

	funcao desejo(){
		escreva("Deseja realizar outra reserva digite 1 para sim e 2 para não ")
		leia(respp)

		escolha(respp){
			caso 1:
			cadeiras()
			pare

			caso 2:
			limpa()
			escreva("Obrigado por utilizar nossos serviços\n")
			escreva("Deseja voltar a tela principal? ")
			leia(ress)
			se(ress == 's' ou ress =='S'){
				limpa()
				principal()
			}senao{
				limpa()
				escreva("")
			}
			pare
		}
	}





	inteiro opc, produtos, vett[6], i, posi, posicao, l ,c, lugar = 0,  linha, coluna, respp
	cadeia vet[5] = {"pipoca", "refrigeirante", "Água", "Bala Fini", "Chocolate"}
	caracter resp, mat[25][30], ress 
	
	funcao inicio()
	{
		principal()
		

	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 25; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */