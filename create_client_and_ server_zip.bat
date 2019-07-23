@ECHO OFF
COLOR B0

::DelOldFiles
CLS
TITLE Deleting old Files...

DEL client.zip
DEL server.zip

ECHO.
ECHO.
ECHO Finished!
TIMEOUT /T 5

::GetForge
CLS
TITLE Getting forge...

MKDIR bin
CD /D bin

BITSADMIN /TRANSFER forge /DOWNLOAD /PRIORITY NORMAL https://files.minecraftforge.net/maven/net/minecraftforge/forge/1.12.2-14.23.5.2838/forge-1.12.2-14.23.5.2838-universal.jar  %CD%\modpack.jar

CD /D ..

ECHO.
ECHO.
ECHO Finished!
TIMEOUT /T 5

::GetMods
CLS
TITLE Getting mods...

CD /D git
MKDIR mods
CD /D mods

::0
SET names[0]=ae2_stuff
Set links[0]=https://media.forgecdn.net/files/2491/32/ae2stuff-0.7.0.4-mc1.12.2.jar
::1
SET names[1]=aether_the
SET links[1]=https://media.forgecdn.net/files/2698/950/aether_legacy-1.12.2-v1.4.4.jar
::2
SET names[2]=aether_continuation
SET links[2]=https://media.forgecdn.net/files/2701/616/aether_continuation-1.12.2-v1.2.3.jar
::3
SET names[3]=appleskin
SET links[3]=https://media.forgecdn.net/files/2496/585/AppleSkin-mc1.12-1.0.9.jar
::4
SET names[4]=applied_energistics_2
SET links[4]=https://media.forgecdn.net/files/2652/453/appliedenergistics2-rv6-stable-6.jar
::5
SET names[5]=avaritia_1.1x
SET links[5]=https://media.forgecdn.net/files/2660/801/Avaritia-1.12.2-3.3.0.33-universal.jar
::6
SET names[6]=betterfps
SET links[6]=https://media.forgecdn.net/files/2483/393/BetterFps-1.4.8.jar
::7
SET names[7]=bibliocraft
SET links[7]=https://media.forgecdn.net/files/2574/880/BiblioCraft%5bv2.4.5%5d%5bMC1.12.2%5d.jar
::8
SET names[8]=biomes_o_plenty
SET links[8]=https://media.forgecdn.net/files/2711/162/BiomesOPlenty-1.12.2-7.0.1.2439-universal.jar
::9
SET names[9]=block_drops
SET links[9]=https://media.forgecdn.net/files/2509/46/blockdrops-1.12.2-1.4.0.jar
::10
SET names[10]=blockcraftery
SET links[10]=https://media.forgecdn.net/files/2716/712/blockcraftery-1.12.2-1.3.1.jar
::11
SET names[11]=bone_appetit
SET links[11]=https://media.forgecdn.net/files/2689/172/BoneAppetit-1.0.0.4.jar
::12
SET names[12]=charset_immersion
SET links[12]=https://media.forgecdn.net/files/2695/681/Charset-Immersion-0.5.5.7.jar
::13
SET names[13]=chisel
SET links[13]=https://media.forgecdn.net/files/2619/468/Chisel-MC1.12.2-0.2.1.35.jar
::14
SET names[14]=chisels_and_bits
SET links[14]=https://media.forgecdn.net/files/2720/655/chiselsandbits-14.33.jar
::15
SET names[15]=complexlogic
SET links[15]=https://media.forgecdn.net/files/2633/439/complex-logic-1.4.2-master.jar
::16
SET names[16]=constructs_armory
SEt links[16]=https://media.forgecdn.net/files/2718/520/conarm-1.12.2-1.2.4.jar
::17
SET names[17]=crafttweaker2
SET links[17]=https://media.forgecdn.net/files/2724/129/CraftTweaker2-1.12-4.1.19.jar
::18
SET names[18]=ender_io_ae2_conduits
SET links[18]=https://media.forgecdn.net/files/2732/696/EnderIO-conduits-appliedenergistics-1.12.2-5.0.46.jar
::19
SET names[19]=ender_io_base
SET links[19]=https://media.forgecdn.net/files/2732/693/EnderIO-base-1.12.2-5.0.46.jar
::20
SET names[20]=ender_io_conduits
SET links[20]=https://media.forgecdn.net/files/2732/695/EnderIO-conduits-1.12.2-5.0.46.jar
::21
SET names[21]=ender_io_machines
SET links[21]=https://media.forgecdn.net/files/2732/694/EnderIO-machines-1.12.2-5.0.46.jar
::22
SET names[22]=ender_io_tic
SET links[22]=https://media.forgecdn.net/files/2732/700/EnderIO-integration-tic-1.12.2-5.0.46.jar
::23
SET names[23]=ender_io_zoo
SET links[23]=https://media.forgecdn.net/files/2732/701/EnderIO-zoo-1.12.2-5.0.46.jar
::24
SET names[24]=ender_storage_1.8.plus
SET links[24]=https://media.forgecdn.net/files/2594/243/EnderStorage-1.12.2-2.4.5.135-universal.jar
::25
SET names[25]=ender_tweaker
SET links[25]=https://media.forgecdn.net/files/2718/576/EnderTweaker-1.12.2-1.1.7.jar
::26
SET names[26]=equaldragons
SET links[26]=https://media.forgecdn.net/files/2516/748/EqualDragons-1.1.jar
::27
SET names[27]=extra_utilities_2
SET links[27]=https://media.forgecdn.net/files/2678/374/extrautils2-1.12-1.9.9.jar
::28
SET names[28]=extraplanets
SET links[28]=https://media.forgecdn.net/files/2723/471/ExtraPlanets-1.12.2-0.5.3.jar
::29
SET names[29]=extreme_reactors
SET links[29]=https://media.forgecdn.net/files/2722/271/ExtremeReactors-1.12.2-0.4.5.67.jar
::30
SET names[30]=fancy_lamps
SET links[30]=https://media.forgecdn.net/files/2669/871/fancylamps-1.1.0.jar
::31
SET names[31]=fast_leaf_decay
SET links[31]=https://media.forgecdn.net/files/2463/272/FastLeafDecay-v14.jar
::32
SET names[32]=flux_networks
SET links[32]=https://media.forgecdn.net/files/2645/165/fluxnetworks-1.12.2-3.0.19-21.jar
::33
SET names[33]=forestry
SET links[33]=https://media.forgecdn.net/files/2684/780/forestry_1.12.2-5.8.2.387.jar
::34

