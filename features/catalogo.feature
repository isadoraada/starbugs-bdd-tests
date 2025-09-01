#language: pt

Funcionalidade: Catálogo de Cafés
    Como um usuário do site,
    Quero ver o catálogo de cafés na página principal
    Para que eu possa escolher e saber mais sobre os cafés disponíveis

Cenário: Acessar o catálogo de cafés na página principal
    Quando acesso a página principal da Starbugs
    Então devo ser uma lista de cafés disponíveis

Cenário: Iniciar a compra de um café
    Dado que estou na página principal da Starbugs
        E que desejo comprar o seguinte produto:
        | productName    |  Expresso Gelado |
        | price          |  R$ 9,99         |
        | delivery       |  R$ 10,00        |
    Quando inicio a compra desse item 
    Então devo ver a página de checkout com os detalhes do produto
        E o valor total do pedido deve ser "R$ 19,99"

Cenário: Café indisponível 
    Dado que estou na página principal da Starbugs 
        E que desejo comprar o seguinte produto:
        | productName    |  Expresso Cremoso |
    Quando inicio a compra desse item
    Então devo ver uma mensagem informando que o produto está indisponível