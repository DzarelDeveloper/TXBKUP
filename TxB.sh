#!/bin/bash

 R="\033[1;31m"
 G="\033[1;32m"
 Y="\033[1;33m"
 PU="\033[1;34m"
 PI="\033[1;35m"
 B="\033[1;36m"
 W="\033[1;37m"
 BL="\033[1;30m"
 Orange="\e[38;5;208m"
 Purple="\e[38;5;93m"
 Teal="\e[38;5;37m"
 Pink="\e[38;5;206m"
 Gold="\e[38;5;220m"
 DarkGreen="\e[38;5;28m"
 SkyBlue="\e[38;5;111m"
 backup_directory="/sdcard/Termux-backup"

 # Create the backup directory if it doesn't exist
 if [ ! -d "$backup_directory" ]; then
     mkdir -p "$backup_directory"
 fi
 clear



 echo -e "\e[38;5;220m"
 echo
 echo -e "\t████████╗██╗  ██╗██████╗ ██╗  ██╗██╗   ██╗██████╗ "
 echo -e "\t╚══██╔══╝╚██╗██╔╝██╔══██╗██║ ██╔╝██║   ██║██╔══██╗"
 echo -e "\t   ██║    ╚███╔╝ ██████╔╝█████╔╝ ██║   ██║██████╔╝"
 echo -e "\t   ██║    ██╔██╗ ██╔══██╗██╔═██╗ ██║   ██║██╔═══╝ "
 echo -e "\t   ██║   ██╔╝ ██╗██████╔╝██║  ██╗╚██████╔╝██║     "
 echo -e "\t   ╚═╝   ╚═╝  ╚═╝╚═════╝ ╚═╝  ╚═╝ ╚═════╝ ╚═╝     "
 for ((i=1; i<=2; i++))
 do
 echo
 done

 echo
 echo
 echo -e "\t${PU}Coded ${W}By ${DarkGreen}Alzh ( Alsa × Azahi )"
 echo


                 echo -e "\t\t${R}Version 1.O"
 echo
 echo
 echo
 echo -e "\t${B}Choose ${Teal}The ${PI}Process:"
 echo
 echo -e "\t${Purple}[ ${W}1 ${Purple}] ${G}Backup"
 echo
 echo -e "\t${Purple}[ ${W}2 ${Purple}] ${Gold}Restore"
 echo
 echo -e "\t${Purple}[ ${W}3 ${Purple}] ${Pink}Exit"
 echo
  echo -e "\e[38;5;111m"
     read -p "Masukkan pilihan Anda:: " choice

   case $choice in
    1)
        # Backup data
        echo -e "\033[1;32m"
        tar -czvf "$backup_directory/termux_backup_$(date +'%Y%m%d%H%M%S').tar.gz" /data/data/com.termux/files/home
        echo
        echo -e "${Gold}Backup completed. File stored in ${R}$backup_directory"
        ;;
    2)
        # Restore data
        echo -e "\e[38;5;93m"
        read -p "Masukkan Nama File Cadangan yang Akan Dipulihkan: " backup_file
        tar -xzvf "$backup_directory/$backup_file" -C /
        echo
        echo "${G}Restore ${PI}completed."
        ;;
    3)
        echo
        echo -e "${DarkGreen}Exiting..."
        echo
        echo -e "${G}Thanks You All!!"
        echo
        exit 0
        ;;
    *)
        echo -e "${R} Pilihan tidak valid. Silakan pilih masukan yang valid  ${G}(1/2/3)."
        ;;
esac
 for ((i=1; i<=5; i++))
 do
 echo
 done
 while true; do
 echo -e "\033[1;32m"
     read -p "Apakah Anda Ingin Memulai Alat Ini Lagi? (yes/no) : " all
 echo

     if [ "$all" == "yes" ]; then
         bash TxB.sh
         break
     elif [ "$all" == "no" ]; then
                 echo
         echo -e "${G}Thank ${PI}You"
         echo
         break
     else
         echo -e "${R}Error: Invalid ${Y}Input. Please Enter ${G}'yes' ${W}or ${G}'no'"
 echo
     fi
 done
