#language: pt

Funcionalidade: Criar nova conta de cliente

@nova_conta
Cenário: Criar Nova conta

Dado que acesso o Luma
E escolho a opção criar conta
Quando preencho o formulário corretamente
E seleciono Criar conta
Então minha conta é criada 
E vejo as suas informações 
