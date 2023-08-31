 clear 
 echo -e "$COLOR1┌─────────────────────────────────────────────────┐${NC}" 
 echo -e "$COLOR1 ${NC} ${COLBG1}            ${WH}• RENEW TROJAN USER •              ${NC} $COLOR1 $NC" 
 echo -e "$COLOR1└─────────────────────────────────────────────────┘${NC}" 
 echo -e "$COLOR1┌─────────────────────────────────────────────────┐${NC}" 
 NUMBER_OF_CLIENTS=$(grep -c -E "^#! " "/etc/xray/config.json") 
 if [[ ${NUMBER_OF_CLIENTS} == '0' ]]; then 
 echo -e "$COLOR1 ${NC}  • You have no existing clients!" 
 echo -e "$COLOR1└─────────────────────────────────────────────────┘${NC}"  
 echo -e "$COLOR1┌────────────────────── ${WH}BY${NC} ${COLOR1}───────────────────────┐${NC}" 
 echo -e "$COLOR1 ${NC}                 ${WH}• PREMIUM •${NC}                 $COLOR1 $NC" 
 echo -e "$COLOR1└─────────────────────────────────────────────────┘${NC}" 
 echo "" 
 read -n 1 -s -r -p "   Press any key to back on menu" 
 menu
 fi 
 clear 
 echo -e "$COLOR1┌─────────────────────────────────────────────────┐${NC}" 
 echo -e "$COLOR1 ${NC} ${COLBG1}            ${WH}• RENEW TROJAN USER •              ${NC} $COLOR1 $NC" 
 echo -e "$COLOR1└─────────────────────────────────────────────────┘${NC}" 
 echo -e "$COLOR1┌─────────────────────────────────────────────────┐${NC}" 
 grep -E "^#! " "/etc/xray/config.json" | cut -d ' ' -f 2-3 | column -t | sort | uniq | nl 
 echo -e "$COLOR1 ${NC}" 
 echo -e "$COLOR1 ${NC}  ${COLOR1}• ${WH}[${COLOR1}NOTE${WH}] Press any key to back on menu" 
 echo -e "$COLOR1└─────────────────────────────────────────────────┘${NC}"  
 echo -e "$COLOR1┌────────────────────── ${WH}BY${NC} ${COLOR1}───────────────────────┐${NC}" 
 echo -e "$COLOR1 ${NC}                 ${WH}• PREMIUM •${NC}                 $COLOR1 $NC" 
 echo -e "$COLOR1└─────────────────────────────────────────────────┘${NC}" 
 echo -e "$COLOR1───────────────────────────────────────────────────${NC}" 
 read -rp "   Input Username : " user 
 if [ -z $user ]; then 
 menu 
 else 
 read -p "   Expired (days): " masaaktif 
 if [ -z $masaaktif ]; then 
 masaaktif="1" 
 fi 
 exp=$(grep -E "^#! $user" "/etc/xray/config.json" | cut -d ' ' -f 3 | sort | uniq) 
 now=$(date +%Y-%m-%d) 
 d1=$(date -d "$exp" +%s) 
 d2=$(date -d "$now" +%s) 
 exp2=$(( (d1 - d2) / 86400 )) 
 exp3=$(($exp2 + $masaaktif)) 
 exp4=`date -d "$exp3 days" +"%Y-%m-%d"` 
 sed -i "/#! $user/c\#! $user $exp4" /etc/xray/config.json 
 systemctl restart xray > /dev/null 2>&1 
 clear 
 echo -e "$COLOR1┌─────────────────────────────────────────────────┐${NC}" 
 echo -e "$COLOR1 ${NC} ${COLBG1}            ${WH}• RENEW TROJAN USER •              ${NC} $COLOR1 $NC" 
 echo -e "$COLOR1└─────────────────────────────────────────────────┘${NC}" 
 echo -e "$COLOR1┌─────────────────────────────────────────────────┐${NC}" 
 echo -e "$COLOR1 ${NC}   [INFO]  $user Account Renewed Successfully" 
 echo -e "$COLOR1 ${NC}   " 
 echo -e "$COLOR1 ${NC}   Client Name : $user" 
 echo -e "$COLOR1 ${NC}   Days Added  : $masaaktif Days" 
 echo -e "$COLOR1 ${NC}   Expired On  : $exp4" 
 echo -e "$COLOR1└─────────────────────────────────────────────────┘${NC}"  
 echo -e "$COLOR1┌────────────────────── ${WH}BY${NC} ${COLOR1}───────────────────────┐${NC}" 
 echo -e "$COLOR1 ${NC}                 ${WH}• PREMIUM •${NC}                 $COLOR1 $NC" 
 echo -e "$COLOR1└─────────────────────────────────────────────────┘${NC}" 
 echo "" 
 read -n 1 -s -r -p "   Press any key to back on menu" 
 menu
 fi
