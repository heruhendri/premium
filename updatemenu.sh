#!/bin/bash
cd /usr/bin
wget -O menu "https://raw.githubusercontent.com/heruhendri/premium/master/menu/menu.sh"
wget # menu
wget -O menu "https://raw.githubusercontent.com/heruhendri/premium/master/menu/menu.sh"
wget -O m-vmess "https://raw.githubusercontent.com/heruhendri/premium/master/menu/m-vmess.sh"
wget -O m-vless "https://raw.githubusercontent.com/heruhendri/premium/master/menu/m-vless.sh"
wget -O running "https://raw.githubusercontent.com/heruhendri/premium/master/menu/running.sh"
wget -O clearcache "https://raw.githubusercontent.com/heruhendri/premium/master/menu/clearcache.sh"
wget -O m-ssws "https://raw.githubusercontent.com/heruhendri/premium/master/menu/m-ssws.sh"
wget -O m-trojan "https://raw.githubusercontent.com/heruhendri/premium/master/menu/m-trojan.sh"
wget -O marzban "https://raw.githubusercontent.com/heruhendri/premium/master/menu/marzban.sh"
# menu ssh ovpn
wget -O m-sshovpn "https://raw.githubusercontent.com/heruhendri/premium/master/menu/m-sshovpn.sh"
wget -O usernew "https://raw.githubusercontent.com/heruhendri/premium/master/ssh/usernew.sh"
wget -O trial "https://raw.githubusercontent.com/heruhendri/premium/master/ssh/trial.sh"
wget -O renew "https://raw.githubusercontent.com/heruhendri/premium/master/ssh/renew.sh"
wget -O hapus "https://raw.githubusercontent.com/heruhendri/premium/master/ssh/hapus.sh"
wget -O cek "https://raw.githubusercontent.com/heruhendri/premium/master/ssh/cek.sh"
wget -O member "https://github.com/heruhendri/premium/blob/master/ssh/member.sh"
wget -O delete "https://raw.githubusercontent.com/heruhendri/premium/master/ssh/delete.sh"
wget -O autokill "https://raw.githubusercontent.com/heruhendri/premium/master/ssh/autokill.sh"
wget -O ceklim "https://raw.githubusercontent.com/heruhendri/premium/master/ssh/ceklim.sh"
wget -O tendang "https://github.com/heruhendri/premium/blob/master/ssh/tendang.sh"
wget -O sshws "https://raw.githubusercontent.com/heruhendri/premium/master/ssh/sshws.sh"

# menu system
wget -O m-system "https://raw.githubusercontent.com/heruhendri/premium/master/menu/m-system.sh"
wget -O m-domain "https://raw.githubusercontent.com/heruhendri/premium/master/menu/m-domain.sh"
wget -O add-host "https://raw.githubusercontent.com/heruhendri/premium/master/ssh/add-host.sh"
wget -O certv2ray "https://raw.githubusercontent.com/heruhendri/premium/master/xray/certv2ray.sh"
wget -O speedtest "https://raw.githubusercontent.com/heruhendri/premium/master/ssh/speedtest_cli.py"
wget -O auto-reboot "https://raw.githubusercontent.com/heruhendri/premium/master/menu/auto-reboot.sh"
wget -O restart "https://raw.githubusercontent.com/heruhendri/premium/master/menu/restart.sh"
wget -O bw "https://raw.githubusercontent.com/heruhendri/premium/master/menu/bw.sh"
wget -O m-tcp "https://raw.githubusercontent.com/heruhendri/premium/master/menu/tcp.sh"
wget -O xp "https://raw.githubusercontent.com/heruhendri/premium/master/ssh/xp.sh"
wget -O sshws "https://raw.githubusercontent.com/heruhendri/premium/master/ssh/sshws.sh"
wget -O m-dns "https://raw.githubusercontent.com/heruhendri/premium/master/menu/m-dns.sh"
wget -q -O /usr/bin/updatemenu "https://raw.githubusercontent.com/heruhendri/premium/master/updatemenu.sh"
wget -O marzban "https://raw.githubusercontent.com/heruhendri/premium/master/menu/marzban.sh"

