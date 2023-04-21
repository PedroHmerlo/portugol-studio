programa
{
	inclua biblioteca Util --> u

	funcao login(){
		escreva("Qual ação deseja fazer: \n")
		escreva("1 - Criar senha\n2 - Login\n")
		escreva("==================================\n")
		leia(acaoLogin)
		limpa()

		escolha(acaoLogin){
			caso 1: 
				escreva("Crie sua senha: ")
				leia(senha)
				limpa()
				login()
			pare

			caso 2:
				enquanto(tentativa >= 0){
					escreva("Digite sua senha: ")
					leia(senhaDigi)

					se(senhaDigi == senha){
						
						escreva("Acesso Permitido\n")
						escreva("Digite |ok| para acessar o caixa: ")
						leia(confirm)
						limpa()

						escreva("Escolha uma opção: ")
						escreva("\n")
						escreva("1 - Saque\n2 - Depósito\n3 - Troca de senha\n4 - Sair\n")
						escreva("==================================\n")
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
							tentativa = -1
							escreva("Obrigado por utilizar nossos serviços!\nAté a próxima!")
							pare
						caso contrario:
						 escreva("Opção inválida! Tente novamente.")
					}
					
					}senao{
						tentativa = tentativa - 1
						limpa()
						escreva("SENHA DIGITADA É INVÁLIDA! VOCÊ POSSUI ",tentativa," TENTATIVAS\n")
					}
					se(tentativa == 0){
						limpa()
						escreva("NÚMERO DE TENTATIVAS ESGOTADAS. SUA SENHA FOI BLOQUEADA")
					}
				}
		}
	}


	funcao saque(){
		escreva("Saldo atual: R$", saldo_atual, "\n")
		escreva("Qual o valor deseja sacar: ")
		leia(valor_saque)

		se(valor_saque > saldo_atual){
			escreva("Saldo insuficiente! Tente novamente. \n")
		}senao{
			saldo_atual = saldo_atual - valor_saque
			escreva("Aguarde...")
			u.aguarde(3000)
			limpa()
			escreva("Saque realizado com sucesso!\nSaldo atual: R$", saldo_atual, "\n")
		}
	}


	funcao deposito(){
		escreva("Saldo atual: R$", saldo_atual, "\n")
		escreva("Qual o valor deseja depositar: ")
		leia(valor_deposito)
		saldo_atual = saldo_atual + valor_deposito
		escreva("Aguarde...")
			u.aguarde(3000)
			limpa()
		escreva("Depósito realizado com sucesso!\nSaldo atual: R$", saldo_atual, "\n")
		
	}


	

	funcao nova_operacao(){
		escreva("\n==================================\n")
		escreva("Deseja fazer uma nova operação? (S/N) : ")
		leia(resposta)

		 se (resposta == 'S' ou resposta == 's'){
		 	limpa()

		 	escreva("Escolha uma opção: ")
					escreva("\n")
					escreva("1 - Saque\n2 - Depósito\n3 - Troca de senha\n4 - Sair\n")
					escreva("==================================\n")
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
							tentativa = -1
							escreva("Obrigado por utilizar nossos serviços!\nAté a próxima!")
							
							pare
						caso contrario:
						 escreva("Opção inválida! Tente novamente.")
					}
		 	
		 }senao se( resposta == 'N' ou resposta == 'n'){
		 	limpa()
		 	 tentativa = -1
		 	 escreva("Obrigado por utilizar nossos serviços!\nAté a próxima!")
		 	
		 	 
		 }
	}

	

	funcao nova_senha(){
		escreva("Digite sua senha atual: ")
		leia(senha)
		limpa()

		escreva("Digite sua nova senha: ")
		leia(senha_nova)

		senha = senha_nova
		limpa()
		
			
	}

	inteiro acaoLogin, senha, senhaDigi, tentativa = 3, opcao, senha_nova
	cadeia confirm
	real saldo_atual = 1000.00, valor_saque, valor_deposito
	caracter resposta

	
	funcao inicio()
	{
		login()
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 3417; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */