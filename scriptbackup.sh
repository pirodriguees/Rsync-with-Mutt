#!/bin/bash
INICIO=$(date +%c)
DIASEMANA=$(date +%a)


if [ "$DIASEMANA" = "Mon" ]; then DIA="seg"

fi

if [ "$DIASEMANA" = "Seg" ]; then DIA="seg"

fi

if [ "$DIASEMANA" = "Tue" ]; then DIA="ter"

fi

if [ "$DIASEMANA" = "Ter" ]; then DIA="ter"

fi

if [ "$DIASEMANA" = "Wed" ]; then DIA="qua"

fi

if [ "$DIASEMANA" = "Qua" ]; then DIA="qua"

fi

if [ "$DIASEMANA" = "Thu" ]; then DIA="qui"

fi

if [ "$DIASEMANA" = "Qui" ]; then DIA="qui"

fi

if [ "$DIASEMANA" = "Fri" ]; then DIA="sex"

fi

if [ "$DIASEMANA" = "Sex" ]; then DIA="sex"

fi
#dias da semana em ingles ou portugues

#montando pasta compartilhada (cifs para windows)
sudo mount -t cifs //serversource/vol1 /folderdest/ -o username=user,password=''
rsync -rvazp --log-file=/var/log/backup/backup-$DIA.log /origem /destino$DIA

echo 'Backup' - DIA: $DIA| mutt -F /etc/backup/.muttrc -s Backup-HdExterno vinicius@destino.com.br -a  /var/log/backup/backup-$DIA.txt

#Corpo do email: 'Backup-HD Externo' 
#Assunto: Backup - DIA
#Arquivo\ de\ Configuração:  /etc/backup/.muttrc
#Anexo: /var/log/backup/backup-$DIA.txt
#Destinatario: vinicius@destino.com.br