# vmess
wget -O add-ws "https://raw.githubusercontent.com/heruhendri/premium/master/xray/add-ws.sh"
wget -O trialvmess "https://raw.githubusercontent.com/heruhendri/premium/master/xray/trialvmess.sh" 
wget -O renew-ws "https://raw.githubusercontent.com/heruhendri/premium/master/xray/renew-ws.sh" 
wget -O del-ws "https://raw.githubusercontent.com/heruhendri/premium/master/xray/del-ws.sh" 
wget -O cek-ws "https://raw.githubusercontent.com/heruhendri/premium/master/xray/cek-ws.sh" 

# vless
wget -O add-vless "https://raw.githubusercontent.com/heruhendri/premium/master/xray/add-vless.sh" 
wget -O trialvless "https://raw.githubusercontent.com/heruhendri/premium/master/xray/trialvless.sh"
wget -O renew-vless "https://raw.githubusercontent.com/heruhendri/premium/master/xray/renew-vless.sh" 
wget -O del-vless "https://raw.githubusercontent.com/heruhendri/premium/master/xray/del-vless.sh" 
wget -O cek-vless "https://raw.githubusercontent.com/heruhendri/premium/xray/cek-vless.sh"

# trojan
wget -O add-tr "https://raw.githubusercontent.com/heruhendri/premium/master/xray/add-tr.sh"
wget -O trialtrojan "https://raw.githubusercontent.com/heruhendri/premium/master/xray/trialtrojan.sh"
wget -O del-tr "https://raw.githubusercontent.com/heruhendri/premium/master/xray/del-tr.sh" 
wget -O renew-tr "https://raw.githubusercontent.com/heruhendri/premium/master/xray/renew-tr.sh" 
wget -O cek-tr "https://raw.githubusercontent.com/heruhendri/premium/master/xray/cek-tr.sh"


#BACKUP
cd; clear; mkdir -p /etc/lukman
wget -q -O /etc/lukman/dependencies.sh raw.githubusercontent.com/heruhendri/premium/master/backup/dependencies.sh; bash /etc/lukman/dependencies.sh
wget -q -O /usr/bin/backup raw.githubusercontent.com/heruhendri/premium/master/backup/backup.sh; chmod 755 /usr/bin/backup
wget -q -O /usr/bin/autobackup raw.githubusercontent.com/heruhendri/premium/master/backup/autobackup.sh; chmod 755 /usr/bin/autobackup
wget -q -O /usr/bin/restore raw.githubusercontent.com/heruhendri/premium/master/backup/restore.sh; chmod 755 /usr/bin/restore
wget -q -O /usr/bin/backup_setting raw.githubusercontent.com/heruhendri/premium/master/backup/bset.sh; chmod 755 /usr/bin/backup_setting
echo -e " [INFO] UPDATE SELESAI"
clear
echo -e "$COLOR1┌─────────────────────────────────────────────────┐${NC}"
echo -e "$COLOR1 ${NC} ${COLBG1}            ${WH}• UPDATE SCRIPT VPS •              ${NC} $COLOR1 $NC"
echo -e "$COLOR1└─────────────────────────────────────────────────┘${NC}"
echo -e "$COLOR1┌─────────────────────────────────────────────────┐${NC}"
echo -e "$COLOR1 ${NC}  $COLOR1[INFO]${NC} Check for Script updates"
echo -e "$COLOR1 ${NC}  $COLOR1[INFO]${NC} INSTALL UPDATE MENU [done]"
echo -e "          ➢ Update All Menu" 
echo -e "          ➢ Fix All Bug"
echo -e "          ➢ New fitur"
echo -e "          ➢ BACKUP"
echo -e "          ➢ MARZBAN"
echo ""
read -n 1 -s -r -p "Press any key to back on menu"
menu
     
