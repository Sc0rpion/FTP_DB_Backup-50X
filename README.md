# FTP_DB_Backup-50X

[Как запустить на Windows 10](https://github.com/Sc0rpion/FTP_DB_Backup-50X/blob/master/README.md#как-запустить-на-windows-10) / [How to run on Windows 10](https://github.com/Sc0rpion/FTP_DB_Backup-50X/blob/master/README.md#how-to-run-it-on-windows-10)

FTP_DB_Backup-50X .sh script to create backups via ftp payload.
You will need any unix machine (pc, nas, raspberry, ...) and PS4 with 5.05

Dont forget change ip ps4 to your in db_backup.sh  ip_ps4

Run ftp payload on ps4 and start db_backup.sh
By default, the BackUp will be executed in the folder where the location script ./backups/ (the date and time the script was run)

BackUp structure is fully compatible with stooged DB_SG_Backup-50X structure

---------------------------------------------------------------------------------------------------------------------------------------

FTP_DB_Backup-50X .sh скрипт для создания backup'ов через ftp payload. 
Вам потребуется любая unix машина (pc, nas, raspberry, ...) и PS4 с 5.05

Не забудте поменять ip приставки на ваш в db_backup.sh в переменной ip_ps4

Запускаете ftp payload на ps4 и стартуете db_backup.sh
По умолчанию BackUp будет выполнен в папку нахождения скрипта ./backups/(дата и время выполнения скрипта)

Структура BackUp'а полностью совместима со структурой DB_SG_Backup-50X от stooged


# Как запустить на Windows 10, [Оригинал](https://4pda.ru/forum/index.php?showtopic=885825&view=findpost&p=78451365):
1. Скачать дистрибутив Ubuntu из Microsoft Store для Win 10.
2. Запустить Ubuntu - в конце установки надо будет ввести имя пользователя и пароль (их надо придумать)
3. Домашняя директория убунты будет расположена по пути - C:\Users\*****\AppData\Local\Packages\CanonicalGroupLimited.UbuntuonWindows_79rhkp1fndgsc\LocalState\rootfs\home\*****\
4. Именно сюда удобно закинуть скрипт db_backup.sh
5. Чтобы этот скрипт правильно работал надо вписать IP адрес PS4 между кавычками в поле ip_ps4="**********". Для этого надо открыть скрипт текстовым редактором, например, Notepad++. 
[img](https://preview.ibb.co/j31BHf/cs5-2-4pda-to.png)
6. Запустить FTP пейлоад на PS4 и не сворачивать это окно.
7. В окне Ubuntu ввести команду chmod +x db_backup.sh
8. Затем ввести команду для запуска скрипта sudo ./db_backup.sh
9. Ввести придуманный ранее пароль при запросе.
10. После этого начнется копирование файлов в папку BackUps по пути - C:\Users\*****\AppData\Local\Packages\CanonicalGroupLimited.UbuntuonWindows_79rhkp1fndgsc\LocalState\rootfs\home\*****\
11. По завершении процесса закрыть окно Ubuntu и можно переместить эту папку куда угодно.
[img](https://preview.ibb.co/kwGdxf/cs5-3-4pda-to.png)


# How to run it on Windows 10, [Original](https://4pda.ru/forum/index.php?showtopic=885825&view=findpost&p=78451365):
1. Download the Ubuntu distribution from the Microsoft Store for Win 10.
2. Start Ubuntu - at the end of the installation, you will need to enter a username and password (you need to create them)
3. Ubuntas home directory will be located along the path - C: \ Users \ ***** \ AppData \ Local \ Packages \ CanonicalGroupLimited.UbuntuonWindows_79rhkp1fndgsc \ LocalState \ rootfs \ home \ ***** \
4. It is here that it is convenient to throw the db_backup.sh script.
5. In order for this script to work correctly, you must enter the PS4 IP address between the quotes in the ip_ps4 = "*********" field. To do this, open the script with a text editor, for example, Notepad ++.
[img](https://preview.ibb.co/j31BHf/cs5-2-4pda-to.png)
6. Run FTP Payload on PS4 and do not minimize this window.
7. In the Ubuntu window, enter the command chmod + x db_backup.sh
8. Then enter the command to run the sudo script ./db_backup.sh
9. Enter the previously invented password when prompted.
10. After this, files will be copied to the BackUps folder on the path C: \ Users \ ***** \ AppData \ Local \ Packages \ CanonicalGroupLimited.UbuntuonWindows_79rhkp1fndgsc \ LocalState \ rootfs \ home \ ***** \
11. When the process is complete, close the Ubuntu window and you can move this folder anywhere.
[img](https://preview.ibb.co/kwGdxf/cs5-3-4pda-to.png)
