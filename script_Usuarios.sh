#!/bin/bash
sudo su

echo "Criação dos diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criação dos grupos..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criação dos usuários... Senha padrão para todos usuários: teste123"

useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt teste123) -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd -crypt teste123) -G GRP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd -crypt teste123) -G GRP_ADM

useradd debora -m -s /bin/bash -p $(openssl passwd -crypt teste123) -G GRP_VEN
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -crypt teste123) -G GRP_VEN
useradd roberto -m -s /bin/bash -p $(openssl passwd -crypt teste123) -G GRP_VEN

useradd josefina -m -s /bin/bash -p $(openssl passwd -crypt teste123) -G GRP_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd -crypt teste123) -G GRP_SEC
useradd rogerio -m -s /bin/bash -p $(openssl passwd -crypt teste123) -G GRP_SEC

echo "Definindo as permissões"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod -R 777 /publico
chmod -R 770 /adm
chmod -R 770 /ven
chmod -R 770 /sec

echo "Script Finalizado!"