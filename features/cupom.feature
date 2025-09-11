#language: pt

Funcionalidade: Uso de Cupons no Checkout

    Como usuário da Starbugs,
    Quero poder aplicar cupons de desconto na página de checkout,
    Para obter reduções no preço de produtos, aumentando minha satisfação com a experiência de compra

    Cenário: Aplicar desconto de 20%
        Dado que o usuário está na página de checkout
            E o item que está no carrinho é o Café com Leite no valor de R$ 19,99
            E que a taxa de entrega é de R$ 10,00
            E o valor total da compra é de R$ 29,99
            E que tenho um cupom de desconto válido de 20%
        Quando o usuário insere o cupom de desconto no campo apropriado
        Então o sistema deve aplicar o desconto de 20% apenas no valor do Café com Leite
            E o valor final da compra deve ser atualizado para R$ 25,99

    Cenário: Cupom expirado
        Dado que o usuário está na página de checkout 
            E o item que está no carrinho é o Café com Leite no valor de R$ 19,99
            E que a taxa de entrega é de R$ 10,00
            E o valor total da compra é de R$ 29,99
            E tenho um cupom de desconto expirado
        Quando o usuário aplica o cupom de desconto expirado
        Então deve ser exibida uma notificação "Cupom expirado!"
            E o valor total da compra permanece R$ 29,99

    Cenário: Cupom inválido
        Dado que o usuário está na página de checkout 
            E o item que está no carrinho é o Café com Leite no valor de R$ 19,99
            E que a taxa de entrega é de R$ 10,00
            E o valor total da compra é de R$ 29,99
            E tenho um cupom de desconto expirado
        Quando o usuário aplica o cupom de desconto inválido
        Então deve ser exibida uma notificação "Cupom inválido!"
            E o valor total da compra permanece R$ 29,99