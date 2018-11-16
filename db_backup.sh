#!/bin/bash
#
echo "Starting FTP BackUp..."

pathofbackup=`dirname $0`/BackUps
ip_ps4="192.168.1.102"					#Change for your IP Adress PS4 Console
nowdat=$(date "+%m_%d_%Y_%H.%M.%S")

	download_path() {
	    local url=${1}
		printf "Downloading ${url}: "
	    echo -n "   "
	    wget -r --no-parent -P ${pathofbackup}/${nowdat} --progress=dot ${url} 2>&1 | grep --line-buffered "%" | sed -u -e "s,\.,,g" | awk '{printf("\b\b\b\b%4s", $2)}'
	    echo -ne "\b\b\b\b"
	    echo "DONE"
	}

	download_file() {
	    local url=${1}
		printf "Downloading ${url}: "
	    echo -n "    "
	    wget -P ${pathofbackup}/${nowdat}/DB_Dackup --progress=dot ${url} 2>&1 | grep --line-buffered "%" | sed -u -e "s,\.,,g" | awk '{printf("\b\b\b\b%4s", $2)}'
	    echo -ne "\b\b\b\b"
	    echo " DONE"
	}

	backup_data() {
		download_file "ftp://${ip_ps4}:1337/system_data/priv/mms/app.db"
		download_file "ftp://${ip_ps4}:1337/system_data/priv/mms/addcont.db"
		download_file "ftp://${ip_ps4}:1337/system_data/priv/mms/av_content_bg.db"
                         
		download_path "ftp://${ip_ps4}:1337/system_data/savedata"
		download_path "ftp://${ip_ps4}:1337/user/home"
		download_path "ftp://${ip_ps4}:1337/user/trophy"
		download_path "ftp://${ip_ps4}:1337/user/license"
		download_path "ftp://${ip_ps4}:1337/user/settings"
		download_path "ftp://${ip_ps4}:1337/user/system/webkit/secure"
		download_path "ftp://${ip_ps4}:1337/user/system/webkit/webbrowser"
		download_path "ftp://${ip_ps4}:1337/system_data/priv/home"
		download_path "ftp://${ip_ps4}:1337/system_data/priv/license"
		download_path "ftp://${ip_ps4}:1337/system_data/priv/activation"
	
		mv ${pathofbackup}/${nowdat}/$ip_ps4:1337 ${pathofbackup}/${nowdat}/UserData 
	}

	backup_disk() {
		download_path "ftp://${ip_ps4}:1337/mnt/disc"
		mv ${pathofbackup}/${nowdat}/$ip_ps4:1337/mnt/* ${pathofbackup}/${nowdat}/ 
		rm -rf ${pathofbackup}/${nowdat}/$ip_ps4:1337
	}
	
	while true; do
	    read -p "What do you want to backup,personal data - Y, optical disk - N?" yn
	    case $yn in
	        [Yy]* ) backup_data;break;;
	        [Nn]* ) backup_disk;break;;
	        * ) echo "Please answer personal data - Y, optical disk - N.";;
	    esac
	done
	
	size_this=$(du -sh ${pathofbackup}/${nowdat}| cut -f -1)
	size_all=$(du -sh ${pathofbackup} | cut -f -1)
	
	echo "BackUp folder ${pathofbackup}/${nowdat} size = ${size_this}, size all BackUps = ${size_all}"
	echo "FTP BackUp Complete.  Developed by Sc0rpion"
