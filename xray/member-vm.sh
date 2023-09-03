#!/bin/bash
MYIP=$(wget -qO- ipv4.icanhazip.com);
echo "Checking VPS"
          clear  
          echo -e "$COLOR1┌─────────────────────────────────────────────────┐${NC}"  
          echo -e "$COLOR1│${NC} ${COLBG1}           • MEMBER VMESS •              ${NC} $COLOR1│$NC"  
          echo -e "$COLOR1└─────────────────────────────────────────────────┘${NC}"  
          echo -e "$COLOR1┌─────────────────────────────────────────────────┐${NC}"  
  echo "     NO      USER          EXP" 
          grep -E "^### " "/etc/xray/config.json" | cut -d ' ' -f 2-3 | column -t | sort | uniq | nl 
          until [[ ${CLIENT_NUMBER} -ge 1 && ${CLIENT_NUMBER} -le ${NUMBER_OF_CLIENTS} ]]; do  
                  if [[ ${CLIENT_NUMBER} == '1' ]]; then  
                          read -rp "Select one client [1]: " CLIENT_NUMBER  
                  else  
                          read -rp "Select one client [1-${NUMBER_OF_CLIENTS}]: " CLIENT_NUMBER  
                  fi
