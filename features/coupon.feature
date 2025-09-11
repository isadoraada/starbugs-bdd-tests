#language: pt

Funcionalidade: Uso de Cupons no Checkout

    Como usuário da Starbugs,
    Quero poder aplicar cupons de desconto na página de checkout,
    Para obter reduções no preço de produtos, aumentando minha satisfação com a experiência de compra

    Contexto:
        Dado que inicio a compra do item:
            | productName | Café com Leite  |
            | price       | R$ 19,99        |
            | delivery    | R$ 10,00        |
            | total       | R$ 29,99        |

    Cenário: Aplicar desconto de 20%
        Quando aplico o seguinte cupom de desconto: "MEUCAFE"
        Então o valor total do pedido deve ser atualizado para "R$ 25,99"
        
    Cenário: Cupom expirado
        Quando aplico o seguinte cupom de desconto: "PROMO20"
        Então deve ser exibida uma notificação "Cupom expirado!"
            E o valor total da compra permanece o mesmo

    Cenário: Cupom inválido
        Quando aplico o seguinte cupom de desconto: "PROMO100"
        Então deve ser exibida uma notificação "Cupom inválido!"
            E o valor total da compra permanece o mesmo