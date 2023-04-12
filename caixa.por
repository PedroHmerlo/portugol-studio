programa
{


	real saldo_atual = 1000, valor_saque, valor_deposito 
	inteiro i, tentativas = 4, opcao = 4
	cadeia senha, senhafinal, confirmar, senha_nova, senhaatt
	caracter resposta

	funcao vazio imprime_linha(){
		  escreva("------------------------------------------------------\n")
	}

	funcao saque(){
		escreva("Saldo atual: R$", saldo_atual, "\n")
		escreva("Qual o valor deseja sacar: ")
		leia(valor_saque)

		se(valor_saque > saldo_atual){
			escreva("Saldo insuficiente! Tente novamente. \n")
		}senao{
			saldo_atual = saldo_atual - valor_saque
			escreva("Saque realizado com sucesso!\nSaldo atual: R$", saldo_atual, "\n")
		}
	}

	funcao deposito(){
		escreva("Saldo atual: R$", saldo_atual, "\n")
		escreva("Qual o valor deseja depositar: ")
		leia(valor_deposito)

		se(valor_deposito > saldo_atual){
			escreva("Saldo insuficiente! Tente novamente. \n")
		}senao{
			saldo_atual = saldo_atual + valor_deposito
			escreva("Saque realizado com sucesso!\nSaldo atual: R$", saldo_atual, "\n")
		}
	}

	funcao nova_operacao(){
		escreva("Deseja fazer uma nova operação? (S/N)")
		leia(resposta)

		 se (resposta == 'S' ou resposta == 's'){
		 	limpa()

		 	escreva("Escolha uma opção: ")
					escreva("\n")
					escreva("1 - Saque\n2 - Depósito\n3 - Troca de senha\n4 - Sair\n")
					leia(opcao)
					escolha (opcao){
						caso 1:
						saque()
						nova_operacao()
						pare
						
						caso 2:
						deposito()
						nova_operacao()
						pare

						caso 3:
						nova_senha()
						pare	
						caso 4:
							escreva("Obrigado por utilizar nossos serviços!\nAté a próxima!")
							pare
						caso contrario:
						 escreva("Opção inválida! Tente novamente.")
					}
		 	
		 }senao se( resposta == 'N' ou resposta == 'n'){
		 	 escreva("Obrigado por utilizar nossos serviços!\nAté a próxima!")
		 	 tentativas = tentativas - 1
		 	 
		 }
	}

	funcao nova_senha(){
		escreva("Digite sua nova senha: ")
		leia(senha_nova)

		senha = senha_nova
		limpa()
		imprime_linha()

	}

	funcao login(){
		//escreva("Digite sua senha: ")
		//leia(senha_nova)

		//senha = senha_nova
		//limpa()
		//imprime_linha()

		enquanto(tentativas > 1){
				escreva("Digite sua senha: ")
				leia(senha_nova)

				se(senha_nova == senha){
					escreva("Acesso Permitido")
					escreva("\n")
					tentativas = 0
					escreva("Digite |ok| para acessar ao caixa: ")
					leia(confirmar)
					limpa()

					escreva("Escolha uma opção: ")
					escreva("\n")
					escreva("1 - Saque\n2 - Depósito\n3 - Troca de senha\n4 - Sair\n")
					imprime_linha()
					leia(opcao)
					limpa()
					escolha (opcao){
						caso 1:
						saque()
						nova_operacao()
						pare
						
						caso 2:
						deposito()
						nova_operacao()
						pare

						caso 3:
						nova_senha()
						login()
						pare	
						caso 4:
							escreva("Obrigado por utilizar nossos serviços!\nAté a próxima!")
							pare
						caso contrario:
						 escreva("Opção inválida! Tente novamente.")
					}	 
					
				}senao{
					tentativas = tentativas - 1
					escreva("senha digitada é inválida! você possui ", tentativas - 1, " tentativas")
					escreva("\n")
				}
			se(tentativas == 1){
				escreva("NÚMERO DE TENTATIVAS ESGOTADAS. SUA SENHA FOI BLOQUEADA")
			}
		}
	}

	
	funcao inicio()
	{
		escreva("crie sua senha: ")
		leia(senha)
		limpa()


		imprime_linha()

			enquanto(tentativas > 1){
				escreva("Digite sua senha: ")
				leia(senhafinal)

				se(senhafinal == senha){
					escreva("Acesso Permitido")
					escreva("\n")
					tentativas = 0
					escreva("Digite |ok| para acessar ao caixa: ")
					leia(confirmar)
					limpa()

					escreva("Escolha uma opção: ")
					escreva("\n")
					escreva("1 - Saque\n2 - Depósito\n3 - Troca de senha\n4 - Sair\n")
					imprime_linha()
					leia(opcao)
					limpa()
					escolha (opcao){
						caso 1:
						saque()
						nova_operacao()
						pare
						
						caso 2:
						deposito()
						nova_operacao()
						pare

						caso 3:
						nova_senha()
						login()
						pare	
						caso 4:
							escreva("Obrigado por utilizar nossos serviços!\nAté a próxima!")
							pare
						caso contrario:
						 escreva("Opção inválida! Tente novamente.")
					}	 
					
				}senao{
					tentativas = tentativas - 1
					escreva("senha digitada é inválida! você possui ", tentativas - 1, " tentativas")
					escreva("\n")
				}
			}
			se(tentativas == 1){
				escreva("NÚMERO DE TENTATIVAS ESGOTADAS. SUA SENHA FOI BLOQUEADA")
			}
			
			
	}

}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2296; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */