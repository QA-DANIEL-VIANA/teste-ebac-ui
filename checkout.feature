#language: pt

Funcionalidade: Tela de cadastro - Checkout
Como cliente da EBAC-SHOP
Quero fazer concluir meu cadastro   
Para finalizar minha compra

Contexto: Dado que estou realizando o cadastro

Cenario: dados obrigatorio cadastrado com sucesso.
Quando preencho todos os dados obrigatórios
E confirmo o cadastro
Então o sistema emite uma mensagem "cadastro realizado com sucesso"

Cenario: Falha na confirmação do cadastro.
Quando não preencho todos os dados obrigatórios
E confirmo o cadastro
Então o sistema emite uma mensagem "Favor preencher os campos obriogatórios"

Cenario: Não deve permitir cadastro de e-mail com formato inválido. 
Quando Preencho o email no formato inválido
E sigo para preenchimento do proximo campo
Então o sistema deve emitir mensagem "formato de email inválido"

Cenario: Permitir cadastro de email no formato válido. 
Quando Preencho o email no formato válido
E sigo para preenchimento do proximo campo
Então o sistema não deve emitir nenhuma mensagem de erro

Cenario: Emitir alerta quando houver campos vazios na confirmação do cadastro.
Quando deixo de preencer alguns campos não obrigatórios
E confirmo o cadastro
Então o sistema deve emitir um alerta "há campos vazios, deseja continuar?"

