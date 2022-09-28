# Scripts Linux
## Scripts linux feitos no Bootcamp da DIO: Cloud DevOps Experience - Banco Carrefour

Este diretório foi criado durante o Bootcamp da DIO, Cloud DevOps Experience - Banco Carrefour.
O arquivo script_Usuarios.sh foi o primeiro projeto do Bootcamp.

 - Objetivos do Script:
    Criar 4 diretórios com os seguintes nomes - /publico, /adm, /ven, /sec
    Criar 3 grupos de usuários com os seguintes nome - GRP_ADM, GRP_VEN, GRP_SEC
    Criar uma lista de usuários com uma senha predefinida e adicionar os usuários aos seus respectivos grupos
    Definir permissões para cada grupo de usuários

 - Como as permissões foram definidas:
    Usuário root é o dono de todos os diretórios
    Cada grupo ficou como dono de seu respectivo diretório, exemplo: GRP_ADM dono do diretório /adm
    Todos os usuários e grupos tem permissão total sobre o diretório /publico
    Somente os usuários pertencentes a um grupo podem ter acesso ao seu diretório, exemplo: somente os usuários do grupo GRP_ADM podem acessar o diretório /adm

O script foi testado ao executar uma instância linux na AWS utilizando o serviço EC2, o script foi executado durante criação da instância.