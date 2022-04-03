//Questão 1 -> 

programa
{
	
	/* 
	 * 1° # ler dois valores e efetuar a divisão do 1° pelo 2°
	 * 2° # obs: o divisor > 0, senao leia novo divisor
	 * 3° # Imprima o resultado
	 * 4° # Consultar de deseja nova operação, se sim, limpe a tela
	 */

	funcao inicio()
	{

	logico op = verdadeiro

	enquanto (op == verdadeiro){

		real n1, n2
		cadeia x
		
		escreva("Digite o dividendo: ")
		leia(n1)
		escreva("\n")
		
		escreva("Digite o divisor: ")
		leia(n2)
		escreva("\n")

		se (n2 <= 0){
			enquanto (n2 <= 0){
				escreva("Digite um número válido para divisão: ")
				leia(n2)
			}
		}

		escreva("\nO resultado da divisão é: ", n1/n2, "\n")
		
		escreva("Deseja calcular nova divisão? ")
		leia(x)

		se (x == "sim"){
			op = verdadeiro
			limpa()
		} senao
			op = falso
			limpa()
	
	}
	
	}	
}

//----------------------------------------------------------------------
//Questão 2 ->

programa
{
	
	/* 
	 * 1° # Apresentar um menu de operações
	 * 2° # Escolher a operação
	 * 3° # Ler dois número para efetuá-la
	 * 4° # Calcular, printar e pgt se deseja nova operação
	 */

	funcao inicio()
	{

	real n1, n2
	inteiro operacao
	logico op = verdadeiro
	cadeia x 

	enquanto (op == verdadeiro){
		escreva("Bem vindo a calculadora Serratec!\n\n")
	
		escreva("Nossa calculadora dispõe das seguintes operações: \n")
		escreva("1 -> Soma (+)     2 -> Subtração (-)     3 -> Multiplicação (*)     4 -> Divisão (/)\n\n")
		
		escreva("De acordo com a tabela, insira o numero da operação que você deseja efetuar e dois valores\n")
	
		escreva("Operação: ")
		leia(operacao)
		
		se (operacao != 1 e operacao != 2 e operacao != 3 e operacao != 4){
			enquanto (operacao != 1 e operacao != 2 e operacao != 3 e operacao != 4) {
				escreva("O número digitado para operação é inválido, digite um valor entre 1 e 4: ")
				leia(operacao)
			}
		}
	
		escreva("Digite o primeiro valor: ")
		leia(n1)
	
		escreva("Digite o segundo valor: ")
		leia(n2)

		se (operacao == 1)
			somar(n1,n2)
		senao se (operacao == 2)
			subtrair(n1,n2)
		senao se (operacao == 3)
			multiplicar(n1,n2)
		senao se (operacao == 4){
			se (n2 <= 0){
				enquanto(n2 != 0){
					escreva("\nDivisor inválido, por favor, insira um número maior do que 0: ")
					leia(n2)
				}
			}
			dividir(n1,n2)	
		}
			
				 
		escreva("\nDeseja nova operação? ")
		leia(x)

		se (x == "sim" ou x == "Sim" ou x == "SIM")
			op = verdadeiro
		senao
			op = falso
		
	}
		limpa()
	}	

		funcao somar (real x, real y){
		escreva("\nA soma entre: ", x, " + ", y, " é = ", x+y, "\n")
	}

	funcao subtrair (real x, real y){
		se (x < 0){
			se (y > 0)
				escreva("\nA subtração entre: ", x, " - ", y, " é = ", -x-y, "\n")
			senao
				escreva("\nA subtração entre: ", x, " - ", y, " é = ", -x-(-y), "\n")
		}senao{ 
			se (y > 0)
				escreva("\nA subtração entre: ", x, " - ", y, " é = ", x-y, "\n")
			senao
				escreva("\nA subtração entre: ", x, " - ", y, " é = ", x+(y * -1), "\n")
		}
	}

	funcao multiplicar (real x, real y){
		escreva("\nA multiplicação entre: ", x, " x ", y, " é = ", x*y, "\n")
	}

	funcao dividir (real x, real y){
		escreva("\nA divisão entre: ", x, " / ", y, " é = ", x/y, "\n")
	}

}
//------------------------------------------------------------------------
//Questão 3 ->

