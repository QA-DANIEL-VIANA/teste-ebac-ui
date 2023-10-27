            #language: Português

            Funcionalidade: configurar produto
            Como cliente da EBAC-SHOP
            Quero selecionar tamanho, cor e quantidade
            Para  Adicionar o produto no carrinho

            Contexto:
            Dado que acesso a plataforma da EBAC-SHOP


            Esquema do Cenario: Produto adicionado no carrinho com sucesso
            Quando Escolher o <produto>
            E selecionar <tamanho>, <cor> e <quantidade>
            Então deve exibir uma <mensagem> "produto adicionado com sucesso"

            Exemplos:

            | produto  | tamanho | cor    | quantidade | mensagem                       |
            | Camiseta | P       | BRANCA | 5          | produto adicionado com sucesso |
            | Shorts   | GG      | PRETO  | 1          | produto adicionado com sucesso |
            | Bermudaa | M       | MARRON | 3          | produto adicionado com sucesso |

            //técnica de teste valor limite

            Esquema do Cenario: Falha ao adicionar o produto no carrinho
            Quando Escolher o <produto>
            E selecionar <tamanho>, <cor> e <quantidade>
            Então deve exibir uma <mensagem> "Quantidade máxima 10 unidades"

            Exemplos:

            | produto  | tamanho | cor    | quantidade | mensagem                       |
            | Camiseta | p       | BRANCA | 09         | produto adicionado com sucesso |
            | Shorts   | GG      | AZUL   | 10         | produto adicionado com sucesso |
            | Bermuda  | M       | MARRON | 11         | Quantidade máxima 10 unidades  |


Funcionalidade: Limpar carrinho
Como cliente da EBAC-SHOP
Quero adicionar varios produtos no carrinho
Para finalizar a compra

Cenario: Limpar carrinho quando pressionar o botão "limpar"
Dado que eu tenho itens no carrinho
Quando eu clicar no botão"limpar"
Então Deve emitir uma mensagem "seu carrinho foi limpo com sucesso"







