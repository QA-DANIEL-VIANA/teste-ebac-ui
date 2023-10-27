            #language: pt

            Funcionalidade: Tela de Login

            Como aluno do portal EBAC
            Quero me autenticar
            Para visualizar minha nota

            contexto:
            Dado que eu acesse a pagina de autirticação do portal EBAC

            Cenario: Autenticação Válida
            Quando eu digitar o usuário "joao@ebac.com"
            E a senha "senha@123"
            Então deve exibir uma mensagem de boas vindas "Olá Joao"

            Cenario: Usuário inexixtente
            Quando eu digitar o usuário "fjjjjkdjdkn@ebac.com"
            E a senha "senha@123"
            Então deve exibir uma mensagem de alerta "Usuário inexixtente"

            Cenario: Usuário com senha inválida
            Quando eu digitar o usuário "joao@ebac.com"
            E a senha "senha@897"
            Então deve exibir uma mensagem de alerta "Usuário ou senha inválidos"

            Esquema do Cenario: Autenticar multiplos usuários
            Quando eu digitar o <usuario>
            E a <senha>
            Então deve exibir uma <mensagem> de sucesso
            Exemplos:
            | usuario            | senha   | mensagem   |
            | "joao@ebac.com.br" | "teste" | "olá Joao" |


            


