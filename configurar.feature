            #language: Português

            Funcionalidade: configurar produto
            Como cliente da EBAC-SHOP
            Quero selecionar tamanho, cor e quantidade
            Para  Adicionar o produto no carrinho

            Contexto:
            Dado que acesso a plataforma da EBAC-SHOP

            Cenario: Produto é inserido no carrinho
            Quando Escolho o produto "Camiseta"
            E seleciono tamanho "GG", cor "Azul" e quantidade "8"
            Então deve exibir uma mensagem "produto adicionado com sucesso"

            Esquema do Cenario: Produto adicionado no carrinho com sucesso
            Quando Escolher o <produto>
            E selecionar <tamanho>, <cor> e <quantidade>
            Então deve exibir uma <mensagem> "produto adicionado com sucesso"

            Exemplos:

            | produto         | tamanho | cor      | quantidade | mensagem                       |
            | Camiseta        | P       | BRANCA   | 5          | produto adicionado com sucesso |
            | Shorts          | GG      | PRETO    | 1          | produto adicionado com sucesso |
            | Bermudaa        | M       | MARRON   | 3          | produto adicionado com sucesso |
            | Camisa          | EXG     | AZUL     | 9          | produto adicionado com sucesso |
            | Blusa           | PP      | BRANCA   | 6          | produto adicionado com sucesso |
            | Corta vento     | GG      | PRETO    | 2          | produto adicionado com sucesso |
            | Colete          | M       | VERMELHO | 7          | produto adicionado com sucesso |
            | Camiseta Regata | M       | AMARELA  | 8          | produto adicionado com sucesso |

            //técnica de teste valor limite
            Cenario: Produto com quantidade maior que a permitida
            Quando Escolher o produto "Camiseta"
            E selecionar tamanho "P", cor "vermelha" e quantidade "11"
            Então deve exibir uma mensagem de alerta "Quantidade máxima 10 unidades"

            Cenario: Produto com quantidade permitida
            Quando Escolher o produto "Camiseta"
            E selecionar tamanho "M", cor "Marrom" e quantidade "10"
            Então deve exibir uma mensagem "produto adicionado com sucesso"

            Cenario: Produto com quantidade permitida
            Quando Escolher o produto "Camiseta"
            E selecionar tamanho "M", cor "Marrom" e quantidade "9"
            Então deve exibir uma mensagem "produto adicionado com sucesso"


            Esquema do Cenario: Falha ao adicionar o produto no carrinho
            Quando Escolher o <produto>
            E selecionar <tamanho>, <cor> e <quantidade>
            Então deve exibir uma <mensagem> "Quantidade máxima 10 unidades"

            Exemplos:

            | produto  | tamanho | cor    | quantidade | mensagem                      |
            | Camiseta | p       | BRANCA | 13         | Quantidade máxima 10 unidades |
            | Shorts   | GG      | AZUL   | 15         | Quantidade máxima 10 unidades |
            | Bermuda  | M       | MARRON | 11         | Quantidade máxima 10 unidades |


        Funcionalidade: Limpar carrinho
        Como cliente da EBAC-SHOP
        Quero adicionar varios produtos no carrinho
        Para finalizar a compra

        Cenário: Adicionar um único produto ao carrinho com sucesso
        Dado que estou logado como cliente da EBAC-SHOP
        E já escolhi um produto para comprar
        Quando eu informar a quantidade "1" do produto
        Então o produto deve ser adicionado ao carrinho com sucesso

        Cenário: Adicionar múltiplos produtos ao carrinho com sucesso
        Dado que estou logado como cliente da EBAC-SHOP
        E já escolhi vários produtos para comprar
        Quando eu informar a quantidade "9" para cada produto
        Então todos os produtos devem ser adicionados ao carrinho com sucesso

        Cenário: Adicionar 10 produtos ao carrinho com sucesso
        Dado que estou logado como cliente da EBAC-SHOP
        E já escolhi vários produtos para comprar
        Quando eu informar a quantidade "10" para cada produto
        Então todos os produtos devem ser adicionados ao carrinho com sucesso

        Cenário: Tentar adicionar mais de 10 produtos ao carrinho
        Dado que estou logado como cliente da EBAC-SHOP
        E já escolhi vários produtos para comprar
        Quando eu informar a quantidade "11" para um produto
        Então uma mensagem de erro deve ser exibida informando que não é permitido adicionar mais de 10 produtos

        Cenário: Adicionar 0 produtos ao carrinho
        Dado que estou logado como cliente da EBAC-SHOP
        E já escolhi um produto para comprar
        Quando eu informar a quantidade "0" do produto
        Então uma mensagem de erro deve ser exibida informando que é necessário informar uma quantidade válida

        Cenário: Adicionar quantidade negativa de produtos ao carrinho
        Dado que estou logado como cliente da EBAC-SHOP
        E já escolhi um produto para comprar
        Quando eu informar a quantidade "-1" do produto
        Então uma mensagem de erro deve ser exibida informando que é necessário informar uma quantidade válida

        Cenário: Adicionar uma string como quantidade de produtos ao carrinho
        Dado que estou logado como cliente da EBAC-SHOP
        E já escolhi um produto para comprar
        Quando eu informar a quantidade "abc" do produto
        Então uma mensagem de erro deve ser exibida informando que é necessário informar uma quantidade válida

        Esquema do Cenario: Adicionar produtos no carrinho (máximo 10 produtos por venda)
        Quando Escolher o <produto>
        E selecionar <quantidade> desejada
        Então deve exibir uma <mensagem>

        Examples:
            | produto  | quantidade | mensagem                                      |
            | Camiseta | 01         | Produto adicionado ao carrinho com sucesso    |
            | Camiseta | 09         | Produtos adicionados ao carrinho com sucesso  |
            | Camiseta | 10         | Produtos adicionados ao carrinho com sucesso  |
            | Camiseta | 11         | Não é permitido adicionar mais de 10 produtos |
            | Camiseta | 0          | É necessário informar uma quantidade válida   |
            | Camiseta | -1         | É necessário informar uma quantidade válida   |
            | Camiseta | abc        | É necessário informar uma quantidade válida   |




Funcionalidade: Limpar carrinho
Como cliente da EBAC-SHOP
Quero Limpar o carrinho de compras
Para que o carrinho fique vazio

Cenário: Limpar carrinho com sucesso
Dado que eu tenho 3 itens no carrinho
Quando eu clicar no botão "limpar"
Então o carrinho deve estar vazio

Cenário: Tentativa de limpar carrinho vazio
Dado que o carrinho está vazio
Quando eu clicar no botão "limpar"
Então devo ver uma mensagem de carrinho vazio

Cenário: Limpar carrinho após adicionar mais itens
Dado que eu tenho 3 itens no carrinho
E adiciono mais 2 itens ao carrinho
Quando eu clicar no botão "limpar"
Então o carrinho deve estar vazio

Cenário: Limpar carrinho com transação pendente
Dado que eu tenho 3 itens no carrinho
E tenho uma transação pendente
Quando eu clicar no botão "limpar"
Então devo ver uma mensagem de confirmação antes de limpar o carrinho

Cenário: Limpar carrinho com confirmação
Dado que eu tenho 3 itens no carrinho
E tenho uma transação pendente
Quando eu clicar no botão "limpar"
E confirmar a limpeza do carrinho
Então o carrinho deve estar vazio