programa
{

	/* ler o nome de 10 alunos, 20 notas de avaliação p/ cada aluno
	 *  calcule a média de cada aluno, dizendo se foi ou não aprovado
	 *  média de aprovação >= 6.0
	 *  output: P1 = 8.0, P2 = 6.0, Media = 7.0
	*/
	
	funcao inicio()
	{

		real notas[20], media[10]
		inteiro aux = 0
		cadeia nomes[10]
	
		// posso inicializar uma variavel dentro do loop = 2 e zerá-la no final
		// assim consigo preencher 10 nomes e 20 notas, saco?!



		para (inteiro j = 0; j < 20; j += 2){	// dps de pronto por j < 20

			escreva("Digite o nome do aluno: ")
			leia(nomes[aux])

			escreva("Digite a primeira nota do aluno: ")
			leia(notas[j])

			escreva("Digite a segunda nota do aluno: ")
			leia(notas[j+1])

			escreva("\n")
			
			aux += 1
			
		}

		escreva("\n")

		aux = 0

		para (inteiro i = 0; i < 20; i += 2){	// dps de pronto por i < 20

			media[aux] = (notas[i] + notas[i+1]) / 2

			se (media[aux] >= 6.0){
				escreva(nomes[aux], " nota P1 = ", notas[i], " nota P2 = ", notas[i+1], " média = ", media[aux], ", Aprovado!!\n")
			} senao {
				escreva(nomes[aux], " nota P1 = ", notas[i], " nota P2 = ", notas[i+1], " média = ", media[aux], ", Reprovado!\n")
			}

			escreva("\n")

			aux += 1
		}
			
			
		}

		
}





//------------------------------------------------------------------------
//#Questão 4 ->

programa
{
	
	funcao inicio()
	{

		inteiro opcao, x
		escreva("Olá, se deseja calcular fatorial digite -> 1 Se deseja calcular fibonacci digite ->2 ")
		leia(opcao)

		se (opcao != 1 e opcao != 2){
			enquanto (opcao != 1 e opcao != 2){
				escreva("\nOpção inválida, digite 1 ou 2: ")
				leia(opcao)
			}
		}

		se (opcao == 1){
			escreva("Escreva o número no qual deseja calcular o fatorial: ")
			leia(x)

			se (x < 0){
				enquanto(x < 0){
					escreva("Não existe fatorial de número negativo, somente de valores maiores ou igual a 0, insira um valor válido: ")
					leia(x)
				}
			}
				escreva("O fatorial de ", x, " é: ", fat(x), "\n") 
		} senao {
			escreva("Escreva quantos números da série de fibonacci deseja imprimir: ")
			leia(x)

			se (x <= 0){
				enquanto(x <= 0){
					escreva("Valor inválido, digite uma quantidade maior ou igual a 1: ")
					leia(x)
				}
			}

				para (inteiro i = 1; i <= x ; i++){
					escreva(fibo(i), " ")  // Calcula e exibe o número da sequência na posição atual
			}

			escreva("\n")
		}

			
	}


	funcao inteiro fat(inteiro valor)
	{
		se (valor == 1 ou valor == 0)
			retorne 1
		
		retorne valor * fat(valor - 1)
	}
	

		funcao inteiro fibo(inteiro pos)
	{		
		se (pos == 1)
			retorne 0
		senao se (pos == 2)
			retorne 1

		retorne fibo(pos - 1) + fibo(pos - 2)		
	}
}

//------------------------------------------------------------------------
//Questão 5 ->

