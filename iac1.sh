#!/bin/bash
echo"Criando os diretórios..."

mkdir /Adm
mkdir /Ven
mkdir /Sec
mkdir /Publico

echo"Diretórios criados!"
echo"-------------------"
echo"Criando grupos..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Grupos finalizados!!"
echo"--------------------"
echo "Criando usuários..."

useradd carlos -m -s /bin/bash -p $(openssl passwd -6 senha123) -G GRP_ADM
passwd carlos -e
useradd maria -m -s /bin/bash -p $(openssl passwd -6 senha123) -G GRP_ADM
passwd maria -e
useradd joao -m -s /bin/bash -p $(openssl passwd -6 senha123) -G GRP_ADM
passwd joao -e

useradd debora -m -s /bin/bash -p $(openssl passwd -6 senha123) -G GRP_VEN
passwd debora -e
useradd sebastina -m -s /bin/bash -p $(openssl passwd -6 senha123) -G GRP_VEN
passwd sebastina -e
useradd roberto -m -s /bin/bash -p $(openssl passwd -6 senha123) -G GRP_VEN
passwd roberto -e

useradd josefina -m -s /bin/bash -p $(openssl passwd -6 senha123) -G GRP_SEC
passwd josefina -e
useradd amanda -m -s /bin/bash -p $(openssl passwd -6 senha123) -G GRP_SEC
passwd amanda -e
useradd rogerio -m -s /bin/bash -p $(openssl passwd -6 senha123) -G GRP_SEC
passwd rogerio -e

echo "Usuário criados!"
echo"-----------------"
echo "Especificando permissões"

chown root:GRP_ADM /Adm
chown root:GRP_VEN /Ven
chown root:GRP_SEC /Sec

chmod 770 /Adm
chmod 770 /Ven
chmod 770 /Sec
chmod 777 /Publico

echo"Feito!"
