#language:pt

Funcionalidade: Login

    Para que eu possa cadastrar e gerenciar minhas tarefas
    Sendo um usuário
    Posso acessar o sistema com meu email e senha previamente cadastrados.

    Cenário: Usuário deve ser autorizado

        Dado que eu acesso a página principal
        Quando eu faço login com "eu@papito.io" e "123456"
        Então devo ser autenticado com sucesso
        E devo ver a seguinte mensagem "Olá, Fernando"

    Cenário: Senha errada

        Dado que eu acesso a página principal
        Quando eu faço login com "eu@papito.io" e "xpto123"
        Então devo devo ver a seguinte mensagem "Senha inválida."

    Cenário: Usuário não existe

        Dado que eu acesso a página principal
        Quando eu faço login com "eu@papito.net" e "xpto123"
        Então devo devo ver a seguinte mensagem "Usuário não cadastrado."

    Cenário: Email incorreto
    
        Dado que eu acesso a página principal
        Quando eu faço login com "eupapito.net" e "xpto123"
        Então devo devo ver a seguinte mensagem "Email incorreto ou ausente."
