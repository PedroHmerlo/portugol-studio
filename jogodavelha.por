programa
{/*Pedro*/
	
	caracter jogo[3][3]
	inteiro l, c, linha, coluna, player = 1, ganhou = 0, jogadas = 0, opcao
	

	funcao ganhadorLIN(){
		para(l = 0; l < 3; l++){
			se(jogo[l][0] == 'O' e jogo[l][1] == 'O' e jogo[l][2] == 'O')
				ganhou = 1
				}
				
		para(l = 0; l < 3; l++){
			se(jogo[l][0] == 'X' e jogo[l][1] == 'X' e jogo[l][2] == 'X')
				ganhou = 2
				}
	}


	funcao ganhadorCol(){
		para(c = 0; c < 3; c++){
			se(jogo[0][c] == 'O' e jogo[1][c] == 'O' e jogo[2][c] == 'O')
				ganhou = 1
				}
		
		para(c = 0; c < 3; c++){
			se(jogo[0][c] == 'X' e jogo[1][c] == 'X' e jogo[2][c] == 'X')
				ganhou = 2
				}
	}


	funcao ganhadorDiagonalPRIN(){
		se(jogo[0][0] == 'O' e jogo[1][1] == 'O' e jogo[2][2] == 'O')
			ganhou = 1
		
			se(jogo[0][0] == 'X' e jogo[1][1] == 'X' e jogo[2][2] == 'X')
				ganhou = 2
		}

	funcao ganhadorDiagonalSec(){
		se(jogo[0][2] =='O' e jogo[1][1] == 'O' e jogo[2][0] == 'O')
			ganhou = 1
		
			se(jogo[0][2] =='X' e jogo[1][1] == 'X' e jogo[2][0] == 'X')
				ganhou = 2
		}

	funcao verificarGanhador(){
		se(ganhou == 1)
			escreva("\n\t Player 1 Ganhou!!!!! PARABÉNS\n\n")

			se(ganhou == 2)
				escreva("\n\t Player 2 Ganhou!!!!! PARABÉNS\n\n")

				se(ganhou == 0)
					escreva("\n\t Deu VELHA!\n")
			}


	funcao inicio(){
		
		faca{
			player = 1
			ganhou = 0
			jogadas = 0

			/*iniciando a matriz com espaços*/
			para(l = 0; l < 3; l++){
				para(c = 0; c < 3; c++)
					jogo[l][c] = ' '	
				}
		/*imprimir a matriz*/
		faca{
			escreva("    Colunas       ")
			escreva("\n -------------")
			escreva("\n 0    1    2\n")
			escreva("--------------\n")
			para(l = 0; l < 3; l++){
				para(c = 0; c < 3; c++){
					escreva(" ",jogo[l][c])
					se(c < 2){
						escreva(" | ")
					}
						se(c == 2)
							escreva("  ", l) 
				}
							se(l < 2)
								escreva("\n------------")
								escreva("\n")
			}
				//LOGICA PARA IMPEDIR QUADOE JOGR PREENCHA EM CAMPO MARCADO
				faca{
					faca{
						escreva("\nJogador ", player," Digite linha e coluna que deseja: ")
						leia(linha, coluna)
					}enquanto(linha < 0 ou linha > 2 ou coluna < 0 ou coluna > 2)
				}enquanto(jogo[linha][coluna] != ' ')	
		
				//definição de caracter dos players
				se(player == 1){
					jogo[linha][coluna] = 'O'
					player ++	
				}senao{
					jogo[linha][coluna] = 'X'
					player = 1
				}
				//incrementar número de jogadas
				jogadas++
	
				ganhadorLIN()
				ganhadorCol()
				ganhadorDiagonalPRIN()
				ganhadorDiagonalSec()
				
			}enquanto(ganhou == 0 e jogadas < 9)
			escreva("\n\n 0    1    2\n\n")
				para(l = 0; l < 3; l++){
					para(c = 0; c < 3; c++){
					escreva(" ",jogo[l][c])
						se(c < 2)
						escreva(" | ")
							se(c == 2)
							escreva("  ", l) 
					}
								se(l < 2)
								escreva("\n------------")
								escreva("\n")
				}
	
			verificarGanhador()
			escreva("Digite 1 para jogar novamente: ")
			leia(opcao)
			limpa()
		}enquanto(opcao == 11)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2947; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */