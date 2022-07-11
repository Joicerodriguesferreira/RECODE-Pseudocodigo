Algoritmo "Agência de viagens"
//Recode Pro -  Primeira Atividade Individual
//Joice Rodrigues Ferreira
// Professor Flávio Mota

funcao cad_cliente(): caractere

Var

   cpf:caractere
   nome:caractere
   tel: caractere
   email: caractere
   endereco: caractere

Inicio

   para i de 1 ate x faca

      escreval ("Digite o CPF: ")
      leia (cpf[i])
      escreva ("Digite o Nome: ")
      leia (nome[i])
      escreva ("Digite o telefone: ")
      leia (tel[i])
      escreva ("Digite o E-mail: ")
      leia (email[i])
      escreva ("Digite o endereço: Rua, n, bairro,cidade e estado")
      leia (endereco[i])

      cpf<- cpf[i]
      nome<- nome[i]
      tel<- tel[i]
      email<- email[i]
      endereco<- endereco[i]

      escreval("Cadastrar novo cliente? [S] Sim ou  [N] Não")
      leia (op)

      limpatela

      se (op <> "s") entao
         interrompa
      fimse
   fimpara
   retorne nome
fimfuncao

funcao cad_destino(): caractere

var
   cidade,estado,pais: caractere

Inicio

   para i de 1 ate x faca
      escreva ("Digite o País: ")
      leia (pais[i])
      escreva ("Digite o Estado: ")
      leia (estado[i])
      escreva ("Digite a cidade: ")
      leia (cidade[i])

      pais<- pais[i]
      estado<- estado[i]
      cidade<- cidade[i]

      escreval(" Destino cadastrado")
      escreval()
      escreval("Cadastrar novo destino? [S] Sim ou  [N] Não")
      leia (op)

      limpatela

      se (op <> "s") entao
         interrompa
      senao
      fimse
   fimpara
   retorne cidade
fimfuncao

procedimento consulta_clientes()
inicio

   para i de 1 ate x faca

      escreval("CPF:", cpf[i])
      escreval("Nome:", nome[i])
      escreval("Telefone:", tel[i])
      escreval("E-mail:", email[i])

      escreval("")

   fimpara
fimprocedimento

procedimento consulta_destino()
inicio
   se cidade[i] = "" entao
      interrompa
   fimse
   para i de 1 ate x faca

      escreval("Endereço:")
      escreval("Cidade:",cidade[i])
      escreval("Estado:",estado[i])
      escreval("País:",pais[i])
   fimpara
fimprocedimento

const
   x = 3

var

   i,j: inteiro
   opcao: caractere
   op: caractere
   cpf,nome,tel,email,endereco: vetor[1..x] de caractere
   cidade,estado,pais: vetor[1..x] de caractere
   cad_cliente, cad_destino: caractere


inicio

   op<- "s"
   enquanto (op = "s") faca

      escreval()
      escreval("***********Viajando & Sonhando***********")
      escreval()
      escreval("0 - Sair ")
      escreval("1 - Cadastrar novo cliente")
      escreval("2 - Cadastrar novo destino")
      escreval("3 - Consultar cliente")
      escreval("4 - Consultar destino")
      escreval()
      escreval("Digite a sua opção:")
      leia(opcao)
      escolha opcao
         limpatela

         caso"0"
         interrompa

      caso "1"
         escreval("*******CADASTRO CLIENTE*******")
         escreval (" ")
         cad_cliente <- cad_cliente()

      caso "2"
         escreval("*******CADASTRO DESTINO*******")
         escreval("")
         cad_destino <- cad_destino()

      caso "3"
         escreval("*******CONSULTA CLIENTES*******")
         consulta_clientes()
      caso "4"
         escreval("*******CONSULTA DESTINOS*******")
         consulta_destino()

      outrocaso
         escreval("Opção invalida")

      fimescolha

      escreval("Continuar no sistema? [s] Sim ou [n] Não")
      leia (op)

      limpatela
   fimenquanto

fimalgoritmo
