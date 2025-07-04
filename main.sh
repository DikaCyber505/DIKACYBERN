#!/bin/bash

# Warna Merah
red="\033[1;31m"
reset="\033[0m"

clear

# ASCII Art Logo ALDOCYBER
echo -e "${red}"
echo " █████╗ ██╗     ██████╗  ██████╗  ██████╗██╗   ██╗███████╗██████╗ "
echo "██╔══██╗██║     ██╔══██╗██╔════╝ ██╔════╝██║   ██║██╔════╝██╔══██╗"
echo "███████║██║     ██████╔╝██║  ███╗██║     ██║   ██║█████╗  ██████╔╝"
echo "██╔══██║██║     ██╔═══╝ ██║   ██║██║     ██║   ██║██╔══╝  ██╔══██╗"
echo "██║  ██║███████╗██║     ╚██████╔╝╚██████╗╚██████╔╝███████╗██║  ██║"
echo "╚═╝  ╚═╝╚══════╝╚═╝      ╚═════╝  ╚═════╝ ╚═════╝ ╚══════╝╚═╝  ╚═╝"
echo -e "${reset}"
echo -e "${red}                Powered by Aldo${reset}"
echo ""

# Loading animation
echo -ne "${red}Memuat ALDOCYBER Tool"
for i in {1..5}; do
    echo -n "."
    sleep 0.4
done
clear

# Menu Loop
while true; do
    echo -e "${red}╔═════════════════════════════╗"
    echo -e "║         ALDOCYBER           ║"
    echo -e "║         by Aldo             ║"
    echo -e "╚═════════════════════════════╝${reset}"
    echo ""
    echo "[01] ADMIN FINDER"
    echo "[02] WIFI SCANNER"
    echo "[03] FACEBOOK UID INFO"
    echo "[99] EXIT"
    echo ""
    read -p "Pilih menu > " menu

    case $menu in
        1) bash tools/admin_finder.sh ;;
        2) python tools/wifi_scan.py ;;
        3) python tools/facebook_uid.py ;;
        99) echo -e "${red}Keluar...${reset}"; exit ;;
        *) echo -e "${red}Pilihan tidak tersedia!${reset}" ;;
    esac

    echo ""
    read -p "Tekan Enter untuk kembali ke menu..."
    clear
done
