#language: Português

Funcionalidade: Login na plataforma  
Como cliente da EBAC-SHOP
Quero fazer o login (autenticação) na plataforma  
Para visualizar meus pedidos

Cenario: Login com dados válidos
Dado que estou na página de login
Quando inserir um usuário válido e uma senha válida
Então devo ser direcionado para a tela de checkout

Cenario:Login com usuário inválido
Dado que estou na página de login
Quando inserir um usuário inválido e uma senha válida
Então devo ver a mensagem de alerta "Usuário ou senha inválidos"

Cenario:Login com senha inválida
Dado que estou na página de login
Quando inserir um usuário válido e uma senha inválida
Então devo ver a mensagem de alerta "Usuário ou senha inválidos"

Cenario:Login com usuário e senha inválidos
Dado que estou na página de login
Quando inserir um usuário inválido e uma senha inválida
Então devo ver a mensagem de alerta "Usuário ou senha inválidos"

Cenario:Login com campo de usuário em branco
Dado que estou na página de login
Quando deixar o campo de usuário em branco e inserir uma senha válida
Então devo ver a mensagem de alerta "Usuário ou senha inválidos"

Cenario:Login com campo de senha em branco
Dado que estou na página de login
Quando inserir um usuário válido e deixar o campo de senha em branco
Então devo ver a mensagem de alerta "Usuário ou senha inválidos"

Cenario:Login com campos de usuário e senha em branco
Dado que estou na página de login
Quando deixar os campos de usuário e senha em branco
Então devo ver a mensagem de alerta "Usuário ou senha inválidos"