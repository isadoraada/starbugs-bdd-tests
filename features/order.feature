#language: pt

Funcionalidade: Pedidos

    Como um usuário do site, 
    Quero selecionar e comprar cafés
    Para que eu possa receber produtos no meu endereço e efetuar o pagamento na entrega

    Cenário: Compra bem sucedida
    Dado que estou na página principal da Starbugs
        E que iniciei a compra do item "Expresso Tradicional"
    Quando faço a busca do seguinte CEP: "04534011"
        E informo os demais dados do endereço:
        | number     | 1000                       |
        | complement | Sala 101                   |
        E escolho a forma de pagamento "Cartão de Débito"
        E por fim finalizo a compra deste pedido
    Então sou redirecionado para a página de confirmação do pedido
        E deve ser informado um prazo de entrega entre 20 e 30 minutos