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
SET m_names[0]=ae2_stuff
Set m_links[0]=https://media.forgecdn.net/files/2491/32/ae2stuff-0.7.0.4-mc1.12.2.jar
::1
SET m_names[1]=aether_the
SET m_links[1]=https://media.forgecdn.net/files/2698/950/aether_legacy-1.12.2-v1.4.4.jar
::2
SET m_names[2]=aether_continuation
SET m_links[2]=https://media.forgecdn.net/files/2701/616/aether_continuation-1.12.2-v1.2.3.jar
::3
SET m_names[3]=appleskin
SET m_links[3]=https://media.forgecdn.net/files/2496/585/AppleSkin-mc1.12-1.0.9.jar
::4
SET m_names[4]=applied_energistics_2
SET m_links[4]=https://media.forgecdn.net/files/2652/453/appliedenergistics2-rv6-stable-6.jar
::5
SET m_names[5]=avaritia_1.1x
SET m_links[5]=https://media.forgecdn.net/files/2660/801/Avaritia-1.12.2-3.3.0.33-universal.jar
::6
SET m_names[6]=betterfps
SET m_links[6]=https://media.forgecdn.net/files/2483/393/BetterFps-1.4.8.jar
::7
SET m_names[7]=bibliocraft
SET m_links[7]=https://media.forgecdn.net/files/2574/880/BiblioCraft%5bv2.4.5%5d%5bMC1.12.2%5d.jar
::8
SET m_names[8]=biomes_o_plenty
SET m_links[8]=https://media.forgecdn.net/files/2711/162/BiomesOPlenty-1.12.2-7.0.1.2439-universal.jar
::9
SET m_names[9]=block_drops
SET m_links[9]=https://media.forgecdn.net/files/2509/46/blockdrops-1.12.2-1.4.0.jar
::10
SET m_names[10]=blockcraftery
SET m_links[10]=https://media.forgecdn.net/files/2716/712/blockcraftery-1.12.2-1.3.1.jar
::11
SET m_names[11]=bone_appetit
SET m_links[11]=https://media.forgecdn.net/files/2689/172/BoneAppetit-1.0.0.4.jar
::12
SET m_names[12]=charset_immersion
SET m_links[12]=https://media.forgecdn.net/files/2695/681/Charset-Immersion-0.5.5.7.jar
::13
SET m_names[13]=chisel
SET m_links[13]=https://media.forgecdn.net/files/2619/468/Chisel-MC1.12.2-0.2.1.35.jar
::14
SET m_names[14]=chisels_and_bits
SET m_links[14]=https://media.forgecdn.net/files/2720/655/chiselsandbits-14.33.jar
::15
SET m_names[15]=complexlogic
SET m_links[15]=https://media.forgecdn.net/files/2633/439/complex-logic-1.4.2-master.jar
::16
SET m_names[16]=constructs_armory
SEt m_links[16]=https://media.forgecdn.net/files/2718/520/conarm-1.12.2-1.2.4.jar
::17
SET m_names[17]=crafttweaker2
SET m_links[17]=https://media.forgecdn.net/files/2724/129/CraftTweaker2-1.12-4.1.19.jar
::18
SET m_names[18]=ender_io_ae2_conduits
SET m_links[18]=https://media.forgecdn.net/files/2732/696/EnderIO-conduits-appliedenergistics-1.12.2-5.0.46.jar
::19
SET m_names[19]=ender_io_base
SET m_links[19]=https://media.forgecdn.net/files/2732/693/EnderIO-base-1.12.2-5.0.46.jar
::20
SET m_names[20]=ender_io_conduits
SET m_links[20]=https://media.forgecdn.net/files/2732/695/EnderIO-conduits-1.12.2-5.0.46.jar
::21
SET m_names[21]=ender_io_machines
SET m_links[21]=https://media.forgecdn.net/files/2732/694/EnderIO-machines-1.12.2-5.0.46.jar
::22
SET m_names[22]=ender_io_tic
SET m_links[22]=https://media.forgecdn.net/files/2732/700/EnderIO-integration-tic-1.12.2-5.0.46.jar
::23
SET m_names[23]=ender_io_zoo
SET m_links[23]=https://media.forgecdn.net/files/2732/701/EnderIO-zoo-1.12.2-5.0.46.jar
::24
SET m_names[24]=ender_storage_1.8.plus
SET m_links[24]=https://media.forgecdn.net/files/2594/243/EnderStorage-1.12.2-2.4.5.135-universal.jar
::25
SET m_names[25]=ender_tweaker
SET m_links[25]=https://media.forgecdn.net/files/2718/576/EnderTweaker-1.12.2-1.1.7.jar
::26
SET m_names[26]=equaldragons
SET m_links[26]=https://media.forgecdn.net/files/2516/748/EqualDragons-1.1.jar
::27
SET m_names[27]=extra_utilities_2
SET m_links[27]=https://media.forgecdn.net/files/2678/374/extrautils2-1.12-1.9.9.jar
::28
SET m_names[28]=extraplanets
SET m_links[28]=https://media.forgecdn.net/files/2723/471/ExtraPlanets-1.12.2-0.5.3.jar
::29
SET m_names[29]=extreme_reactors
SET m_links[29]=https://media.forgecdn.net/files/2722/271/ExtremeReactors-1.12.2-0.4.5.67.jar
::30
SET m_names[30]=fancy_lamps
SET m_links[30]=https://media.forgecdn.net/files/2669/871/fancylamps-1.1.0.jar
::31
SET m_names[31]=fast_leaf_decay
SET m_links[31]=https://media.forgecdn.net/files/2463/272/FastLeafDecay-v14.jar
::32
SET m_names[32]=flux_networks
SET m_links[32]=https://media.forgecdn.net/files/2645/165/fluxnetworks-1.12.2-3.0.19-21.jar
::33
SET m_names[33]=forestry
SET m_links[33]=https://media.forgecdn.net/files/2684/780/forestry_1.12.2-5.8.2.387.jar
::34
SET m_names[34]=ftb_quests
SET m_links[34]=https://media.forgecdn.net/files/2733/288/FTBQuests-1.7.2.178.jar
::35
SET m_names[35]=ftb_utilities
SET m_links[35]=https://media.forgecdn.net/files/2733/288/FTBQuests-1.7.2.178.jar
::36
SET m_names[36]=galacticraft_core
SET m_links[36]=https://ci.micdoodle8.com/job/Galacticraft-1.12/211/artifact/Forge/build/libs/GalacticraftCore-1.12.2-4.0.2.211.jar
::37
SET m_names[37]=galacticraft_planets
SET m_links[37]=https://ci.micdoodle8.com/job/Galacticraft-1.12/211/artifact/Forge/build/libs/Galacticraft-Planets-1.12.2-4.0.2.211.jar
::38
SET m_names[38]=galaxy_space
SET m_links[38]=https://media.forgecdn.net/files/2710/940/GalaxySpace-1.12.2-2.0.8.jar
::39
SET m_names[39]=hwyla
SET m_links[39]=https://media.forgecdn.net/files/2568/751/Hwyla-1.8.26-B41_1.12.2.jar
::40
SET m_names[40]=industrial_foregoing
SET m_links[40]=https://media.forgecdn.net/files/2699/878/industrialforegoing-1.12.2-1.12.12-236.jar
::41
SET m_names[41]=infinitefluids
SET m_links[41]=https://media.forgecdn.net/files/2484/246/infinitefluids-1.11-1.2.0.jar
::42
SET m_names[42]=instantunify
SET m_links[42]=https://media.forgecdn.net/files/2578/325/instantunify-1.12.2-1.1.2.jar
::43
SET m_names[43]=integration_foregoing
SET m_links[43]=https://media.forgecdn.net/files/2676/458/IntegrationForegoing-1.12.2-1.9.jar
::44
SET m_names[44]=inventory_tweaks
SET m_links[44]=https://media.forgecdn.net/files/2482/481/InventoryTweaks-1.63.jar
::45
SET m_names[45]=iron_chests
SET m_links[45]=https://media.forgecdn.net/files/2723/143/ironchest-1.12.2-7.0.69.845.jar
::46
SET m_names[46]=its_the_little_things
SET m_links[46]=https://media.forgecdn.net/files/2432/201/itlt-1.12-1.0.0.jar
::47
SET m_names[47]=just_enough_calculation
SET m_links[47]=https://media.forgecdn.net/files/2698/317/JustEnoughCalculation-1.12.2-3.1.4.jar
::48
SET m_names[48]=just_enough_energistics
SET m_links[48]=https://media.forgecdn.net/files/2726/897/JustEnoughEnergistics-1.12.2-1.0.7.jar
::49
SET m_names[49]=just_enough_harvestcraft
SET m_links[49]=https://media.forgecdn.net/files/2723/786/jehc-1.12.2-1.6.4.jar
::50
SET m_names[50]=just_enough_items
SET m_links[50]=https://media.forgecdn.net/files/2728/940/jei_1.12.2-4.15.0.283.jar
::51
SET m_names[51]=just_enough_pattern_banners
SET m_links[51]=https://media.forgecdn.net/files/2455/920/jepb-1.12-1.2.1.jar
::52
SET m_names[52]=just_enough_resources
SET m_links[52]=https://media.forgecdn.net/files/2728/585/JustEnoughResources-1.12.2-0.9.2.60.jar
::53
SET m_names[53]=just_enough_throwing_in_fluids
SET m_links[53]=https://media.forgecdn.net/files/2733/185/jetif-1.12.2-1.5.0.jar
::54
SET m_names[54]=metamorph
SET m_links[54]=https://media.forgecdn.net/files/2713/981/metamorph-1.1.8-1.12.2.jar
::55
SET m_names[55]=modtweaker
SET m_links[55]=https://media.forgecdn.net/files/2693/544/modtweaker-4.0.17.jar
::56
SET m_names[56]=more_planets
SET m_links[56]=https://media.forgecdn.net/files/2684/464/More-Planets-1.12.2-2.1.5-GC190.jar
::57
SET m_names[57]=more_planets_extras
SET m_links[57]=https://media.forgecdn.net/files/2524/169/MorePlanetsExtras-1.12.2-1.0.jar
::58
SET m_names[58]=more_plates
SET m_links[58]=https://media.forgecdn.net/files/2668/113/moreplates-1.12.2-5.5.2.jar
::59
SET m_names[59]=morpheus
SET m_links[59]=https://media.forgecdn.net/files/2664/449/Morpheus-1.12.2-3.5.106.jar
::60
SET m_names[60]=mrcrayfishs_furniture_mod
SET m_links[60]=https://media.forgecdn.net/files/2715/314/furniture-6.3.0-1.12.2.jar
::61
SET m_names[61]=openblocks
SET m_links[61]=https://media.forgecdn.net/files/2715/314/furniture-6.3.0-1.12.2.jar
::62
SET m_names[62]=planet_progression
SET m_links[62]=https://media.forgecdn.net/files/2702/290/PlanetProgression-1.12.2-0.3.5.jar
::63
SET m_names[63]=pams_harvestcraft
SET m_links[63]=https://media.forgecdn.net/files/2717/443/Pam%27s+HarvestCraft+1.12.2zd+Surprise+for+Yogcast.jar
::64
SET m_names[64]=projecte
SET m_links[64]=https://media.forgecdn.net/files/2702/991/ProjectE-1.12.2-PE1.4.1.jar
::65
SET m_names[65]=randompatches
SET m_links[65]=https://media.forgecdn.net/files/2730/511/randompatches-1.12.2-1.16.3.1.jar
::66
SET m_names[66]=rftools
SET m_links[66]=https://media.forgecdn.net/files/2707/388/rftools-1.12-7.71.jar
::67
SET m_names[67]=simplelogic_gates
SET m_links[67]=https://media.forgecdn.net/files/2695/680/SimpleLogic-Gates-0.5.5.7.jar
::68
SET m_names[68]=simplelogic_wires
SET m_links[68]=https://media.forgecdn.net/files/2695/683/SimpleLogic-Wires-0.5.5.7.jar
::69
SET m_names[69]=simple_portals
SET m_links[69]=https://media.forgecdn.net/files/2723/499/simpleportals-1.12.2-1.5.1.1.jar
::70
SET m_names[70]=simply_jetpacks_2
SET m_links[70]=https://media.forgecdn.net/files/2709/952/SimplyJetpacks2-1.12.2-2.2.12.65.jar
::71
SET m_names[71]=solar_flux_rebors
SET m_links[71]=https://media.forgecdn.net/files/2659/598/SolarFluxReborn_1.12.2-4.32r.jar
::72
SET m_names[72]=storage_drawers
SET m_links[72]=https://media.forgecdn.net/files/2642/386/StorageDrawers-1.12.2-5.3.8.jar
::73
SET m_names[73]=storage_drawers_extras
SET m_links[73]=https://media.forgecdn.net/files/2443/623/StorageDrawersExtras-1.12-3.1.0.jar
::74
SET m_names[74]=thermal_dynamics
SET m_links[74]=https://media.forgecdn.net/files/2716/138/ThermalDynamics-1.12.2-2.5.5.21-universal.jar
::75
SET m_names[75]=thermal_expansion
SET m_links[75]=https://media.forgecdn.net/files/2715/789/ThermalExpansion-1.12.2-5.5.4.43-universal.jar
::76
SET m_names[76]=thermal_foundation
SET m_links[76]=https://media.forgecdn.net/files/2715/788/ThermalFoundation-1.12.2-2.6.3.27-universal.jar
::77
SET m_names[77]=tinkers_aether
SET m_links[77]=https://media.forgecdn.net/files/2699/34/tinkersaether-1.3.0.jar
::78
SET m_names[78]=tinkers_construct
SET m_links[78]=https://media.forgecdn.net/files/2731/543/TConstruct-1.12.2-2.12.0.157.jar
::79
SET m_names[79]=tinkers_jei
SET m_links[79]=https://media.forgecdn.net/files/2701/203/tinkersjei-1.2.jar
::80
SET m_names[80]=tinkers_tool_leveling
SET m_links[80]=https://media.forgecdn.net/files/2630/860/TinkerToolLeveling-1.12.2-1.1.0.jar
::81
SET m_names[81]=unidict
SET m_links[81]=https://media.forgecdn.net/files/2652/588/UniDict-1.12.2-2.9.2.jar
::82
SET m_names[82]=wawla-what_are_we_looking_at
SET m_links[82]=https://media.forgecdn.net/files/2707/185/Wawla-1.12.2-2.5.273.jar
::83
SET m_names[83]=wireless_crafting_terminal
SET m_links[83]=https://media.forgecdn.net/files/2725/872/WirelessCraftingTerminal-1.12.2-3.12.93.jar
::84
SET m_names[84]=xaeros_minimap_fair-play_edition
SET m_links[84]=https://media.forgecdn.net/files/2731/342/Xaeros_Minimap_FP1.17.3_Forge_1.12.jar
::85
SET m_names[85]=xencraft
SET m_links[85]=https://media.forgecdn.net/files/2704/574/XenCraft-1.0.0.4.jar

