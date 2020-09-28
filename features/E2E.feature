#language: pt

Funcionalidade: E2E

@compra
Cenário: Realizar compra

Dado que faço login no Luma
E busco por um produto 
Quando adiciono ao carrinho
E finalizo a compra
Então meu pedido é gerado

#E adiciono ao carrinho
#Quando finalizo a compra
#Então meu pedido é gerado