for /l %%i in (0,1,33) do (
  CALL BITSADMIN /TRANSFER %%names[%%i]%% /DOWNLOAD /PRIORITY NORMAL %%links[%%i]%% %CD%\%%names[%%i]%%.jar
)

CD /D ..

ECHO.
ECHO.
ECHO Finished!
TIMEOUT /T 5

::CreateServerPack
CLS
TITLE Creating Server Pack...

MKDIR server

CD /D server

BITSADMIN /TRANSFER mc_server /DOWNLOAD /PRIORITY NORMAL https://launcher.mojang.com/v1/objects/886945bfb2b978778c3a0288fd7fab09d315b25f/server.jar %CD%\minecraft_server.1.12.2.jar
COPY /Y ..\bin\modpack.jar forge.jar

MKDIR mods
MKDIR config
MKDIR scripts

CD /D ..
XCOPY mods server\mods /S /Y

CD /D server\mods
DEL block_drops.jar
DEL its_the_little_things.jar
DEL jei_bees.jar
DEL just_enough_energistics.jar
DEL just_enough_harvestcraft.jar
DEL just_enough_resources.jar
DEL just_enough_throwing_in_fluids.jar
DEL tinkers_jei.jar

CD /D ..\..
XCOPY config server\config /S /Y

CD /D server\config
RMDIR /S /Q BlockDrops
RMDIR /S /Q itlt
RMDIR /S /Q jeresources
DEL itlt.cfg
DEL jeibees.cfg
DEL splash.properties

CD /D ..\..
XCOPY scripts server\scripts /S /Y

ECHO.
ECHO.
ECHO Finished!
TIMEOUT /T 5

::CreateClientZip
CLS
TITLE Creating client.zip: adding bin

"C:\Program Files\7-Zip\7z.exe" a -tzip client.zip bin
ECHO.
ECHO.
ECHO Finished!
TIMEOUT /T 5

CLS
TITLE Creating client.zip: adding config...
"C:\Program Files\7-Zip\7z.exe" a -tzip client.zip config
ECHO.
ECHO.
ECHO Finished!
TIMEOUT /T 5

CLS
TITLE Creating client.zip: adding mods...
"C:\Program Files\7-Zip\7z.exe" a -tzip client.zip mods
ECHO.
ECHO.
ECHO Finished!
TIMEOUT /T 5

CLS
TITLE Creating client.zip: adding scripts...
"C:\Program Files\7-Zip\7z.exe" a -tzip client.zip scripts
ECHO.
ECHO.
ECHO Finished!
TIMEOUT /T 5

::CreateServerZip
CLS
TITLE Creating server.zip: adding config

CD /D server

"C:\Program Files\7-Zip\7z.exe" a -tzip ..\server.zip config
ECHO.
ECHO.
ECHO Finished!
TIMEOUT /T 5

CLS
TITLE Creating server.zip: adding mods
"C:\Program Files\7-Zip\7z.exe" a -tzip ..\server.zip mods
ECHO.
ECHO.
ECHO Finished!
TIMEOUT /T 5

CLS
TITLE Creating server.zip: adding scripts
"C:\Program Files\7-Zip\7z.exe" a -tzip ..\server.zip scripts
ECHO.
ECHO.
ECHO Finished!
TIMEOUT /T 5

CLS
TITLE Creating server.zip: adding forge.jar
"C:\Program Files\7-Zip\7z.exe" a -tzip ..\server.zip .\forge.jar
ECHO.
ECHO.
ECHO Finished!
TIMEOUT /T 5

CLS
TITLE Creating server.zip: adding minecraft_server.1.12.2.jar
"C:\Program Files\7-Zip\7z.exe" a -tzip ..\server.zip .\minecraft_server.1.12.2.jar

ECHO.
ECHO.
ECHO Finished!
TIMEOUT /T 5

CD /D ..

::Cleanup
CLS
TITLE Cleaning up...

RMDIR /S /Q bin
RMDIR /S /Q mods
RMDIR /S /Q server

ECHO.
ECHO.
ECHO Finished!
TIMEOUT /T 5

::Completed
CLS
ECHO Everything finished!
TIMEOUT /T 5

EXIT