programa
{
	
	/*
	 * Usuário informa 10 números
	 * programa retorna o maior, menor e a média dos valores
	 */

	
	funcao inicio()
	{

		real num, media = 0.0, menor, maior

		escreva("Digite o 1° número: ")
		leia(num)
		maior = num
		menor = num
		media += num

		para (inteiro i = 1; i <= 9; i++) {

			escreva("Digite o ", i+1, "° número: ")
			leia(num)
		
			media += num

			se (num > maior)
				maior = num
			senao se (num < menor)
				menor = num
			
		}

		escreva("\nA média entre os números digitados é: ", media/10, "\n")
		escreva("O maior número digitado foi: ", maior, "\n")
		escreva("O menor número digitado foi: ", menor, "\n")
		escreva("\n")
		
	}
}

//-----------------------------------------------------------
//Questão 6 ->

programa
{
	
	/*
	 * Usuário informa dois números n1, n2
	 * o n1 é o ponto de partida do laço e n2 o ponto de chegada
	 * Ande esse intervalo e imprima a soma de todos os pares nele
	 */
	
	funcao inicio()
	{

		inteiro n1, n2, aux, soma = 0

		escreva("Digite o 1° número: ")
		leia(n1)
		escreva("Digite o 2° número: ")
		leia(n2)

		se (n2 < n1){
			aux = n2
			n2 = n1
			n1 = aux
		}

		para (inteiro i = n1; i <= n2; i++){
			
			se (i % 2 == 0)
				soma += i
			
		}

		escreva("A soma dos pares nesse intervalo é: ", soma)
		escreva("\n")
		
	}
}

//-----------------------------------------------------------
//Questão 8 ->

programa
{

	/*
	  	pedir para o usuário entrar com 10 números
	  	solicitar se quer que sejam impressos em ordem crescente ou decrescente
	 	
		Lógica de ordenação: [5, 3, 1]
		 *  
		 *  aux = 0
		 *  
		 *  se (vet[i] > vet[i+1]
		 *  aux = vet[i+1] (5)
		 *  vet[i+1] = vet[i] (3)
		 *  vet[i] = aux (5) 
	 */
	
	funcao inicio()
	{
		real vet[10], aux = 0.0
		cadeia choice

		escreva("Olá, digite 10 número para que sejam ordenados: \n")

		para (inteiro i = 0; i < 10; i++){
			escreva("Digite o ", (i+1), "° número: ")
			leia(vet[i])
			escreva("\n")
		}

		escreva("Deseja imprimí-los na ordem crescente ou decrescente? ")
		leia(choice)

		se (choice != "crescente" e choice != "decrescente" e choice != "Crescente" e choice != "Decrescente")
			enquanto(choice != "crescente" e choice != "decrescente" e choice != "Crescente" e choice != "Decrescente"){
				escreva("A escolha que digitou não corresponde as opções, digite novamente: ")
				leia(choice)
				escreva("\n")
			}

		para (inteiro i = 0	; i < 9; i ++){

			para (inteiro j = i+1; j < 10; j++){ 

				se (vet[i] > vet[j]){

					aux = vet[j]
					vet[j] = vet[i]
					vet[i] = aux
				}
			}	
		}

		escreva("\n")
		

		se (choice == "crescente" ou choice == "Crescente"){
			escreva("[  ")
			para (inteiro i = 0; i < 10; i ++){
			escreva(vet[i], "   ")
			}
			escreva("]")
		} senao se (choice == "decrescente" ou choice == "Decrescente"){
			escreva("[  ")
			para (inteiro i = 9; i >= 0; i --){
			escreva(vet[i], "   ")	
			}
			escreva("]\n")
		}
	
		
	}
}


//-----------------------------------------------------------
//Questão 9 ->


