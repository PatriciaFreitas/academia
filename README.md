Projeto de automação da Academia Webjump - Trilha 2.

Utilizando-se de ferramentas em ambiente local para o desenvolvimento e execução dos cenários com:

Windows 10 
Visual Studio Code - versão 1.49.2 
Console Emulator - versão 3.16.0 
Google Chrome - versão 85.0.4183.121 
Chromedriver - versão 85.0.4183.87
Ruby - versão 2.6.6
Cucumber - versão 3.1.2 
Git - versão 2.28.0

Criação de 2 cenários: 
- Criação de um usuário na plataforma de compra do Magento 2 (Luma). 
- Realização de um pedido de compra com sucesso do login ao checkout.

Instalação Ruby e dependências através dos comandos:

gem install bundler
add do driver do chrome na gem

Execução dos cenários através do terminal com os comandos:

cucumber (execução de todos os cenários)
cucumber -t @nova_conta (execução do cenário 1 através da tag)
cucumber -t @compra (execução do cenário 2 através da tag)
Verificação da execução através de relatório.