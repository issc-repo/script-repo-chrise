@rem # Chris's Fix All Batch Script
title Chris's Fix Everything Script
version 0.1-Beta
mode con cols=125 lines=50 >nul
@echo=off
:BranchMenu
@rem # Branch Menu
cls
@echo Please Select Your Branch
@echo If you come back to this menu, you have made an invalid branch selection
@echo:
@Echo 1 - Alberton
@Echo 2 - Bedfordview
@Echo 3 - Bellville
@Echo 4 - Benoni
@Echo 5 - Bloemfontein
@Echo 6 - Braamfontein
@Echo 7 - Cape Town
@Echo 8 - Durban
@Echo 9 - East London
@Echo 10 - George
@Echo 11 - Germiston
@Echo 12 - Johannesburg City Centre
@Echo 13 - Kempton Park
@Echo 14 - Kimberley
@Echo 15 - Klerksdorp
@Echo 16 - Krugersdorp
@Echo 17 - Ladysmith
@Echo 18 - Nelspruit
@Echo 19 - Newcastle
@Echo 20 - Orange Grove/Head Office
@Echo 21 - Paarl
@Echo 22 - Pietermaritzburg
@Echo 23 - Pinetown
@Echo 24 - Polokwane
@Echo 25 - Port Elizebeth
@Echo 26 - Port Shepstone
@Echo 27 - Potchefstroom
@Echo 28 - Pretoria Arcadia
@Echo 29 - Pretoria North
@Echo 30 - Queenstown
@Echo 31 - Randburg
@Echo 32 - Richard's Bay
@Echo 33 - Roodepoort
@Echo 34 - Rustenburg
@Echo 35 - Sandton/Media House
@Echo 36 - Somerset West
@Echo 37 - Soweto
@Echo 38 - Springs
@Echo 39 - Stanger
@Echo 40 - Tzaneen
@Echo 41 - Umhlanga
@Echo 42 - Umtata/Mthata/Umthata
@Echo 43 - Vereeniging
@Echo 44 - Welkom
@Echo 45 - Witbank
@echo Q - Quit
@set /p Branch=Type in the corrosponding number and press Enter: 
:MainMenu
@rem # Initial Menu
@cls
@echo Please Select Which Network this Machine is On
@echo 1 - Admin Network
@echo 2 - Student Network
@echo Q - Quit
@set /p MainMenu=Type in the corrosponding number and press Enter: 
@if %MainMenu% == 1 goto AMainMenu
@if %MainMenu% == 2 goto SMainMenu
@if %MainMenu% == Q goto Quit
@if %MainMenu% == q goto Quit
goto MainMenu
@exit
:AMainMenu
@rem # Admin Main Menu
@cls
@Echo Please Select the Issue from the List Below
@echo 1  - Printer Issues
@echo 2  - Network, Internet and Email Issues
@echo 3  - Enable TMS
@echo 4  - Rename Computer
@echo 5  - Add to Boston.co.za Domain [Rename Computer and Restart First]
@echo 6  - Activate Office and Windows
@echo 7  - Enable ICAS for Remote Access / Fix "Server Can Not Be Found" Error
@echo 8  - Cleanup Temporary Files
@echo 9  - Defrag [Do Not Use on Solid State Drives]
@echo 10 - Optimize Power Settings [Recomended]
@echo 11 - Fix Script Issues on TMS
@Echo X - Back to Main Menu
@echo Q - Quit
@set /p AMainMenu=Type in the corrosponding number and press Enter: 
@if %AMainMenu% == 1 goto APrinter
@if %AMainMenu% == 2 goto ANetwork
@if %AMainMenu% == 3 goto ATMS
@if %AMainMenu% == 4 goto PCRename
@if %AMainMenu% == 5 goto DomJoin
@if %AMainMenu% == 6 goto AKMS
@if %AMainMenu% == 7 goto ICASHosts
@if %AMainMenu% == 8 goto ACleanup
@if %AMainMenu% == 9 goto ADefrag
@if %AMainMenu% == 10 goto APower
@if %AMainMenu% == 11 goto ADRM
@if %AMainMenu% == x goto MainMenu
@if %AMainMenu% == X goto MainMenu
@if %AMainMenu% == Q goto Quit
@if %AMainMenu% == q goto Quit
goto AMainMenu
@exit
:APrinter
@rem # Admin Printer Issue Menu
@cls
@Echo Please Select the Issue from the List Below
@echo 1 - Printer is Not Set Up
@echo 2 - Printer is Not Printing
@echo B - Back to Previous Menu
@Echo X - Back to Main Menu
@echo Q - Quit
@set /p APrinter=Type in the corrosponding number and press Enter: 
@if %APrinter% == 1 goto APrinter1
@if %APrinter% == 2 goto APrinter2
@if %APrinter% == b goto AMainMenu
@if %APrinter% == B goto AMainMenu
@if %APrinter% == x goto MainMenu
@if %APrinter% == X goto MainMenu
@if %APrinter% == q goto Quit
@if %APrinter% == Q goto Quit
goto APrinter
@exit
:APrinter1
@rem # Install ITEC Printer [Admin]
@if %Branch% == 1 goto AP1
@if %Branch% == 2 goto AP2
@if %Branch% == 3 goto AP3
@if %Branch% == 4 goto AP4
@if %Branch% == 5 goto AP5
@if %Branch% == 6 goto AP6
@if %Branch% == 7 goto AP7
@if %Branch% == 8 goto AP8
@if %Branch% == 9 goto AP9
@if %Branch% == 10 goto AP10
@if %Branch% == 11 goto AP11
@if %Branch% == 12 goto AP12
@if %Branch% == 13 goto AP13
@if %Branch% == 14 goto AP14
@if %Branch% == 15 goto AP15
@if %Branch% == 16 goto AP16
@if %Branch% == 17 goto AP17
@if %Branch% == 18 goto AP18
@if %Branch% == 19 goto AP19
@if %Branch% == 20 goto AP20
@if %Branch% == 21 goto AP21
@if %Branch% == 22 goto AP22
@if %Branch% == 23 goto AP23
@if %Branch% == 24 goto AP24
@if %Branch% == 25 goto AP25
@if %Branch% == 26 goto AP26
@if %Branch% == 27 goto AP27
@if %Branch% == 28 goto AP28
@if %Branch% == 29 goto AP29
@if %Branch% == 30 goto AP30
@if %Branch% == 31 goto AP31
@if %Branch% == 32 goto AP32
@if %Branch% == 33 goto AP33
@if %Branch% == 34 goto AP34
@if %Branch% == 35 goto AP35
@if %Branch% == 36 goto AP36
@if %Branch% == 37 goto AP37
@if %Branch% == 38 goto AP38
@if %Branch% == 39 goto AP39
@if %Branch% == 40 goto AP40
@if %Branch% == 41 goto AP41
@if %Branch% == 42 goto AP42
@if %Branch% == 43 goto AP43
@if %Branch% == 44 goto AP44
@if %Branch% == 45 goto AP45
goto BranchMenu
@exit
:AP1
@rem # Alberton
start \\10.0.24.4\Safecom-ALB
goto APrinter
@exit
:AP2
@rem # Bedfordview
start \\10.0.56.4\Safecom-BED
goto APrinter
@exit
:AP3
@rem # Bellville
start \\10.0.80.4\Safecom-BEL
goto APrinter
@exit
:AP4
@rem # Benoni
start \\10.0.216.4\Safecom-BEN
goto APrinter
@exit
:AP5
@rem # Bloemfontein
start \\10.0.224.4\Safecom-BFN
goto APrinter
@exit
:AP6
@rem # Braamfontein
start \\10.0.88.4\Safecom-BRMF
goto APrinter
@exit
:AP7
@rem # Cape Town
start \\10.0.96.4\Safecom-CPT
goto APrinter
@exit
:AP8
@rem # Durban
start \\10.0.104.4\Safecom-DBN
goto APrinter
@exit
:AP9
@rem # East London
start \\10.0.192.4\Safecom-EL
goto APrinter
@exit
:AP10
@rem # George
start \\10.1.16.4\Safecom-GEO
goto APrinter
@exit
:AP11
@rem # Germiston
start \\10.0.40.4\Safecom-GER
goto APrinter
@exit
:AP12
@rem # Johannesburg City Centre
start \\10.0.112.4\Safecom-JHB
goto APrinter
@exit
:AP13
@rem # Kempton Park
start \\10.1.24.4\Safecom-KMP
goto APrinter
@exit
:AP14
@rem # Kimberley
start \\10.1.112.4\Safecom-KIM
goto APrinter
@exit
:AP15
@rem # Klerksdorp
start \\10.1.32.4\Safecom-KLD
goto APrinter
@exit
:AP16
@rem # Krugersdorp
start \\10.0.240.4\Safecom-KGD
goto APrinter
@exit
:AP17
@rem # Ladysmith
start \\10.1.8.4\Safecom-LAD
goto APrinter
@exit
:AP18
@rem # Nelspruit
start \\10.0.248.4\Safecom-NELS
goto APrinter
@exit
:AP19
@rem # Newcastle
start \\10.0.32.4\Safecom-NC
goto APrinter
@exit
:AP20
@rem # Orange Grove/Head Office
start \\10.0.16.13\Safecom-ORG
goto APrinter
@exit
:AP21
@rem # Paarl
start \\10.1.40.4\Safecom-PRL
goto APrinter
@exit
:AP22
@rem # Pietermaritzburg
start \\10.1.48.4\Safecom-PMB
goto APrinter
@exit
:AP23
@rem # Pinetown
start \\10.1.56.4\Safecom-PIN
goto APrinter
@exit
:AP24
@rem # Polokwane
start \\10.0.120.4\Safecom-POC
goto APrinter
@exit
:AP25
@rem # Port Elizabeth
start \\10.1.64.4\Safecom-PE
goto APrinter
@exit
:AP26
@rem # Port Shepstone
start \\10.0.128.4\Safecom-PS
goto APrinter
@exit
:AP27
@rem # Potchefstroom
start \\10.1.72.4\Safecom-POT
goto APrinter
@exit
:AP28
@rem # Pretoria Arcadia
start \\10.0.48.4\Safecom-PTAA
goto APrinter
@exit
:AP29
@rem # Pretoria North
start \\10.0.136.4\Safecom-PTAN
goto APrinter
@exit
:AP30
@rem # Queenstown
start \\10.0.208.4\Safecom-QUE
goto APrinter
@exit
:AP31
@rem # Randburg
start \\10.0.144.4\Safecom-RAN
goto APrinter
@exit
:AP32
@rem # Richard's Bay
start \\10.0.152.4\Safecom-RB
goto APrinter
@exit
:AP33
@rem # Roodepoort
start \\10.1.80.4\Safecom-RDP
goto APrinter
@exit
:AP34
@rem # Rustenburg
start \\10.0.228.4\Safecom-RUS
goto APrinter
@exit
:AP35
@rem # Sandton/Media House
start \\10.0.64.157\Safecom-BMH
goto APrinter
@exit
:AP36
@rem # Somerset West
start \\10.1.88.4\Safecom-SSW
goto APrinter
@exit
:AP37
@rem # Soweto
start \\10.1.0.4\Safecom-SWT
goto APrinter
@exit
:AP38
@rem # Springs
start \\10.0.72.4\Safecom-SPR
goto APrinter
@exit
:AP39
@rem # Stanger
start \\10.0.160.4\Safecom-STA
goto APrinter
@exit
:AP40
@rem # Tzaneen
start \\10.0.184.4\Safecom-TZA
goto APrinter
@exit
:AP41
@rem # Umhlanga
start \\10.0.168.4\Safecom-UMH
goto APrinter
@exit
:AP42
@rem # Umtata/Mthata/Umthata
start \\10.1.120.4\Safecom-UMT
goto APrinter
@exit
:AP43
@rem # Vereeniging
start \\10.0.176.4\Safecom-VER
goto APrinter
@exit
:AP44
@rem # Welkom
start \\10.1.96.4\Safecom-WEL
goto APrinter
@exit
:AP45
@rem # Witbank
start \\10.1.104.4\Safecom-WIT
goto APrinter
@exit
:APrinter2
@rem # Clear and Restart Print Spooler [Admin]
net stop "print spooler"
@echo y | del C:\windows\system32\spool\printers\* /Q /F
net start "print spooler"
netsh winsock reset
@echo Your PC will restart
@pause
shutdown /r /f /t 0
goto APrinter
@exit
:ANetwork
@rem # Admin Network Issue Menu
@cls
@echo 1 - Enable DHCP/Refresh IP Address
@echo 2 - Display IP Address
@echo 3 - Disable Windows Firewall
@echo B - Back to Previous Menu
@Echo X - Back to Main Menu
@echo Q - Quit
@set /p ANetwork=Type in the corrosponding number and press Enter: 
@if %ANetwork% == 1 goto ANetwork1
@if %ANetwork% == 2 goto ANetwork2
@if %ANetwork% == 3 goto ANetwork3
@if %ANetwork% == b goto AMainMenu
@if %ANetwork% == B goto AMainMenu
@if %ANetwork% == x goto MainMenu
@if %ANetwork% == X goto MainMenu
@if %ANetwork% == q goto Quit
@if %ANetwork% == Q goto Quit
@exit
:ANetwork1
@rem # Enable DHCP and Refresh IP
netsh interface ipv4 set address "Local Area Connection" dhcp
ipconfig /release
ipconfig /renew
ipconfig /flushdns
goto ANetwork
@exit
:ANetwork2
@rem # Display IP Information
@cls
ipconfig /all
pause
goto ANetwork
@exit
:ANetwork3
@rem # Disable Firewall
netsh advfirewall set currentprofile state off
goto ANetwork
@exit
:ATMS
@rem # Enable TMS for Admin
@cls
@if %Branch% == 1 goto TMS1
@if %Branch% == 2 goto TMS2
@if %Branch% == 3 goto TMS3
@if %Branch% == 4 goto TMS4
@if %Branch% == 5 goto TMS5
@if %Branch% == 6 goto TMS6
@if %Branch% == 7 goto TMS7
@if %Branch% == 8 goto TMS8
@if %Branch% == 9 goto TMS9
@if %Branch% == 10 goto TMS10
@if %Branch% == 11 goto TMS11
@if %Branch% == 12 goto TMS12
@if %Branch% == 13 goto TMS13
@if %Branch% == 14 goto TMS14
@if %Branch% == 15 goto TMS15
@if %Branch% == 16 goto TMS16
@if %Branch% == 17 goto TMS17
@if %Branch% == 18 goto TMS18
@if %Branch% == 19 goto TMS19
@if %Branch% == 20 goto TMS20
@if %Branch% == 21 goto TMS21
@if %Branch% == 22 goto TMS22
@if %Branch% == 23 goto TMS23
@if %Branch% == 24 goto TMS24
@if %Branch% == 25 goto TMS25
@if %Branch% == 26 goto TMS26
@if %Branch% == 27 goto TMS27
@if %Branch% == 28 goto TMS28
@if %Branch% == 29 goto TMS29
@if %Branch% == 30 goto TMS30
@if %Branch% == 31 goto TMS31
@if %Branch% == 32 goto TMS32
@if %Branch% == 33 goto TMS33
@if %Branch% == 34 goto TMS34
@if %Branch% == 35 goto TMS35
@if %Branch% == 36 goto TMS36
@if %Branch% == 37 goto TMS37
@if %Branch% == 38 goto TMS38
@if %Branch% == 39 goto TMS39
@if %Branch% == 40 goto TMS40
@if %Branch% == 41 goto TMS41
@if %Branch% == 42 goto TMS42
@if %Branch% == 43 goto TMS43
@if %Branch% == 44 goto TMS44
@if %Branch% == 45 goto TMS45
goto BranchMenu
@exit
:TMS1
@rem # Alberton
if exist "%USERPROFILE%\TMS.txt" goto :TMSALREADY ELSE
@echo: >> C:\Windows\System32\Drivers\etc\hosts
@echo 172.0.24.3 moodle >> C:\Windows\System32\Drivers\etc\hosts
@echo 172.0.24.4 bostube1 >> C:\Windows\System32\Drivers\etc\hosts
@echo TMS Has Been Installed on %Date% >> "%Userprofile%\TMS.txt
goto AMainMenu
@exit
:TMS2
@rem # Bedfordview
if exist "%USERPROFILE%\TMS.txt" goto :TMSALREADY ELSE
@echo: >> C:\Windows\System32\Drivers\etc\hosts
@echo 172.0.56.3 moodle >> C:\Windows\System32\Drivers\etc\hosts
@echo 172.0.56.4 bostube1 >> C:\Windows\System32\Drivers\etc\hosts
@echo TMS Has Been Installed on %Date% >> "%Userprofile%\TMS.txt
goto AMainMenu
@exit
:TMS3
@rem # Bellville
if exist "%USERPROFILE%\TMS.txt" goto :TMSALREADY ELSE
@echo: >> C:\Windows\System32\Drivers\etc\hosts
@echo 172.0.80.3 moodle >> C:\Windows\System32\Drivers\etc\hosts
@echo 172.0.80.4 bostube1 >> C:\Windows\System32\Drivers\etc\hosts
@echo TMS Has Been Installed on %Date% >> "%Userprofile%\TMS.txt
goto AMainMenu
@exit
:TMS4
@rem # Benoni
if exist "%USERPROFILE%\TMS.txt" goto :TMSALREADY ELSE
@echo: >> C:\Windows\System32\Drivers\etc\hosts
@echo 172.0.216.3 moodle >> C:\Windows\System32\Drivers\etc\hosts
@echo 172.0.216.4 bostube1 >> C:\Windows\System32\Drivers\etc\hosts
@echo TMS Has Been Installed on %Date% >> "%Userprofile%\TMS.txt
goto AMainMenu
@exit
:TMS5
@rem # Bloemfontein
if exist "%USERPROFILE%\TMS.txt" goto :TMSALREADY ELSE
@echo: >> C:\Windows\System32\Drivers\etc\hosts
@echo 172.0.224.3 moodle >> C:\Windows\System32\Drivers\etc\hosts
@echo 172.0.224.4 bostube1 >> C:\Windows\System32\Drivers\etc\hosts
@echo TMS Has Been Installed on %Date% >> "%Userprofile%\TMS.txt
goto AMainMenu
@exit
:TMS6
@rem # Braamfontein
if exist "%USERPROFILE%\TMS.txt" goto :TMSALREADY ELSE
@echo: >> C:\Windows\System32\Drivers\etc\hosts
@echo 172.0.88.3 moodle >> C:\Windows\System32\Drivers\etc\hosts
@echo 172.0.88.4 bostube1 >> C:\Windows\System32\Drivers\etc\hosts
@echo TMS Has Been Installed on %Date% >> "%Userprofile%\TMS.txt
goto AMainMenu
@exit
:TMS7
@rem # Cape Town
if exist "%USERPROFILE%\TMS.txt" goto :TMSALREADY ELSE
@echo: >> C:\Windows\System32\Drivers\etc\hosts
@echo 172.0.96.3 moodle >> C:\Windows\System32\Drivers\etc\hosts
@echo 172.0.96.4 bostube1 >> C:\Windows\System32\Drivers\etc\hosts
@echo TMS Has Been Installed on %Date% >> "%Userprofile%\TMS.txt
goto AMainMenu
@exit
:TMS8
@rem # Durban
if exist "%USERPROFILE%\TMS.txt" goto :TMSALREADY ELSE
@echo: >> C:\Windows\System32\Drivers\etc\hosts
@echo 172.0.104.3 moodle >> C:\Windows\System32\Drivers\etc\hosts
@echo 172.0.104.4 bostube1 >> C:\Windows\System32\Drivers\etc\hosts
@echo TMS Has Been Installed on %Date% >> "%Userprofile%\TMS.txt
goto AMainMenu
@exit
:TMS9
@rem # East London
if exist "%USERPROFILE%\TMS.txt" goto :TMSALREADY ELSE
@echo: >> C:\Windows\System32\Drivers\etc\hosts
@echo 172.0.192.3 moodle >> C:\Windows\System32\Drivers\etc\hosts
@echo 172.0.192.4 bostube1 >> C:\Windows\System32\Drivers\etc\hosts
@echo TMS Has Been Installed on %Date% >> "%Userprofile%\TMS.txt
goto AMainMenu
@exit
:TMS10
@rem # George
if exist "%USERPROFILE%\TMS.txt" goto :TMSALREADY ELSE
@echo: >> C:\Windows\System32\Drivers\etc\hosts
@echo 172.1.16.3 moodle >> C:\Windows\System32\Drivers\etc\hosts
@echo 172.1.16.4 bostube1 >> C:\Windows\System32\Drivers\etc\hosts
@echo TMS Has Been Installed on %Date% >> "%Userprofile%\TMS.txt
goto AMainMenu
@exit
:TMS11
@rem # Germiston
if exist "%USERPROFILE%\TMS.txt" goto :TMSALREADY ELSE
@echo: >> C:\Windows\System32\Drivers\etc\hosts
@echo 172.0.40.3 moodle >> C:\Windows\System32\Drivers\etc\hosts
@echo 172.0.40.4 bostube1 >> C:\Windows\System32\Drivers\etc\hosts
@echo TMS Has Been Installed on %Date% >> "%Userprofile%\TMS.txt
goto AMainMenu
@exit
:TMS12
@rem # Johannesburg City Centre
if exist "%USERPROFILE%\TMS.txt" goto :TMSALREADY ELSE
@echo: >> C:\Windows\System32\Drivers\etc\hosts
@echo 172.0.112.3 moodle >> C:\Windows\System32\Drivers\etc\hosts
@echo 172.0.112.4 bostube1 >> C:\Windows\System32\Drivers\etc\hosts
@echo TMS Has Been Installed on %Date% >> "%Userprofile%\TMS.txt
goto AMainMenu
@exit
:TMS13
@rem # Kempton Park
if exist "%USERPROFILE%\TMS.txt" goto :TMSALREADY ELSE
@echo: >> C:\Windows\System32\Drivers\etc\hosts
@echo 172.1.24.3 moodle >> C:\Windows\System32\Drivers\etc\hosts
@echo 172.1.24.4 bostube1 >> C:\Windows\System32\Drivers\etc\hosts
@echo TMS Has Been Installed on %Date% >> "%Userprofile%\TMS.txt
goto AMainMenu
@exit
:TMS14
@rem # Kimberley
if exist "%USERPROFILE%\TMS.txt" goto :TMSALREADY ELSE
@echo: >> C:\Windows\System32\Drivers\etc\hosts
@echo 172.1.112.3 moodle >> C:\Windows\System32\Drivers\etc\hosts
@echo 172.1.112.4 bostube1 >> C:\Windows\System32\Drivers\etc\hosts
@echo TMS Has Been Installed on %Date% >> "%Userprofile%\TMS.txt
goto AMainMenu
@exit
:TMS15
@rem # Klerksdorp
if exist "%USERPROFILE%\TMS.txt" goto :TMSALREADY ELSE
@echo: >> C:\Windows\System32\Drivers\etc\hosts
@echo 172.1.32.3 moodle >> C:\Windows\System32\Drivers\etc\hosts
@echo 172.1.32.4 bostube1 >> C:\Windows\System32\Drivers\etc\hosts
@echo TMS Has Been Installed on %Date% >> "%Userprofile%\TMS.txt
goto AMainMenu
@exit
:TMS16
@rem # Krugersdorp
if exist "%USERPROFILE%\TMS.txt" goto :TMSALREADY ELSE
@echo: >> C:\Windows\System32\Drivers\etc\hosts
@echo 172.0.240.3 moodle >> C:\Windows\System32\Drivers\etc\hosts
@echo 172.0.240.4 bostube1 >> C:\Windows\System32\Drivers\etc\hosts
@echo TMS Has Been Installed on %Date% >> "%Userprofile%\TMS.txt
goto AMainMenu
@exit
:TMS17
@rem # Ladysmith
if exist "%USERPROFILE%\TMS.txt" goto :TMSALREADY ELSE
@echo: >> C:\Windows\System32\Drivers\etc\hosts
@echo 172.1.8.3 moodle >> C:\Windows\System32\Drivers\etc\hosts
@echo 172.1.8.4 bostube1 >> C:\Windows\System32\Drivers\etc\hosts
@echo TMS Has Been Installed on %Date% >> "%Userprofile%\TMS.txt
goto AMainMenu
@exit
:TMS18
@rem # Nelspruit
if exist "%USERPROFILE%\TMS.txt" goto :TMSALREADY ELSE
@echo: >> C:\Windows\System32\Drivers\etc\hosts
@echo 172.0.248.3 moodle >> C:\Windows\System32\Drivers\etc\hosts
@echo 172.0.248.4 bostube1 >> C:\Windows\System32\Drivers\etc\hosts
@echo TMS Has Been Installed on %Date% >> "%Userprofile%\TMS.txt
goto AMainMenu
@exit
:TMS19
@rem # Newcastle
if exist "%USERPROFILE%\TMS.txt" goto :TMSALREADY ELSE
@echo: >> C:\Windows\System32\Drivers\etc\hosts
@echo 172.0.32.3 moodle >> C:\Windows\System32\Drivers\etc\hosts
@echo 172.0.32.4 bostube1 >> C:\Windows\System32\Drivers\etc\hosts
@echo TMS Has Been Installed on %Date% >> "%Userprofile%\TMS.txt
goto AMainMenu
@exit
:TMS20
@rem # Orange Grove/Head Office
if exist "%USERPROFILE%\TMS.txt" goto :TMSALREADY ELSE
@echo: >> C:\Windows\System32\Drivers\etc\hosts
@echo 172.0.16.3 moodle >> C:\Windows\System32\Drivers\etc\hosts
@echo 172.0.16.4 bostube1 >> C:\Windows\System32\Drivers\etc\hosts
@echo TMS Has Been Installed on %Date% >> "%Userprofile%\TMS.txt
goto AMainMenu
@exit
:TMS21
@rem # Paarl
if exist "%USERPROFILE%\TMS.txt" goto :TMSALREADY ELSE
@echo: >> C:\Windows\System32\Drivers\etc\hosts
@echo 172.1.40.3 moodle >> C:\Windows\System32\Drivers\etc\hosts
@echo 172.1.40.4 bostube1 >> C:\Windows\System32\Drivers\etc\hosts
@echo TMS Has Been Installed on %Date% >> "%Userprofile%\TMS.txt
goto AMainMenu
@exit
:TMS22
@rem # Pietermaritzburg
if exist "%USERPROFILE%\TMS.txt" goto :TMSALREADY ELSE
@echo: >> C:\Windows\System32\Drivers\etc\hosts
@echo 172.1.48.3 moodle >> C:\Windows\System32\Drivers\etc\hosts
@echo 172.1.48.4 bostube1 >> C:\Windows\System32\Drivers\etc\hosts
@echo TMS Has Been Installed on %Date% >> "%Userprofile%\TMS.txt
goto AMainMenu
@exit
:TMS23
@rem # Pinetown
if exist "%USERPROFILE%\TMS.txt" goto :TMSALREADY ELSE
@echo: >> C:\Windows\System32\Drivers\etc\hosts
@echo 172.1.56.3 moodle >> C:\Windows\System32\Drivers\etc\hosts
@echo 172.1.56.4 bostube1 >> C:\Windows\System32\Drivers\etc\hosts
@echo TMS Has Been Installed on %Date% >> "%Userprofile%\TMS.txt
goto AMainMenu
@exit
:TMS24
@rem # Polokwane
if exist "%USERPROFILE%\TMS.txt" goto :TMSALREADY ELSE
@echo: >> C:\Windows\System32\Drivers\etc\hosts
@echo 172.0.120.3 moodle >> C:\Windows\System32\Drivers\etc\hosts
@echo 172.0.120.4 bostube1 >> C:\Windows\System32\Drivers\etc\hosts
@echo TMS Has Been Installed on %Date% >> "%Userprofile%\TMS.txt
goto AMainMenu
@exit
:TMS25
@rem # Port Elizebeth
if exist "%USERPROFILE%\TMS.txt" goto :TMSALREADY ELSE
@echo: >> C:\Windows\System32\Drivers\etc\hosts
@echo 172.1.64.3 moodle >> C:\Windows\System32\Drivers\etc\hosts
@echo 172.1.64.4 bostube1 >> C:\Windows\System32\Drivers\etc\hosts
@echo TMS Has Been Installed on %Date% >> "%Userprofile%\TMS.txt
goto AMainMenu
@exit
:TMS26
@rem # Port Shepstone
if exist "%USERPROFILE%\TMS.txt" goto :TMSALREADY ELSE
@echo: >> C:\Windows\System32\Drivers\etc\hosts
@echo 172.0.128.3 moodle >> C:\Windows\System32\Drivers\etc\hosts
@echo 172.0.128.4 bostube1 >> C:\Windows\System32\Drivers\etc\hosts
@echo TMS Has Been Installed on %Date% >> "%Userprofile%\TMS.txt
goto AMainMenu
@exit
:TMS27
@rem # Potchefstroom
if exist "%USERPROFILE%\TMS.txt" goto :TMSALREADY ELSE
@echo: >> C:\Windows\System32\Drivers\etc\hosts
@echo 172.1.72.3 moodle >> C:\Windows\System32\Drivers\etc\hosts
@echo 172.1.72.4 bostube1 >> C:\Windows\System32\Drivers\etc\hosts
@echo TMS Has Been Installed on %Date% >> "%Userprofile%\TMS.txt
goto AMainMenu
@exit
:TMS28
@rem # Pretoria Arcadia
if exist "%USERPROFILE%\TMS.txt" goto :TMSALREADY ELSE
@echo: >> C:\Windows\System32\Drivers\etc\hosts
@echo 172.0.48.3 moodle >> C:\Windows\System32\Drivers\etc\hosts
@echo 172.0.48.4 bostube1 >> C:\Windows\System32\Drivers\etc\hosts
@echo TMS Has Been Installed on %Date% >> "%Userprofile%\TMS.txt
goto AMainMenu
@exit
:TMS29
@rem # Pretoria North
if exist "%USERPROFILE%\TMS.txt" goto :TMSALREADY ELSE
@echo: >> C:\Windows\System32\Drivers\etc\hosts
@echo 172.0.136.3 moodle >> C:\Windows\System32\Drivers\etc\hosts
@echo 172.0.136.4 bostube1 >> C:\Windows\System32\Drivers\etc\hosts
@echo TMS Has Been Installed on %Date% >> "%Userprofile%\TMS.txt
goto AMainMenu
@exit
:TMS30
@rem # Queenstown
if exist "%USERPROFILE%\TMS.txt" goto :TMSALREADY ELSE
@echo: >> C:\Windows\System32\Drivers\etc\hosts
@echo 172.0.208.3 moodle >> C:\Windows\System32\Drivers\etc\hosts
@echo 172.0.208.4 bostube1 >> C:\Windows\System32\Drivers\etc\hosts
@echo TMS Has Been Installed on %Date% >> "%Userprofile%\TMS.txt
goto AMainMenu
@exit
:TMS31
@rem # Randburg
if exist "%USERPROFILE%\TMS.txt" goto :TMSALREADY ELSE
@echo: >> C:\Windows\System32\Drivers\etc\hosts
@echo 172.0.144.3 moodle >> C:\Windows\System32\Drivers\etc\hosts
@echo 172.0.144.4 bostube1 >> C:\Windows\System32\Drivers\etc\hosts
@echo TMS Has Been Installed on %Date% >> "%Userprofile%\TMS.txt
goto AMainMenu
@exit
:TMS32
@rem # Richard's Bay
if exist "%USERPROFILE%\TMS.txt" goto :TMSALREADY ELSE
@echo: >> C:\Windows\System32\Drivers\etc\hosts
@echo 172.0.152.3 moodle >> C:\Windows\System32\Drivers\etc\hosts
@echo 172.0.152.4 bostube1 >> C:\Windows\System32\Drivers\etc\hosts
@echo TMS Has Been Installed on %Date% >> "%Userprofile%\TMS.txt
goto AMainMenu
@exit
:TMS33
@rem # Roodepoort
if exist "%USERPROFILE%\TMS.txt" goto :TMSALREADY ELSE
@echo: >> C:\Windows\System32\Drivers\etc\hosts
@echo 172.1.80.3 moodle >> C:\Windows\System32\Drivers\etc\hosts
@echo 172.1.80.4 bostube1 >> C:\Windows\System32\Drivers\etc\hosts
@echo TMS Has Been Installed on %Date% >> "%Userprofile%\TMS.txt
goto AMainMenu
@exit
:TMS34
@rem # Rustenburg
if exist "%USERPROFILE%\TMS.txt" goto :TMSALREADY ELSE
@echo: >> C:\Windows\System32\Drivers\etc\hosts
@echo 172.0.228.3 moodle >> C:\Windows\System32\Drivers\etc\hosts
@echo 172.0.228.4 bostube1 >> C:\Windows\System32\Drivers\etc\hosts
@echo TMS Has Been Installed on %Date% >> "%Userprofile%\TMS.txt
goto AMainMenu
@exit
:TMS35
@rem # Sandton/Media House
if exist "%USERPROFILE%\TMS.txt" goto :TMSALREADY ELSE
@echo: >> C:\Windows\System32\Drivers\etc\hosts
@echo 10.0.64.240 moodle >> C:\Windows\System32\Drivers\etc\hosts
@echo 10.0.64.241 bostube1 >> C:\Windows\System32\Drivers\etc\hosts
@echo TMS Has Been Installed on %Date% >> "%Userprofile%\TMS.txt
goto AMainMenu
@exit
:TMS36
@rem # Somerset West
if exist "%USERPROFILE%\TMS.txt" goto :TMSALREADY ELSE
@echo: >> C:\Windows\System32\Drivers\etc\hosts
@echo 172.1.88.3 moodle >> C:\Windows\System32\Drivers\etc\hosts
@echo 172.1.88.4 bostube1 >> C:\Windows\System32\Drivers\etc\hosts
@echo TMS Has Been Installed on %Date% >> "%Userprofile%\TMS.txt
goto AMainMenu
@exit
:TMS37
@rem # Soweto
if exist "%USERPROFILE%\TMS.txt" goto :TMSALREADY ELSE
@echo: >> C:\Windows\System32\Drivers\etc\hosts
@echo 172.1.0.3 moodle >> C:\Windows\System32\Drivers\etc\hosts
@echo 172.1.0.4 bostube1 >> C:\Windows\System32\Drivers\etc\hosts
@echo TMS Has Been Installed on %Date% >> "%Userprofile%\TMS.txt
goto AMainMenu
@exit
:TMS38
@rem # Springs
if exist "%USERPROFILE%\TMS.txt" goto :TMSALREADY ELSE
@echo: >> C:\Windows\System32\Drivers\etc\hosts
@echo 172.0.72.3 moodle >> C:\Windows\System32\Drivers\etc\hosts
@echo 172.0.72.4 bostube1 >> C:\Windows\System32\Drivers\etc\hosts
@echo TMS Has Been Installed on %Date% >> "%Userprofile%\TMS.txt
goto AMainMenu
@exit
:TMS39
@rem # Stanger
if exist "%USERPROFILE%\TMS.txt" goto :TMSALREADY ELSE
@echo: >> C:\Windows\System32\Drivers\etc\hosts
@echo 172.0.160.3 moodle >> C:\Windows\System32\Drivers\etc\hosts
@echo 172.0.160.4 bostube1 >> C:\Windows\System32\Drivers\etc\hosts
@echo TMS Has Been Installed on %Date% >> "%Userprofile%\TMS.txt
goto AMainMenu
@exit
:TMS40
@rem # Tzaneen
if exist "%USERPROFILE%\TMS.txt" goto :TMSALREADY ELSE
@echo: >> C:\Windows\System32\Drivers\etc\hosts
@echo 172.0.184.3 moodle >> C:\Windows\System32\Drivers\etc\hosts
@echo 172.0.184.4 bostube1 >> C:\Windows\System32\Drivers\etc\hosts
@echo TMS Has Been Installed on %Date% >> "%Userprofile%\TMS.txt
goto AMainMenu
@exit
:TMS41
@rem # Umhlanga
if exist "%USERPROFILE%\TMS.txt" goto :TMSALREADY ELSE
@echo: >> C:\Windows\System32\Drivers\etc\hosts
@echo 172.0.168.3 moodle >> C:\Windows\System32\Drivers\etc\hosts
@echo 172.0.168.4 bostube1 >> C:\Windows\System32\Drivers\etc\hosts
@echo TMS Has Been Installed on %Date% >> "%Userprofile%\TMS.txt
goto AMainMenu
@exit
:TMS42
@rem # Umtata/Mthata/Umthata
if exist "%USERPROFILE%\TMS.txt" goto :TMSALREADY ELSE
@echo: >> C:\Windows\System32\Drivers\etc\hosts
@echo 172.1.120.3 moodle >> C:\Windows\System32\Drivers\etc\hosts
@echo 172.1.120.4 bostube1 >> C:\Windows\System32\Drivers\etc\hosts
@echo TMS Has Been Installed on %Date% >> "%Userprofile%\TMS.txt
goto AMainMenu
@exit
:TMS43
@rem # Vereeniging
if exist "%USERPROFILE%\TMS.txt" goto :TMSALREADY ELSE
@echo: >> C:\Windows\System32\Drivers\etc\hosts
@echo 172.0.176.3 moodle >> C:\Windows\System32\Drivers\etc\hosts
@echo 172.0.176.4 bostube1 >> C:\Windows\System32\Drivers\etc\hosts
@echo TMS Has Been Installed on %Date% >> "%Userprofile%\TMS.txt
goto AMainMenu
@exit
:TMS44
@rem # Welkom
if exist "%USERPROFILE%\TMS.txt" goto :TMSALREADY ELSE
@echo: >> C:\Windows\System32\Drivers\etc\hosts
@echo 172.1.96.3 moodle >> C:\Windows\System32\Drivers\etc\hosts
@echo 172.1.96.4 bostube1 >> C:\Windows\System32\Drivers\etc\hosts
@echo TMS Has Been Installed on %Date% >> "%Userprofile%\TMS.txt
goto AMainMenu
@exit
:TMS45
@rem # Witbank
if exist "%USERPROFILE%\TMS.txt" goto :TMSALREADY ELSE
@echo: >> C:\Windows\System32\Drivers\etc\hosts
@echo 172.1.104.3 moodle >> C:\Windows\System32\Drivers\etc\hosts
@echo 172.1.104.4 bostube1 >> C:\Windows\System32\Drivers\etc\hosts
@echo TMS Has Been Installed on %Date% >> "%Userprofile%\TMS.txt
goto AMainMenu
@exit
:TMSALREADY
@cls
@echo TMS Has Already been installed on your PC
@pause
goto AMainMenu
@exit
:SMainMenu
@rem # Student Main Menu
@cls
@Echo Please Select the Issue from the List Below
@echo 1 - Printer Issues
@echo 2 - Network, Internet and Email Issues
@echo 3 - Rename Computer
@echo 4 - Activate Office and Windows
@echo 5 - Cleanup Temporary Files
@echo 6 - Defrag [Do Not Use on Solid State Drives]
@echo 7 - Fix Script Errors on TMS
@Echo X - Back to Main Menu
@echo Q - Quit
@set /p SMainMenu=Type in the corrosponding number and press Enter: 
@if %SMainMenu% == 1 goto SPrinter
@if %SMainMenu% == 2 goto SNetwork
@if %SMainMenu% == 3 goto PCRename
@if %SMainMenu% == 4 goto SKMS
@if %SMainMenu% == 5 goto SCleanup
@if %SMainMenu% == 6 goto SDefrag
@if %SMainMenu% == 7 goto SDRM
@if %SMainMenu% == x goto MainMenu
@if %SMainMenu% == X goto MainMenu
@if %SMainMenu% == Q goto Quit
@if %SMainMenu% == q goto Quit
goto SMainMenu
@exit
:SPrinter
@rem # Student Printer Issue Menu
@cls
@Echo Please Select the Issue from the List Below
@echo 1 - Printer is Not Set Up [Student]
@echo 2 - Printer is Not Printing
@echo B - Back to Previous Menu
@Echo X - Back to Main Menu
@echo Q - Quit
@set /p SPrinter=Type in the corrosponding number and press Enter: 
@if %SPrinter% == 1 goto SPrinter1
@if %SPrinter% == 2 goto SPrinter2
@if %SPrinter% == b goto SMainMenu
@if %SPrinter% == B goto SMainMenu
@if %SPrinter% == x goto MainMenu
@if %SPrinter% == X goto MainMenu
@if %SPrinter% == q goto Quit
@if %SPrinter% == Q goto Quit
goto SPrinter
@exit
:SPrinter1
@rem # Install ITEC Printer [Student]
@cls
@if %Branch% == 1 goto SP1
@if %Branch% == 2 goto SP2
@if %Branch% == 3 goto SP3
@if %Branch% == 4 goto SP4
@if %Branch% == 5 goto SP5
@if %Branch% == 6 goto SP6
@if %Branch% == 7 goto SP7
@if %Branch% == 8 goto SP8
@if %Branch% == 9 goto SP9
@if %Branch% == 10 goto SP10
@if %Branch% == 11 goto SP11
@if %Branch% == 12 goto SP12
@if %Branch% == 13 goto SP13
@if %Branch% == 14 goto SP14
@if %Branch% == 15 goto SP15
@if %Branch% == 16 goto SP16
@if %Branch% == 17 goto SP17
@if %Branch% == 18 goto SP18
@if %Branch% == 19 goto SP19
@if %Branch% == 20 goto SP20
@if %Branch% == 21 goto SP21
@if %Branch% == 22 goto SP22
@if %Branch% == 23 goto SP23
@if %Branch% == 24 goto SP24
@if %Branch% == 25 goto SP25
@if %Branch% == 26 goto SP26
@if %Branch% == 27 goto SP27
@if %Branch% == 28 goto SP28
@if %Branch% == 29 goto SP29
@if %Branch% == 30 goto SP30
@if %Branch% == 31 goto SP31
@if %Branch% == 32 goto SP32
@if %Branch% == 33 goto SP33
@if %Branch% == 34 goto SP34
@if %Branch% == 35 goto SP35
@if %Branch% == 36 goto SP36
@if %Branch% == 37 goto SP37
@if %Branch% == 38 goto SP38
@if %Branch% == 39 goto SP39
@if %Branch% == 40 goto SP40
@if %Branch% == 41 goto SP41
@if %Branch% == 42 goto SP42
@if %Branch% == 43 goto SP43
@if %Branch% == 44 goto SP44
@if %Branch% == 45 goto SP45
goto Branch
@exit
:SP1
@rem # Alberton
start \\10.0.24.4\Student-Printer
goto SPrinter
@exit
:SP2
@rem # Bedfordview
start \\10.0.56.4\Student-Printer
goto SPrinter
@exit
:SP3
@rem # Bellville
start \\10.0.80.4\Student-Printer
goto SPrinter
@exit
:SP4
@rem # Benoni
start \\10.0.216.4\Student-Printer
goto SPrinter
@exit
:SP5
@rem # Bloemfontein
start \\10.0.224.4\Student-Printer
goto SPrinter
@exit
:SP6
@rem # Braamfontein
start \\10.0.88.4\Student-Printer
goto SPrinter
@exit
:SP7
@rem # Cape Town
start \\10.0.96.4\Student-Printer
goto SPrinter
@exit
:SP8
@rem # Durban
start \\10.0.104.4\Student-Printer
goto SPrinter
@exit
:SP9
@rem # East London
start \\10.0.192.4\Student-Printer
goto SPrinter
@exit
:SP10
@rem # George
start \\10.1.16.4\Student-Printer
goto SPrinter
@exit
:SP11
@rem # Germiston
start \\10.0.40.4\Student-Printer
goto SPrinter
@exit
:SP12
@rem # Johannesburg City Centre
start \\10.0.112.4\Student-Printer
goto SPrinter
@exit
:SP13
@rem # Kempton Park
start \\10.1.24.4\Student-Printer
goto SPrinter
@exit
:SP14
@rem # Kimberley
start \\10.1.112.4\Student-Printer
goto SPrinter
@exit
:SP15
@rem # Klerksdorp
start \\10.1.32.4\Student-Printer
goto SPrinter
@exit
:SP16
@rem # Krugersdorp
start \\10.0.240.4\Student-Printer
goto SPrinter
@exit
:SP17
@rem # Ladysmith
start \\10.1.8.4\Student-Printer
goto SPrinter
@exit
:SP18
@rem # Nelspruit
start \\10.0.248.4\Student-Printer
goto SPrinter
@exit
:SP19
@rem # Newcastle
start \\10.0.32.4\Student-Printer
goto SPrinter
@exit
:SP20
@rem # Orange Grove/Head Office
start \\10.0.16.13\Student-Printer
goto SPrinter
@exit
:SP21
@rem # Paarl
start \\10.1.40.4\Student-Printer
goto SPrinter
@exit
:SP22
@rem # Pietermaritzburg
start \\10.1.48.4\Student-Printer
goto SPrinter
@exit
:SP23
@rem # Pinetown
start \\10.1.56.4\Student-Printer
goto SPrinter
@exit
:SP24
@rem # Polokwane
start \\10.0.120.4\Student-Printer
goto SPrinter
@exit
:SP25
@rem # Port Elizabeth
start \\10.1.64.4\Student-Printer
goto SPrinter
@exit
:SP26
@rem # Port Shepstone
start \\10.0.128.4\Student-Printer
goto SPrinter
@exit
:SP27
@rem # Potchefstroom
start \\10.1.72.4\Student-Printer
goto SPrinter
@exit
:SP28
@rem # Pretoria Arcadia
start \\10.0.48.4\Student-Printer
goto SPrinter
@exit
:SP29
@rem # Pretoria North
start \\10.0.136.4\Student-Printer
goto SPrinter
@exit
:SP30
@rem # Queenstown
start \\10.0.208.4\Student-Printer
goto SPrinter
@exit
:SP31
@rem # Randburg
start \\10.0.144.4\Student-Printer
goto SPrinter
@exit
:SP32
@rem # Richard's Bay
start \\10.0.152.4\Student-Printer
goto SPrinter
@exit
:SP33
@rem # Roodepoort
start \\10.1.80.4\Student-Printer
goto SPrinter
@exit
:SP34
@rem # Rustenburg
start \\10.0.228.4\Student-Printer
goto SPrinter
@exit
:SP35
@rem # Sandton/Media House
start \\10.0.64.157\Student-Printer
goto SPrinter
@exit
:SP36
@rem # Somerset West
start \\10.1.88.4\Student-Printer
goto SPrinter
@exit
:SP37
@rem # Soweto
start \\10.1.0.4\Student-Printer
goto SPrinter
@exit
:SP38
@rem # Springs
start \\10.0.72.4\Student-Printer
goto SPrinter
@exit
:SP39
@rem # Stanger
start \\10.0.160.4\Student-Printer
goto SPrinter
@exit
:SP40
@rem # Tzaneen
start \\10.0.184.4\Student-Printer
goto SPrinter
@exit
:SP41
@rem # Umhlanga
start \\10.0.168.4\Student-Printer
goto SPrinter
@exit
:SP42
@rem # Umtata/Mthata/Umthata
start \\10.1.120.4\Student-Printer
goto SPrinter
@exit
:SP43
@rem # Vereeniging
start \\10.0.176.4\Student-Printer
goto SPrinter
@exit
:SP44
@rem # Welkom
start \\10.1.96.4\Student-Printer
goto SPrinter
@exit
:SP45
@rem # Witbank
start \\10.1.104.4\Student-Printer
goto SPrinter
@exit
:SPrinter2
@rem # Clear and Restart Print Spooler [Student]
net stop "print spooler"
@echo y | del C:\windows\system32\spool\printers\* /Q /F
net start "print spooler"
netsh winsock reset
@echo Your PC will need to restart
@pause
shutdown /r /f /t 0
goto SPrinter
@exit
:SNetwork
@cls
@echo 1 - Enable DHCP/Refresh IP Address
@echo 2 - Display IP Address
@echo 3 - Disable Windows Firewall
@echo B - Back to Previous Menu
@Echo X - Back to Main Menu
@echo Q - Quit
@set /p SNetwork=Type in the corrosponding number and press Enter: 
@if %SNetwork% == 1 goto SNetwork1
@if %SNetwork% == 2 goto SNetwork2
@if %SNetwork% == 3 goto SNetwork3
@if %SNetwork% == b goto SMainMenu
@if %SNetwork% == B goto SMainMenu
@if %SNetwork% == x goto MainMenu
@if %SNetwork% == X goto MainMenu
@if %SNetwork% == q goto Quit
@if %SNetwork% == Q goto Quit
@exit
:SNetwork1
@rem # Enable DHCP and Refresh IP
netsh interface ipv4 set address "Local Area Connection" dhcp
ipconfig /release
ipconfig /renew
ipconfig /flushdns
goto SNetwork
@exit
:SNetwork2
@rem # Display IP Information
@cls
ipconfig /all
pause
goto SNetwork
@exit
:SNetwork3
@rem # Disable Firewall
netsh advfirewall set currentprofile state off
goto SNetwork
@exit
:Quit
@rem # Close FixAll
@exit
:reboot
@rem # Reboot PC
@Echo Your PC will restart
@pause
shutdown /r /f /t 0
@exit
:PCRename
@rem # Rename PC
@set /P PCNAME=Please enter the new computer name: 
@wmic path win32_computersystem where "Name='%computername%'" CALL rename name='%PCNAME%'
@echo off
@echo Press Any Key to Restart
@pause
shutdown /r /f /t 0
@exit
:DomJoin
@rem # Add to Domain
@cls
@if %Branch% == 1 goto DomJoin1
@if %Branch% == 2 goto DomJoin2
@if %Branch% == 3 goto DomJoin3
@if %Branch% == 4 goto DomJoin4
@if %Branch% == 5 goto DomJoin5
@if %Branch% == 6 goto DomJoin6
@if %Branch% == 7 goto DomJoin7
@if %Branch% == 8 goto DomJoin8
@if %Branch% == 9 goto DomJoin9
@if %Branch% == 10 goto DomJoin10
@if %Branch% == 11 goto DomJoin11
@if %Branch% == 12 goto DomJoin12
@if %Branch% == 13 goto DomJoin13
@if %Branch% == 14 goto DomJoin14
@if %Branch% == 15 goto DomJoin15
@if %Branch% == 16 goto DomJoin16
@if %Branch% == 17 goto DomJoin17
@if %Branch% == 18 goto DomJoin18
@if %Branch% == 19 goto DomJoin19
@if %Branch% == 20 goto DomJoin20
@if %Branch% == 21 goto DomJoin21
@if %Branch% == 22 goto DomJoin22
@if %Branch% == 23 goto DomJoin23
@if %Branch% == 24 goto DomJoin24
@if %Branch% == 25 goto DomJoin25
@if %Branch% == 26 goto DomJoin26
@if %Branch% == 27 goto DomJoin27
@if %Branch% == 28 goto DomJoin28
@if %Branch% == 29 goto DomJoin29
@if %Branch% == 30 goto DomJoin30
@if %Branch% == 31 goto DomJoin31
@if %Branch% == 32 goto DomJoin32
@if %Branch% == 33 goto DomJoin33
@if %Branch% == 34 goto DomJoin34
@if %Branch% == 35 goto DomJoin35
@if %Branch% == 36 goto DomJoin36
@if %Branch% == 37 goto DomJoin37
@if %Branch% == 38 goto DomJoin38
@if %Branch% == 39 goto DomJoin39
@if %Branch% == 40 goto DomJoin40
@if %Branch% == 41 goto DomJoin41
@if %Branch% == 42 goto DomJoin42
@if %Branch% == 43 goto DomJoin43
@if %Branch% == 44 goto DomJoin44
@if %Branch% == 45 goto DomJoin45
goto BranchMenu
@exit
:DomJoin1
@rem # Add to Domain Alberton
@wmic.exe /interactive:off ComputerSystem Where name="%computername%" call JoinDomainOrWorkgroup FJoinOptions=35 Name="boston.co.za" UserName="boston.co.za\DomJoin" Password="Password1" AccountOU="OU=Alberton;OU=Company_Owned;OU=Sites;DC=Boston;DC=co;DC=za"
@echo off
@echo Press Any Key to Restart
@pause
shutdown /r /f /t 0
@exit
:DomJoin2
@rem # Add to Domain Bedfordview
@wmic.exe /interactive:off ComputerSystem Where name="%computername%" call JoinDomainOrWorkgroup FJoinOptions=35 Name="boston.co.za" UserName="boston.co.za\DomJoin" Password="Password1" AccountOU="OU=Bedfordview;OU=Company_Owned;OU=Sites;DC=Boston;DC=co;DC=za"
@echo off
@echo Press Any Key to Restart
@pause
shutdown /r /f /t 0
@exit
:DomJoin3
@rem # Add to Domain Bellville
@wmic.exe /interactive:off ComputerSystem Where name="%computername%" call JoinDomainOrWorkgroup FJoinOptions=35 Name="boston.co.za" UserName="boston.co.za\DomJoin" Password="Password1" AccountOU="OU=Bellville;OU=Company_Owned;OU=Sites;DC=Boston;DC=co;DC=za"
@echo off
@echo Press Any Key to Restart
@pause
shutdown /r /f /t 0
@exit
:DomJoin4
@rem # Add to Domain Benoni
@wmic.exe /interactive:off ComputerSystem Where name="%computername%" call JoinDomainOrWorkgroup FJoinOptions=35 Name="boston.co.za" UserName="boston.co.za\DomJoin" Password="Password1" AccountOU="OU=Benoni;OU=Franchise;OU=Sites;DC=Boston;DC=co;DC=za"
@echo off
@echo Press Any Key to Restart
@pause
shutdown /r /f /t 0
@exit
:DomJoin5
@rem # Add to Domain Bloemfontein
@wmic.exe /interactive:off ComputerSystem Where name="%computername%" call JoinDomainOrWorkgroup FJoinOptions=35 Name="boston.co.za" UserName="boston.co.za\DomJoin" Password="Password1" AccountOU="OU=Bloemfontein;OU=Franchise;OU=Sites;DC=Boston;DC=co;DC=za"
@echo off
@echo Press Any Key to Restart
@pause
shutdown /r /f /t 0
@exit
:DomJoin6
@rem # Add to Domain Braamfontein
@wmic.exe /interactive:off ComputerSystem Where name="%computername%" call JoinDomainOrWorkgroup FJoinOptions=35 Name="boston.co.za" UserName="boston.co.za\DomJoin" Password="Password1" AccountOU="OU=Braamfontein;OU=Company_Owned;OU=Sites;DC=Boston;DC=co;DC=za"
@echo off
@echo Press Any Key to Restart
@pause
shutdown /r /f /t 0
@exit
:DomJoin7
@rem # Add to Domain Cape Town
@wmic.exe /interactive:off ComputerSystem Where name="%computername%" call JoinDomainOrWorkgroup FJoinOptions=35 Name="boston.co.za" UserName="boston.co.za\DomJoin" Password="Password1" AccountOU="OU=Cape Town;OU=Company_Owned;OU=Sites;DC=Boston;DC=co;DC=za"
@echo off
@echo Press Any Key to Restart
@pause
shutdown /r /f /t 0
@exit
:DomJoin8
@rem # Add to Domain Durban
@wmic.exe /interactive:off ComputerSystem Where name="%computername%" call JoinDomainOrWorkgroup FJoinOptions=35 Name="boston.co.za" UserName="boston.co.za\DomJoin" Password="Password1" AccountOU="OU=Durban City;OU=Company_Owned;OU=Sites;DC=Boston;DC=co;DC=za"
@echo off
@echo Press Any Key to Restart
@pause
shutdown /r /f /t 0
@exit
:DomJoin9
@rem # Add to Domain East London
@wmic.exe /interactive:off ComputerSystem Where name="%computername%" call JoinDomainOrWorkgroup FJoinOptions=35 Name="boston.co.za" UserName="boston.co.za\DomJoin" Password="Password1" AccountOU="OU=East London;OU=Franchise;OU=Sites;DC=Boston;DC=co;DC=za"
@echo off
@echo Press Any Key to Restart
@pause
shutdown /r /f /t 0
@exit
:DomJoin10
@rem # Add to Domain George
@wmic.exe /interactive:off ComputerSystem Where name="%computername%" call JoinDomainOrWorkgroup FJoinOptions=35 Name="boston.co.za" UserName="boston.co.za\DomJoin" Password="Password1" AccountOU="OU=George;OU=Franchise;OU=Sites;DC=Boston;DC=co;DC=za"
@echo off
@echo Press Any Key to Restart
@pause
shutdown /r /f /t 0
@exit
:DomJoin11
@rem # Add to Domain Germiston
@wmic.exe /interactive:off ComputerSystem Where name="%computername%" call JoinDomainOrWorkgroup FJoinOptions=35 Name="boston.co.za" UserName="boston.co.za\DomJoin" Password="Password1" AccountOU="OU=Germiston;OU=Company_Owned;OU=Sites;DC=Boston;DC=co;DC=za"
@echo off
@echo Press Any Key to Restart
@pause
shutdown /r /f /t 0
@exit
:DomJoin12
@rem # Add to Domain Johannesburg City Centre
@wmic.exe /interactive:off ComputerSystem Where name="%computername%" call JoinDomainOrWorkgroup FJoinOptions=35 Name="boston.co.za" UserName="boston.co.za\DomJoin" Password="Password1" AccountOU="OU=Johannesburg;OU=Company_Owned;OU=Sites;DC=Boston;DC=co;DC=za"
@echo off
@echo Press Any Key to Restart
@pause
shutdown /r /f /t 0
@exit
:DomJoin13
@rem # Add to Domain Kempton Park
@wmic.exe /interactive:off ComputerSystem Where name="%computername%" call JoinDomainOrWorkgroup FJoinOptions=35 Name="boston.co.za" UserName="boston.co.za\DomJoin" Password="Password1" AccountOU="OU=Kempton Park;OU=Franchise;OU=Sites;DC=Boston;DC=co;DC=za"
@echo off
@echo Press Any Key to Restart
@pause
shutdown /r /f /t 0
@exit
:DomJoin14
@rem # Add to Domain Kimberley
@wmic.exe /interactive:off ComputerSystem Where name="%computername%" call JoinDomainOrWorkgroup FJoinOptions=35 Name="boston.co.za" UserName="boston.co.za\DomJoin" Password="Password1" AccountOU="OU=Kimberley;OU=Franchise;OU=Sites;DC=Boston;DC=co;DC=za"
@echo off
@echo Press Any Key to Restart
@pause
shutdown /r /f /t 0
@exit
:DomJoin15
@rem # Add to Domain Klerksdorp
@wmic.exe /interactive:off ComputerSystem Where name="%computername%" call JoinDomainOrWorkgroup FJoinOptions=35 Name="boston.co.za" UserName="boston.co.za\DomJoin" Password="Password1" AccountOU="OU=Klerksdorp;OU=Franchise;OU=Sites;DC=Boston;DC=co;DC=za"
@echo off
@echo Press Any Key to Restart
@pause
shutdown /r /f /t 0
@exit
:DomJoin16
@rem # Add to Domain Krugersdorp
@wmic.exe /interactive:off ComputerSystem Where name="%computername%" call JoinDomainOrWorkgroup FJoinOptions=35 Name="boston.co.za" UserName="boston.co.za\DomJoin" Password="Password1" AccountOU="OU=Krugersdorp;OU=Company_Owned;OU=Sites;DC=Boston;DC=co;DC=za"
@echo off
@echo Press Any Key to Restart
@pause
shutdown /r /f /t 0
@exit
:DomJoin17
@rem # Add to Domain Ladysmith
@wmic.exe /interactive:off ComputerSystem Where name="%computername%" call JoinDomainOrWorkgroup FJoinOptions=35 Name="boston.co.za" UserName="boston.co.za\DomJoin" Password="Password1" AccountOU="OU=Ladysmith;OU=Company_Owned;OU=Sites;DC=Boston;DC=co;DC=za"
@echo off
@echo Press Any Key to Restart
@pause
shutdown /r /f /t 0
@exit
:DomJoin18
@rem # Add to Domain Nelspruit
@wmic.exe /interactive:off ComputerSystem Where name="%computername%" call JoinDomainOrWorkgroup FJoinOptions=35 Name="boston.co.za" UserName="boston.co.za\DomJoin" Password="Password1" AccountOU="OU=Nelspruit;OU=Company_Owned;OU=Sites;DC=Boston;DC=co;DC=za"
@echo off
@echo Press Any Key to Restart
@pause
shutdown /r /f /t 0
@exit
:DomJoin19
@rem # Add to Domain Newcastle
@wmic.exe /interactive:off ComputerSystem Where name="%computername%" call JoinDomainOrWorkgroup FJoinOptions=35 Name="boston.co.za" UserName="boston.co.za\DomJoin" Password="Password1" AccountOU="OU=Newcastle;OU=Company_Owned;OU=Sites;DC=Boston;DC=co;DC=za"
@echo off
@echo Press Any Key to Restart
@pause
shutdown /r /f /t 0
@exit
:DomJoin20
@rem # Add to Domain Orange Grove/Head Office
@wmic.exe /interactive:off ComputerSystem Where name="%computername%" call JoinDomainOrWorkgroup FJoinOptions=35 Name="boston.co.za" UserName="boston.co.za\DomJoin" Password="Password1" AccountOU="OU=Head Office;OU=Company_Owned;OU=Sites;DC=Boston;DC=co;DC=za"
@echo off
@echo Press Any Key to Restart
@pause
shutdown /r /f /t 0
@exit
:DomJoin21
@rem # Add to Domain Paarl
@wmic.exe /interactive:off ComputerSystem Where name="%computername%" call JoinDomainOrWorkgroup FJoinOptions=35 Name="boston.co.za" UserName="boston.co.za\DomJoin" Password="Password1" AccountOU="OU=Paarl;OU=Franchise;OU=Sites;DC=Boston;DC=co;DC=za"
@echo off
@echo Press Any Key to Restart
@pause
shutdown /r /f /t 0
@exit
:DomJoin22
@rem # Add to Domain Pietermaritzburg
@wmic.exe /interactive:off ComputerSystem Where name="%computername%" call JoinDomainOrWorkgroup FJoinOptions=35 Name="boston.co.za" UserName="boston.co.za\DomJoin" Password="Password1" AccountOU="OU=Pietermaritzburg;OU=Franchise;OU=Sites;DC=Boston;DC=co;DC=za"
@echo off
@echo Press Any Key to Restart
@pause
shutdown /r /f /t 0
@exit
:DomJoin23
@rem # Add to Domain Pinetown
@wmic.exe /interactive:off ComputerSystem Where name="%computername%" call JoinDomainOrWorkgroup FJoinOptions=35 Name="boston.co.za" UserName="boston.co.za\DomJoin" Password="Password1" AccountOU="OU=Pinetown;OU=Franchise;OU=Sites;DC=Boston;DC=co;DC=za"
@echo off
@echo Press Any Key to Restart
@pause
shutdown /r /f /t 0
@exit
:DomJoin24
@rem # Add to Domain Polokwane
@wmic.exe /interactive:off ComputerSystem Where name="%computername%" call JoinDomainOrWorkgroup FJoinOptions=35 Name="boston.co.za" UserName="boston.co.za\DomJoin" Password="Password1" AccountOU="OU=Polokwane;OU=Company_Owned;OU=Sites;DC=Boston;DC=co;DC=za"
@echo off
@echo Press Any Key to Restart
@pause
shutdown /r /f /t 0
@exit
:DomJoin25
@rem # Add to Domain Port Elizabeth
@wmic.exe /interactive:off ComputerSystem Where name="%computername%" call JoinDomainOrWorkgroup FJoinOptions=35 Name="boston.co.za" UserName="boston.co.za\DomJoin" Password="Password1" AccountOU="OU=Port Elizabeth;OU=Franchise;OU=Sites;DC=Boston;DC=co;DC=za"
@echo off
@echo Press Any Key to Restart
@pause
shutdown /r /f /t 0
@exit
:DomJoin26
@rem # Add to Domain Port Shepstone
@wmic.exe /interactive:off ComputerSystem Where name="%computername%" call JoinDomainOrWorkgroup FJoinOptions=35 Name="boston.co.za" UserName="boston.co.za\DomJoin" Password="Password1" AccountOU="OU=Port Shepstone;OU=Company_Owned;OU=Sites;DC=Boston;DC=co;DC=za"
@echo off
@echo Press Any Key to Restart
@pause
shutdown /r /f /t 0
@exit
:DomJoin27
@rem # Add to Domain Potchefstroom
@wmic.exe /interactive:off ComputerSystem Where name="%computername%" call JoinDomainOrWorkgroup FJoinOptions=35 Name="boston.co.za" UserName="boston.co.za\DomJoin" Password="Password1" AccountOU="OU=Potchefstroom;OU=Franchise;OU=Sites;DC=Boston;DC=co;DC=za"
@echo off
@echo Press Any Key to Restart
@pause
shutdown /r /f /t 0
@exit
:DomJoin28
@rem # Add to Domain Pretoria Arcadia
@wmic.exe /interactive:off ComputerSystem Where name="%computername%" call JoinDomainOrWorkgroup FJoinOptions=35 Name="boston.co.za" UserName="boston.co.za\DomJoin" Password="Password1" AccountOU="OU=Pretoria Arcadia;OU=Company_Owned;OU=Sites;DC=Boston;DC=co;DC=za"
@echo off
@echo Press Any Key to Restart
@pause
shutdown /r /f /t 0
@exit
:DomJoin29
@rem # Add to Domain Pretoria North
@wmic.exe /interactive:off ComputerSystem Where name="%computername%" call JoinDomainOrWorkgroup FJoinOptions=35 Name="boston.co.za" UserName="boston.co.za\DomJoin" Password="Password1" AccountOU="OU=Pretoria North;OU=Company_Owned;OU=Sites;DC=Boston;DC=co;DC=za"
@echo off
@echo Press Any Key to Restart
@pause
shutdown /r /f /t 0
@exit
:DomJoin30
@rem # Add to Domain Queenstown
@wmic.exe /interactive:off ComputerSystem Where name="%computername%" call JoinDomainOrWorkgroup FJoinOptions=35 Name="boston.co.za" UserName="boston.co.za\DomJoin" Password="Password1" AccountOU="OU=Queenstown;OU=Franchise;OU=Sites;DC=Boston;DC=co;DC=za"
@echo off
@echo Press Any Key to Restart
@pause
shutdown /r /f /t 0
@exit
:DomJoin31
@rem # Add to Domain Randburg
@wmic.exe /interactive:off ComputerSystem Where name="%computername%" call JoinDomainOrWorkgroup FJoinOptions=35 Name="boston.co.za" UserName="boston.co.za\DomJoin" Password="Password1" AccountOU="OU=Randburg;OU=Company_Owned;OU=Sites;DC=Boston;DC=co;DC=za"
@echo off
@echo Press Any Key to Restart
@pause
shutdown /r /f /t 0
@exit
:DomJoin32
@rem # Add to Domain Richard's Bay
@wmic.exe /interactive:off ComputerSystem Where name="%computername%" call JoinDomainOrWorkgroup FJoinOptions=35 Name="boston.co.za" UserName="boston.co.za\DomJoin" Password="Password1" AccountOU="OU=Richard's Bay;OU=Company_Owned;OU=Sites;DC=Boston;DC=co;DC=za"
@echo off
@echo Press Any Key to Restart
@pause
shutdown /r /f /t 0
@exit
:DomJoin33
@rem # Add to Domain Roodepoort
@wmic.exe /interactive:off ComputerSystem Where name="%computername%" call JoinDomainOrWorkgroup FJoinOptions=35 Name="boston.co.za" UserName="boston.co.za\DomJoin" Password="Password1" AccountOU="OU=Roodepoort;OU=Franchise;OU=Sites;DC=Boston;DC=co;DC=za"
@echo off
@echo Press Any Key to Restart
@pause
shutdown /r /f /t 0
@exit
:DomJoin34
@rem # Add to Domain Rustenburg
@wmic.exe /interactive:off ComputerSystem Where name="%computername%" call JoinDomainOrWorkgroup FJoinOptions=35 Name="boston.co.za" UserName="boston.co.za\DomJoin" Password="Password1" AccountOU="OU=Rustenburg;OU=Company_Owned;OU=Sites;DC=Boston;DC=co;DC=za"
@echo off
@echo Press Any Key to Restart
@pause
shutdown /r /f /t 0
@exit
:DomJoin35
@rem # Add to Domain Sandton/Media House
@wmic.exe /interactive:off ComputerSystem Where name="%computername%" call JoinDomainOrWorkgroup FJoinOptions=35 Name="boston.co.za" UserName="boston.co.za\DomJoin" Password="Password1" AccountOU="OU=Sandton;OU=Company_Owned;OU=Sites;DC=Boston;DC=co;DC=za"
@echo off
@echo Press Any Key to Restart
@pause
shutdown /r /f /t 0
@exit
:DomJoin36
@rem # Add to Domain Somerset West
@wmic.exe /interactive:off ComputerSystem Where name="%computername%" call JoinDomainOrWorkgroup FJoinOptions=35 Name="boston.co.za" UserName="boston.co.za\DomJoin" Password="Password1" AccountOU="OU=Somerset West;OU=Franchise;OU=Sites;DC=Boston;DC=co;DC=za"
@echo off
@echo Press Any Key to Restart
@pause
shutdown /r /f /t 0
@exit
:DomJoin37
@rem # Add to Domain Soweto
@wmic.exe /interactive:off ComputerSystem Where name="%computername%" call JoinDomainOrWorkgroup FJoinOptions=35 Name="boston.co.za" UserName="boston.co.za\DomJoin" Password="Password1" AccountOU="OU=Soweto;OU=Company_Owned;OU=Sites;DC=Boston;DC=co;DC=za"
@echo off
@echo Press Any Key to Restart
@pause
shutdown /r /f /t 0
@exit
:DomJoin38
@rem # Add to Domain Springs
@wmic.exe /interactive:off ComputerSystem Where name="%computername%" call JoinDomainOrWorkgroup FJoinOptions=35 Name="boston.co.za" UserName="boston.co.za\DomJoin" Password="Password1" AccountOU="OU=Springs;OU=Company_Owned;OU=Sites;DC=Boston;DC=co;DC=za"
@echo off
@echo Press Any Key to Restart
@pause
shutdown /r /f /t 0
@exit
:DomJoin39
@rem # Add to Domain Stanger
@wmic.exe /interactive:off ComputerSystem Where name="%computername%" call JoinDomainOrWorkgroup FJoinOptions=35 Name="boston.co.za" UserName="boston.co.za\DomJoin" Password="Password1" AccountOU="OU=Stanger;OU=Company_Owned;OU=Sites;DC=Boston;DC=co;DC=za"
@echo off
@echo Press Any Key to Restart
@pause
shutdown /r /f /t 0
@exit
:DomJoin40
@rem # Add to Domain Tzaneen
@wmic.exe /interactive:off ComputerSystem Where name="%computername%" call JoinDomainOrWorkgroup FJoinOptions=35 Name="boston.co.za" UserName="boston.co.za\DomJoin" Password="Password1" AccountOU="OU=Tzaneen;OU=Company_Owned;OU=Sites;DC=Boston;DC=co;DC=za"
@echo off
@echo Press Any Key to Restart
@pause
shutdown /r /f /t 0
@exit
:DomJoin41
@rem # Add to Domain Umhlanga
@wmic.exe /interactive:off ComputerSystem Where name="%computername%" call JoinDomainOrWorkgroup FJoinOptions=35 Name="boston.co.za" UserName="boston.co.za\DomJoin" Password="Password1" AccountOU="OU=Umhlanga;OU=Company_Owned;OU=Sites;DC=Boston;DC=co;DC=za"
@echo off
@echo Press Any Key to Restart
@pause
shutdown /r /f /t 0
@exit
:DomJoin42
@rem # Add to Domain Umtata/Mthata/Umthata
@wmic.exe /interactive:off ComputerSystem Where name="%computername%" call JoinDomainOrWorkgroup FJoinOptions=35 Name="boston.co.za" UserName="boston.co.za\DomJoin" Password="Password1" AccountOU="OU=Umthatha;OU=Franchise;OU=Sites;DC=Boston;DC=co;DC=za"
@echo off
@echo Press Any Key to Restart
@pause
shutdown /r /f /t 0
@exit
:DomJoin43
@rem # Add to Domain Vereeniging
@wmic.exe /interactive:off ComputerSystem Where name="%computername%" call JoinDomainOrWorkgroup FJoinOptions=35 Name="boston.co.za" UserName="boston.co.za\DomJoin" Password="Password1" AccountOU="OU=Vereeniging;OU=Company_Owned;OU=Sites;DC=Boston;DC=co;DC=za"
@echo off
@echo Press Any Key to Restart
@pause
shutdown /r /f /t 0
@exit
:DomJoin44
@rem # Add to Domain Welkom
@wmic.exe /interactive:off ComputerSystem Where name="%computername%" call JoinDomainOrWorkgroup FJoinOptions=35 Name="boston.co.za" UserName="boston.co.za\DomJoin" Password="Password1" AccountOU="OU=Welkom;OU=Franchise;OU=Sites;DC=Boston;DC=co;DC=za"
@echo off
@echo Press Any Key to Restart
@pause
shutdown /r /f /t 0
@exit
:DomJoin45
@rem # Add to Domain Witbank
@wmic.exe /interactive:off ComputerSystem Where name="%computername%" call JoinDomainOrWorkgroup FJoinOptions=35 Name="boston.co.za" UserName="boston.co.za\DomJoin" Password="Password1" AccountOU="OU=Witbank;OU=Franchise;OU=Sites;DC=Boston;DC=co;DC=za"
@echo off
@echo Press Any Key to Restart
@pause
shutdown /r /f /t 0
@exit
:AKMS
@rem # Admin KMS Menu
cls
@echo Please Select the version of Windows or Office which you are Running
@echo Remember to check system time and connectivity
@echo 1 - Windows 7
@echo 2 - Windows 8
@echo 3 - Windows 8.1
@echo 4 - Office 2010
@echo 5 - Office 2013
@echo B - Back to Previous Menu
@Echo X - Back to Main Menu
@echo Q - Quit
@set /p AKMS=Type in the corrosponding number and press Enter: 
@if %AKMS% == 1 goto AKSM7
@if %AKMS% == 2 goto AKMS8
@if %AKMS% == 3 goto AKSM8.1
@if %AKMS% == 4 goto AKMS2010
@if %AKMS% == 5 goto AKMS2013
@if %AKMS% == b goto AMainMenu
@if %AKMS% == B goto AMainMenu
@if %AKMS% == x goto MainMenu
@if %AKMS% == X goto MainMenu
@if %AKMS% == q goto Quit
@if %AKMS% == Q goto Quit
goto AKMS
@exit
:AKMS7
@rem # Admin Windows 7 Activation
c:
cd\
cd\windows\system32 
cscript slmgr.vbs -upk
cscript slmgr.vbs /ipk FJ82H-XT6CR-J8D7P-XQJJ2-GPDD4
cscript slmgr.vbs -skms 192.168.200.4
cscript slmgr.vbs -ato
goto AKMS
@exit
:AKMS8
@rem # Admin Windows 8 Activation
c:
cd\
cd\windows\system32 
cscript slmgr.vbs -upk
cscript slmgr.vbs /ipk NG4HW-VH26C-733KW-K6F98-J8CK4
cscript slmgr.vbs -skms 192.168.200.4
cscript slmgr.vbs -ato
goto AKMS
@exit
:AKMS8.1
@rem # Admin Windows 8.1 Activation
c:
cd\windows\system32 
cscript slmgr.vbs -upk
cscript slmgr.vbs /ipk GCRJD-8NW9H-F2CDX-CCM8D-9D6T9
cscript slmgr.vbs -skms 192.168.200.4
cscript slmgr.vbs -ato
goto AKMS
@exit
:AKMS2010
@rem # Admin Office 2010 Activation
c:
cd "C:\Program Files\Microsoft Office\Office14"
cscript ospp.vbs /inpkey:VYBBJ-TRJPB-QFQRF-QFT4D-H3GVB
cscript ospp.vbs /sethst:192.168.200.4
cscript ospp.vbs /act
cd "C:\Program Files (x86)\Microsoft Office\Office14"
cscript ospp.vbs /inpkey:VYBBJ-TRJPB-QFQRF-QFT4D-H3GVB
cscript ospp.vbs /sethst:192.168.200.4
cscript ospp.vbs /act
goto AKMS
@exit
:AKMS2013
@rem # Admin Office 2013 Activation
c:
cd "C:\Program Files\Microsoft Office\Office15"
cscript ospp.vbs /inpkey:YC7DK-G2NP3-2QQC3-J6H88-GVGXT
cscript ospp.vbs /sethst:192.168.200.4
cscript ospp.vbs /act
cd "C:\Program Files (x86)\Microsoft Office\Office15"
cscript ospp.vbs /inpkey:YC7DK-G2NP3-2QQC3-J6H88-GVGXT
cscript ospp.vbs /sethst:192.168.200.4
cscript ospp.vbs /act
goto AKMS
@exit
:SKMS
@rem # Student KMS Menu
cls
@echo Please Select the version of Windows or Office which you are Running
@echo Remember to check system time and connectivity
@echo 1 - Windows 7
@echo 2 - Windows 8.1
@echo 3 - Office 2010
@echo 4 - Office 2013
@echo B - Back to Previous Menu
@Echo X - Back to Main Menu
@echo Q - Quit
@set /p SKMS=Type in the corrosponding number and press Enter: 
@if %SKMS% == 1 goto SKMS7
@if %SKMS% == 2 goto SKMS8.1
@if %SKMS% == 3 goto SKMS2010
@if %SKMS% == 4 goto SKMS2013
@if %SKMS% == b goto SMainMenu
@if %SKMS% == B goto SMainMenu
@if %SKMS% == x goto MainMenu
@if %SKMS% == X goto MainMenu
@if %SKMS% == q goto Quit
@if %SKMS% == Q goto Quit
goto SKMS
@exit
:SKMS7
@rem # Student Windows 7 Activation
c:
cd\
cd\windows\system32 
cscript slmgr.vbs -upk
cscript slmgr.vbs /ipk FJ82H-XT6CR-J8D7P-XQJJ2-GPDD4
cscript slmgr.vbs -skms 192.168.200.4
cscript slmgr.vbs -ato
goto SKMS
@exit
:SKMS8.1
@rem # Student Windows 8.1 Activation
c:
cd\windows\system32 
cscript slmgr.vbs -upk
cscript slmgr.vbs /ipk GCRJD-8NW9H-F2CDX-CCM8D-9D6T9
cscript slmgr.vbs -skms 192.168.200.4
cscript slmgr.vbs -ato
goto SKMS
@exit
:SKMS2010
@rem # Student Office 2010 Activation
c:
cd "C:\Program Files\Microsoft Office\Office14"
cscript ospp.vbs /inpkey:VYBBJ-TRJPB-QFQRF-QFT4D-H3GVB
cscript ospp.vbs /sethst:192.168.200.4
cscript ospp.vbs /act
goto SKMS
@exit
:SKMS2013
@rem # Student Office 2013 Activation
c:
cd "C:\Program Files\Microsoft Office\Office15"
cscript ospp.vbs /inpkey:YC7DK-G2NP3-2QQC3-J6H88-GVGXT
cscript ospp.vbs /sethst:192.168.200.4
cscript ospp.vbs /act
goto SKMS
@exit
:ICASHosts
@rem # Create Hosts file Entries for ICAS
if exist "%USERPROFILE%\ICASHOSTS.txt" goto :ICASALREADY ELSE
@echo: >> C:\Windows\System32\Drivers\etc\hosts
@echo 192.168.200.15 bostonapps >> C:\Windows\System32\Drivers\etc\hosts
@echo 192.168.200.15 bostonapps.boston.co.za >> C:\Windows\System32\Drivers\etc\hosts
@echo 192.168.200.16 bostonapps >> C:\Windows\System32\Drivers\etc\hosts
@echo 192.168.200.16 bostonapps.boston.co.za >> C:\Windows\System32\Drivers\etc\hosts
@echo 192.168.200.17 bostonapps >> C:\Windows\System32\Drivers\etc\hosts
@echo 192.168.200.17 bostonapps.boston.co.za >> C:\Windows\System32\Drivers\etc\hosts
@echo ICAS Hosts File Entries were created on %Date% >> "%Userprofile%\ICASHOSTS.txt
goto AMainMenu
@exit
:ICASALREADY
cls
@echo ICAS Has Already Been enabled for remote access
pause
goto AMainMenu
@exit
:ACleanup
@rem # Cleanup Cookies and Internet Temp Files [Admin]
del /f /q "%userprofile%\AppData\Local\Microsoft\Windows\Temporary Internet Files\*.*"
del /f /q "%userprofile%\AppData\Local\Microsoft\Windows\Temporary Internet Files\Content.IE5\*.*"
rmdir /s /q "%userprofile%\AppData\Local\Microsoft\Windows\Temporary Internet Files\Content.IE5"
del /f /q "%userprofile%\AppData\Local\Microsoft\Windows\Temporary Internet Files\Content.MSO\*.*"
rmdir /s /q "%userprofile%\AppData\Local\Microsoft\Windows\Temporary Internet Files\Content.MSO"
del /f /q "%userprofile%\AppData\Local\Microsoft\Windows\Temporary Internet Files\Content.Outlook\*.*"
rmdir /s /q "%userprofile%\AppData\Local\Microsoft\Windows\Temporary Internet Files\Content.Outlook"
del /f /q "%userprofile%\AppData\Local\Microsoft\Windows\Temporary Internet Files\Content.Word\*.*"
rmdir /s /q "%userprofile%\AppData\Local\Microsoft\Windows\Temporary Internet Files\Content.Word"
del /f /q "%userprofile%\Cookies\*.*"
del /f /q "C:\WINDOWS\temp\*.*"
rmdir /s /q C:\Windows\Temp
del /f /q "%temp%\*.*"
rmdir /s /q "%temp%"
goto AMainMenu
@exit
:ADefrag
@rem # Defrag [Admin]
defrag -c -v -u
goto AMainMenu
@exit
:SCleanup
@rem # Cleanup Cookies and Internet Temp Files [Student]
del /f /q "%userprofile%\AppData\Local\Microsoft\Windows\Temporary Internet Files\*.*"
del /f /q "%userprofile%\AppData\Local\Microsoft\Windows\Temporary Internet Files\Content.IE5\*.*"
rmdir /s /q "%userprofile%\AppData\Local\Microsoft\Windows\Temporary Internet Files\Content.IE5"
del /f /q "%userprofile%\AppData\Local\Microsoft\Windows\Temporary Internet Files\Content.MSO\*.*"
rmdir /s /q "%userprofile%\AppData\Local\Microsoft\Windows\Temporary Internet Files\Content.MSO"
del /f /q "%userprofile%\AppData\Local\Microsoft\Windows\Temporary Internet Files\Content.Outlook\*.*"
rmdir /s /q "%userprofile%\AppData\Local\Microsoft\Windows\Temporary Internet Files\Content.Outlook"
del /f /q "%userprofile%\AppData\Local\Microsoft\Windows\Temporary Internet Files\Content.Word\*.*"
rmdir /s /q "%userprofile%\AppData\Local\Microsoft\Windows\Temporary Internet Files\Content.Word"
del /f /q "%userprofile%\Cookies\*.*"
del /f /q "C:\WINDOWS\temp\*.*"
rmdir /s /q C:\Windows\Temp
del /f /q "%temp%\*.*"
rmdir /s /q "%temp%"
goto SMainMenu
@exit
:SDefrag
@rem # Defrag [Student]
defrag -c -v -u
goto SMainMenu
@exit
:APower
@rem # Set Power Option (Disable Hibernation and HDD Spin Down) [Admin]
powercfg -h off
powercfg -change -monitor-timeout-ac 10
powercfg -change -monitor-timeout-dc 10
powercfg -change -disk-timeout-ac 0
powercfg -change -disk-timeout-dc 0
powercfg -change -hibernate-timeout-ac 0
powercfg -change -hibernate-timeout-dc 0
goto AMainMenu
@exit
:ADRM
@rem # Add DRM to IE Compatibility Lists [Admin]
REG ADD "HKCU\Software\Microsoft\Internet Explorer\BrowserEmulation\PolicyList" /v moodle /t REG_SZ /d moodle
REG ADD "HKCU\Software\Microsoft\Internet Explorer\BrowserEmulation\PolicyList" /v boston.co.za /t REG_SZ /d boston.co.za
REG ADD "HKCU\Software\Microsoft\Internet Explorer\BrowserEmulation\PolicyList" /v ezdrm.com /t REG_SZ /d ezdrm.com
goto AMainMenu
@exit
:SDRM
@rem # Add DRM to IE Compatibility Lists [Student]
REG ADD "HKCU\Software\Microsoft\Internet Explorer\BrowserEmulation\PolicyList" /v moodle /t REG_SZ /d moodle
REG ADD "HKCU\Software\Microsoft\Internet Explorer\BrowserEmulation\PolicyList" /v boston.co.za /t REG_SZ /d boston.co.za
REG ADD "HKCU\Software\Microsoft\Internet Explorer\BrowserEmulation\PolicyList" /v ezdrm.com /t REG_SZ /d ezdrm.com
goto SMainMenu
@exit