programa
{
	
	/*
	 *  elaborar prog que calcule equação do 2° grau
	 *  solicite as variaveis a, b, c
	 *  calcule as raízes
	 *  no final imprima as variaveis lidas
	 *  a equação e as raízes
	 */

	 inclua biblioteca Matematica --> mat
	
	funcao inicio()
	{

		real x1 = 0.0, x2 = 0.0, a, b, c, delta = 0.0

		escreva("Digite o valor do coeficiente A: ")
		leia(a)

		se (a == 0){
			enquanto (a == 0){
				escreva("Coeficiente A não pode ser 0, insira um valor válido: ")
				leia(a)
			}
		}
		
		escreva("Digite o valor do coeficiente B: ")
		leia(b)
		escreva("Digite o valor do coeficiente C: ")
		leia(c)
		escreva("\n")

		//Calcular delta e raízes
		delta = (b * b) - (4 * a * c)

		se (delta > 0) {
			x1 = (-b + mat.raiz(delta, 2.0) ) / (2 * a)
			x2 = (-b - mat.raiz(delta, 2.0) ) / (2 * a)
		} senao {
			x1 = (-b + mat.raiz(delta, 2.0) ) / (2 * a)
		}

		se (delta < 0){
			escreva("Impossível calcular, Delta não admite raízes válidas no conjunto dos reais")
			escreva("\n")
		}senao se (delta == 0){
			se (b > 0){
				se (c>0){
					escreva(a,"x² + ", b, "x +", c, " = 0 -> X1 = ", x1,"\n")
				} senao {
					escreva(a,"x² + ", b, "x ", c, " = 0 -> X1 = ", x1,"\n")
				}
			} senao se (b < 0){
				se (c > 0){
					escreva(a,"x² ", b, "x + ", c, " = 0 -> X1 = ", x1,"\n")
				} senao {
					escreva(a,"x² ", b, "x ", c, " = 0 -> X1 = ", x1,"\n")
				}
			}
		} senao se (delta > 0) {
			se (b > 0){
				se (c>0){
					escreva(a,"x² + ", b, "x + ", c, " = 0 -> X1 = ", x1, " X2 = ", x2 , "\n")
				} senao {
					escreva(a,"x² + ", b, "x ", c, " = 0 -> X1 = ", x1," X2 = ", x2 , "\n")
				}
			} senao se (b < 0){
				se (c > 0){
					escreva(a,"x² ", b, "x + ", c, " = 0 -> X1 = ", x1, " X2 = ", x2 , "\n")
				} senao {
					escreva(a,"x² ", b, "x ", c, " = 0 -> X1 = ", x1, " X2 = ", x2 , "\n")
				}
			}
		} 
		
		
	}
}



//------------------------------------------------------------------
//Questão 10->

programa
{
	
	funcao inicio()
	{

		escreva("Esse é um algoritmo que soma matrizes quadradas! Seja bem-vindo.\n")
		inteiro matrizA[4][4], matrizB[4][4], matrizResult[4][4]

		// Lê os valores para matriz A
		para (inteiro i = 0; i < 4; i++){
			para(inteiro j = 0; j < 4; j++){
				escreva("Digite o valor a ser inserido na linha: ", i, " coluna: ", j, " : ")
				leia(matrizA[i][j])
			}
		}

		// Lê os valores para matriz B
		para (inteiro i = 0; i < 4; i++){
			para(inteiro j = 0; j < 4; j++){
				escreva("Digite o valor a ser inserido na linha: ", i, " coluna: ", j, " : ")
				leia(matrizB
				[i][j])
			}
		}

		// Soma os valores entre as matrizes
		para (inteiro i = 0; i < 4; i++){
			para(inteiro j = 0; j < 4; j++){
				matrizResult[i][j] = matrizA[i][j] + matrizB[i][j]
			}
		}

		// Imprimi a 1° matriz
		escreva("\n")
		escreva("Conteúdo da matriz A: \n")
		para (inteiro i = 0; i < 4; i ++){
			para(inteiro j = 0; j < 4; j++){
				escreva(matrizA[i][j], " ")
			}
			escreva("\n")
		}

		// Imprimi a 2° matriz
		escreva("\n")
		escreva("Conteúdo da matriz B: \n")
		para (inteiro i = 0; i < 4; i ++){
			para(inteiro j = 0; j < 4; j++){
				escreva(matrizB[i][j], " ")
			}
			escreva("\n")
		}

		// Imprimi o resultado da soma entre elas
		escreva("\n")
		escreva("Resultado da soma entre as matrizes: \n")
		para (inteiro i = 0; i < 4; i ++){
			para(inteiro j = 0; j < 4; j++){
				escreva(matrizResult[i][j], " ")
			}
			escreva("\n")
		}

		
	}
}













/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 103; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */