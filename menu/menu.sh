#!/bin/bash
echo "Checking VPS"
#link izin ip vps
url_izin='https://raw.githubusercontent.com/rizkyckj/izin/master/izin'

#IP VPS
ip_vps=$(curl -sS ifconfig.me)

# Mendapatkan isi file izin.txt dari URL
izin=$(curl -s "$url_izin")

# Memeriksa apakah konten izin.txt berhasil didapatkan
if [[ -n "$izin" ]]; then
  while IFS= read -r line; do
    # Memisahkan nama VPS, IP VPS, dan tanggal kadaluwarsa
    nama=$(echo "$line" | awk '{print $1}')
    ipvps=$(echo "$line" | awk '{print $2}')
    tanggal=$(echo "$line" | awk '{print $3}')

    # Memeriksa apakah IP VPS saat ini cocok dengan IP VPS yang ada di izin.txt
    if [[ "$ipvps" == "$ip_vps" ]]; then
      echo "Nama VPS: $nama"
      echo "IP VPS: $ipvps"
      echo "Tanggal Kadaluwarsa: $tanggal"
      break
    fi
  done <<< "$izin"

  # Memeriksa apakah IP VPS ditemukan dalam izin.txt
  if [[ "$ipvps" != "$ip_vps" ]]; then
echo "acces denied 🔧 "
    exit 0
  fi
else
  echo "Konten izin.txt tidak berhasil didapatkan dari URL"
  exit 0
fi

vlx=$(grep -c -E "^#& " "/etc/xray/config.json")
let vla=$vlx/2
vmc=$(grep -c -E "^### " "/etc/xray/config.json")
let vma=$vmc/2
ssh1="$(awk -F: '$3 >= 1000 && $1 != "nobody" {print $1}' /etc/passwd | wc -l)"

trx=$(grep -c -E "^#! " "/etc/xray/config.json")
let tra=$trx/2
ssx=$(grep -c -E "^## " "/etc/xray/config.json")
let ssa=$ssx/2

clear
# Color Validation
WH='\033[1;37m'                   
DF='\e[39m'
Bold='\e[1m'
Blink='\e[5m'
yell='\e[33m'
red='\e[31m'
green='\e[32m'
blue='\e[34m'
PURPLE='\e[35m'
cyan='\e[36m'
Lred='\e[91m'
Lgreen='\e[92m'
Lyellow='\e[93m'
BGreen='\e[1;32m'
BYellow='\e[1;33m'
BBlue='\e[1;34m'
BPurple='\e[1;35m'
BCyan='\e[1;36m'
NC='\e[0m'
GREEN='\033[0;32m'
ORANGE='\033[0;33m'
LIGHT='\033[0;37m'
y='\033[0;34m'
IPurple='\033[0;95m'
On_IPurple='\033[0;105m'
BIPurple='\033[1;95m' 
RVPN='\\E[40;1;37m' 
# // Clear

clear
cek=$(service ssh status | grep active | cut -d ' ' -f5)
if [ "$cek" = "active" ]; then
stat=-f5
else
stat=-f7
fi
ssh=$(service ssh status | grep active | cut -d ' ' $stat)
if [ "$ssh" = "active" ]; then
ressh="${BBlue}ON${NC}"
else
ressh="${red}OFF${NC}"
fi
ngx=$(service nginx status | grep active | cut -d ' ' $stat)
if [ "$ngx" = "active" ]; then
resngx="${BBlue}ON${NC}"
else
resngx="${red}OFF${NC}"
fi
dbr=$(service dropbear status | grep active | cut -d ' ' $stat)
if [ "$dbr" = "active" ]; then
resdbr="${BBlue}ON${NC}"
else
resdbr="${red}OFF${NC}"
fi
v2r=$(service xray status | grep active | cut -d ' ' $stat)
if [ "$v2r" = "active" ]; then
resv2r="${BBlue}ON${NC}"
else
resv2r="${red}OFF${NC}"
fi
# STATUS SERVICE UDP CUSTOM
if [[ $udpc == "running" ]]; then
   udp2="${GB}[ ON ]${NC}${NC}"