for /l %%i in (0,1,85) do (
  CALL BITSADMIN /TRANSFER %%m_names[%%i]%% /DOWNLOAD /PRIORITY NORMAL %%m_links[%%i]%% %CD%\%%m_names[%%i]%%.jar
)

ECHO.
ECHO.
ECHO Finished!
TIMEOUT /T 5

::GetApisLibrariesCores
CLS
TITLE Getting apis/libraries/cores...

::0
SET names[0]=ae2_wireless_terminal_library
SET links[0]=https://media.forgecdn.net/files/2726/967/AE2WTLib-1.12.2-1.0.30.jar
::1
SET names[1]=asmodeuscore
SET links[1]=https://media.forgecdn.net/files/2710/931/AsmodeusCore-1.12.2-0.0.8.jar
::2
SET names[2]=bdlib
SET links[2]=https://media.forgecdn.net/files/2518/31/bdlib-1.14.3.12-mc1.12.2.jar
::3
SET names[3]=chameleon
SET links[3]=https://media.forgecdn.net/files/2450/900/Chameleon-1.12-4.1.3.jar
::4
SET names[4]=charset_lib
SET links[4]=https://media.forgecdn.net/files/2695/684/Charset-Lib-0.5.5.7.jar
::5
SET names[5]=codechicken_lib_1.8.plus
SET links[5]=https://media.forgecdn.net/files/2618/630/CodeChickenLib-1.12.2-3.2.2.353-universal.jar
::6
SET names[6]=cofh_core
SET links[6]=https://media.forgecdn.net/files/2716/100/CoFHCore-1.12.2-4.6.3.27-universal.jar
::7
SET names[7]=cofh_world
SET links[7]=https://media.forgecdn.net/files/2715/784/CoFHWorld-1.12.2-1.3.1.7-universal.jar
::8
SET names[8]=connectedtexturesmod
SET links[8]=https://media.forgecdn.net/files/2642/375/CTM-MC1.12.2-0.3.3.22.jar
::9
SET names[9]=ender_core
SET links[9]=https://media.forgecdn.net/files/2732/682/EnderCore-1.12.2-0.5.59.jar
::10
SET names[10]=ftb_library
SEt links[10]=https://media.forgecdn.net/files/2732/162/FTBLib-5.4.3.124.jar
::11
SET names[11]=item_filters
SET links[11]=https://media.forgecdn.net/files/2699/980/ItemFilters-1.0.3.12.jar
::12
SET names[12]=mantle
SET links[12]=https://media.forgecdn.net/files/2713/386/Mantle-1.12-1.3.3.55.jar
::13
SET names[13]=mchorses_mclib
SET links[13]=https://media.forgecdn.net/files/2718/552/mclib-1.0.2-1.12.2.jar
::14
SET names[14]=mcjtylib
SET links[14]=https://media.forgecdn.net/files/2714/365/mcjtylib-1.12-3.5.3.jar
::15
SET names[15]=mcmultipart
SET links[15]=https://media.forgecdn.net/files/2615/930/MCMultiPart-2.5.3.jar
::16
SET names[16]=micdoodlecore
SET links[16]=https://ci.micdoodle8.com/job/Galacticraft-1.12/211/artifact/Forge/build/libs/MicdoodleCore-1.12.2-4.0.2.211.jar
::17
SET names[17]=more_libs
SET links[17]=https://media.forgecdn.net/files/2669/468/morelibs-1.12.2-1.2.2.jar
::18
SET names[18]=mjrlegends_lib
SET links[18]=https://media.forgecdn.net/files/2658/272/MJRLegendsLib-1.12.2-1.1.8.jar
::19
SET names[19]=mtlib
SET links[19]=https://media.forgecdn.net/files/2684/561/MTLib-3.0.6.jar
::20
SET names[20]=mysticallib
SET links[20]=https://media.forgecdn.net/files/2733/111/mysticallib-1.12.2-1.3.0.jar
::21
SET names[21]=openmodslib
SET links[21]=https://media.forgecdn.net/files/2699/55/OpenModsLib-1.12.2-0.12.2.jar
::22
SET names[22]=p455w0rds_library
SET links[22]=https://media.forgecdn.net/files/2726/877/p455w0rdslib-1.12.2-2.2.151.jar
::23
SET names[23]=redstone_flux
SET links[23]=https://media.forgecdn.net/files/2623/90/RedstoneFlux-1.12-2.1.0.6-universal.jar
::24
SET names[24]=shadowfacts_forgelin
SET links[24]=https://media.forgecdn.net/files/2727/70/Forgelin-1.8.3.jar
::25
SET names[25]=sonar_core
SET links[25]=https://media.forgecdn.net/files/2645/156/sonarcore-1.12.2-5.0.19-20.jar
::26
SET names[26]=stevekungs_lib
SET links[26]=https://media.forgecdn.net/files/2639/412/SteveKunG%27s-Lib-1.12.2-1.0.5.jar
::27
SET names[27]=tesla_core_lib
SET links[27]=https://media.forgecdn.net/files/2580/52/tesla-core-lib-1.12.2-1.0.15.jar
::28
SET names[28]=wanion_lib
SET links[28]=https://media.forgecdn.net/files/2651/482/WanionLib-1.12.2-2.2.jar
::29
SET names[29]=zerocore
SET links[29]=https://media.forgecdn.net/files/2670/570/zerocore-1.12.2-0.1.2.8.jar

for /l %%i in (0,1,29) do (
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