else
   udp2="${RB}[ OFF ]${NC}"
fi
# VPS Information
#Domain
domain=$(cat /etc/xray/domain)
#Status certificate
modifyTime=$(stat $HOME/.acme.sh/${domain}_ecc/${domain}.key | sed -n '7,6p' | awk '{print $2" "$3" "$4" "$5}')
modifyTime1=$(date +%s -d "${modifyTime}")
currentTime=$(date +%s)
stampDiff=$(expr ${currentTime} - ${modifyTime1})
days=$(expr ${stampDiff} / 86400)
remainingDays=$(expr 90 - ${days})
tlsStatus=${remainingDays}
if [[ ${remainingDays} -le 0 ]]; then
	tlsStatus="expired"
fi
# OS Uptime
uptime="$(uptime -p | cut -d " " -f 2-10)"
# Download
#Download/Upload today
dtoday="$(vnstat -i eth0 | grep "today" | awk '{print $2" "substr ($3, 1, 1)}')"
utoday="$(vnstat -i eth0 | grep "today" | awk '{print $5" "substr ($6, 1, 1)}')"
ttoday="$(vnstat -i eth0 | grep "today" | awk '{print $8" "substr ($9, 1, 1)}')"
#Download/Upload yesterday
dyest="$(vnstat -i eth0 | grep "yesterday" | awk '{print $2" "substr ($3, 1, 1)}')"
uyest="$(vnstat -i eth0 | grep "yesterday" | awk '{print $5" "substr ($6, 1, 1)}')"
tyest="$(vnstat -i eth0 | grep "yesterday" | awk '{print $8" "substr ($9, 1, 1)}')"
#Download/Upload current month
dmon="$(vnstat -i eth0 -m | grep "`date +"%b '%y"`" | awk '{print $3" "substr ($4, 1, 1)}')"
umon="$(vnstat -i eth0 -m | grep "`date +"%b '%y"`" | awk '{print $6" "substr ($7, 1, 1)}')"
tmon="$(vnstat -i eth0 -m | grep "`date +"%b '%y"`" | awk '{print $9" "substr ($10, 1, 1)}')"
# user
Exp2=$"Lifetime"
Name=$"rvpnstores"
# Getting CPU Information
cpu_usage1="$(ps aux | awk 'BEGIN {sum=0} {sum+=$3}; END {print sum}')"
cpu_usage="$((${cpu_usage1/\.*} / ${corediilik:-1}))"
cpu_usage+=" %"
#ISP=$(curl -s ipinfo.io/org?token=ce3da57536810d | cut -d " " -f 2-10 )
#CITY=$(curl -s ipinfo.io/city?token=ce3da57536810d )
#WKT=$(curl -s ipinfo.io/timezone?token=ce3da57536810d )
DAY=$(date +%A)
DATE=$(date +%m/%d/%Y)
DATE2=$(date -R | cut -d " " -f -5)
IPVPS=$(curl -s ifconfig.me )
LOC=$(curl -s ifconfig.co/country )
cname=$( awk -F: '/model name/ {name=$2} END {print name}' /proc/cpuinfo )
cores=$( awk -F: '/model name/ {core++} END {print core}' /proc/cpuinfo )
freq=$( awk -F: ' /cpu MHz/ {freq=$2} END {print freq}' /proc/cpuinfo )
tram=$( free -m | awk 'NR==2 {print $2}' )
uram=$( free -m | awk 'NR==2 {print $3}' )
fram=$( free -m | awk 'NR==2 {print $4}' )
clear 
echo -e "┌────────────────────────────────────────────────┐\033[0m${NC}"
echo -e "${COLOR1}|\\E[40;1;37m      SCRIPT MULTIPORT BY RVPN STORES       \E[0m"
echo -e "${COLOR1}│────────────────────────────────────────────────┘\033[0m${NC}"
echo -e "${COLOR1}│${NC} ☞ OS                  = "`hostnamectl | grep "Operating System" | cut -d ' ' -f5-`
echo -e "${COLOR1}│${NC} ☞ TIME                = $( date -d "0 days" +"%d-%m-%Y | %X" )"
echo -e "${COLOR1}│${NC} ☞ DOMAIN              = $( cat /etc/xray/domain )"
echo -e "${COLOR1}│${NC} ☞ IP VPS              = $ip_vps"
echo -e "${COLOR1}│${NC} ☞ ISP SERVER          = $(wget -qO- ipinfo.io/org )" 
echo -e "${COLOR1}│${NC} ☞ RAM                 = $uram MB / $tram MB"
echo -e "${COLOR1}└────────────────────────────────────────────────\033[0m${NC}"
echo -e "${COLOR1}SSH ${NC}: $ressh"" ${COLOR1} NGINX ${NC}: $resngx"" ${COLOR1}  XRAY ${NC}: $resv2r"" ${COLOR1} TROJAN ${NC}: $resv2r"
echo -e "${COLOR1}    STUNNEL ${NC}: $ressh" "${COLOR1} DROPBEAR ${NC}: $resdbr" "${COLOR1} UDP-CUSTOM ${NC}: $resv2r"    
echo -e "$COLOR1┌─────────────────────────────────────────────────┐${NC}"   
echo -e "  ${WH}[${COLOR1}02${WH}]${NC} ${y}• ${WH}SSHWS   ${WH}[${COLOR1}${ssh1}${WH}]    ${WH}[${COLOR1}07${WH}]${NC} ${Lred}• ${WH}MARZBAN ${WH}[${COLOR1}Menu${WH}]  $COLOR1 $NC"
echo -e "  ${WH}[${COLOR1}02${WH}]${NC} ${y}• ${WH}VMESS   ${WH}[${COLOR1}${vmc}${WH}]    ${WH}[${COLOR1}08${WH}]${NC} ${Lred}• ${WH}UPDATE  ${WH}[${COLOR1}Menu${WH}]  $COLOR1 $NC"  
echo -e "  ${WH}[${COLOR1}03${WH}]${NC} ${y}• ${WH}VLESS   ${WH}[${COLOR1}${vlx}${WH}]    ${WH}[${COLOR1}09${WH}]${NC} ${Lred}• ${WH}ADD HOST/DOMAIN  $COLOR1 $NC"  
echo -e "  ${WH}[${COLOR1}04${WH}]${NC} ${y}• ${WH}TROJAN  ${WH}[${COLOR1}${trx}${WH}]    ${WH}[${COLOR1}10${WH}]${NC} ${Lred}• ${WH}RENEW CERT       $COLOR1 $NC"  
echo -e "  ${WH}[${COLOR1}05${WH}]${NC} ${y}• ${WH}SS WS   ${WH}[${COLOR1}$ssx${WH}]    ${WH}[${COLOR1}11${WH}]${NC} ${Lred}• ${WH}MONITOR ${WH}[${COLOR1}Menu${WH}]  $COLOR1 $NC"
echo -e "  ${WH}[${COLOR1}06${WH}]${NC} ${y}• ${WH}BACKUP  ${WH}[${COLOR1}Menu${WH}] ${WH}[${COLOR1}12${WH}]${NC} ${Lred}• ${WH}INFO    ${WH}[${COLOR1}Menu${WH}]  $COLOR1 $NC"
echo -e "$COLOR1└─────────────────────────────────────────────────┘${NC}"
echo -e ""
read -p " Select From Options [1-12 or x ] :  "  opt
echo -e   ""
case $opt in
1) clear ; m-sshovpn ;;
2) clear ; m-vmess ;;
3) clear ; m-vless ;;
4) clear ; m-trojan ;;
5) clear ; m-ssws ;;
6) clear ; m-dns ;;
7) clear ; marzban ;;
8) clear ; updatemenu ;;
9) clear ; add-host ;;
10) clear ; certv2ray ;;
11) clear ; vnstat ;;
12) clear ; cat log-install.txt ;;
x) exit ;;
*) echo "Anda salah tekan " ; sleep 1 ; menu ;;
esac
