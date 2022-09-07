!/bin/sh
#################################################################################################
##                          FunctionApp-Azure                  ##              Index           ##      
## Simple script to automate the creation of FunctionApp-Azure.## 01.Create Ressource Group.   ##
## the package do most of the hard work,                       ## 02.Create Storage Account.   ##
## so this script can be small-ish and lazy-ish.               ## 03.Creation Function APP.    ##
## V1.0.0 By S.KHALIFA 05/09/2022                              ## 04.Creation FunctionApp Slot.##
## V1.0.2 By C.DE SOUSA MATHIEU 06/09/2022                              ##                              ## 
#################################################################################################
############
## Colors ##
############
BRed='\033[1;31m'         # Red
BGreen='\033[1;32m'       # Green
BYellow='\033[1;33m'      # Yellow
NC='\033[0m'              # No Color
###############################
## 01.Create Ressource Group ##
###############################
echo " Please Name the Group "
read Ans01
echo " Where you would like to create it ?! Ex : westeurope "
read Ans02
az group create -l $Ans02 \
                -n $Ans01 
if [ "$?" -eq "0" ]; then
    echo -e "${BGreen} 01.Create Ressource Group Done, Launching 02.Create Storage Account... ${NC}" 
  else
    echo -e  "%s\n" " ${BRed} Opps, Error 01.Create Ressource Group ${NC}"
  exit 1;
fi
###############################
## 02.Create Storage Account ##
###############################
echo -e " Please name your Storage-account,${BYellow} PS!!:Storage account name must be between 3 and 24 characters in length and use numbers and lower-case letters >
read strgacc
az storage account create -n $strgacc \
                            -g $Ans01 \
                            --sku Standard_LRS 
if [ "$?" -eq "0" ]; then
    echo -e "${BGreen} 02.Create Storage Account Done, Launching 03.Creation Function APP ... ${NC}"
else
    echo -e  "%s\n" " ${BRed} Opps, Error 02.Create Storage Account ${NC}"
  exit 1;
fi
##############################
## 03.Creation Function APP ##
##############################
echo -e " What you wanna run on this function-app ?! ${BYellow} Ex: dotnet-isolated ${NC} ${BRed}!!! RESPECT THE CASE !!!${NC} "
read Ans05
echo -e " What is the function-app OS ?! ${BYellow} Ex: Linux or Windows !! ${NC} ${BRed}!!! RESPECT THE CASE !!!${NC} " 
read Ans06
az functionapp create -c $Ans02 \
                        --os-type $Ans06 \
                        -n $Ans01-fa \
                        -g $Ans01 \
                        -s $strgacc \
                        --runtime $Ans05 
                        if [ "$?" -eq "0" ]; then
    echo -e " ${BGreen} 03.Creation Function APP Done; Launching 04.Creation FunctionApp Slot ... ${NC} "
else
    echo -e  "%s\n" " ${BRed} Opps, Error 04.Creation Function-app Slot ${NC}"
  exit 1;
fi 
##################################
## 04.Creation FunctionApp Slot ##
##################################
#echo -e " What you wanna call your slot ?! ${BYellow} Ex: staging ${NC} ${BRed}!!! RESPECT THE CASE !!!${NC} "
#read Ansslot
az functionapp deployment slot create -n $Ans01-fa -g $Ans01 --slot dev
if [ "$?" -eq "0" ]; then
    echo -e " ${BGreen} 04.Creation FunctionApp Slot Done ${NC} "
else
    echo -e  "%s\n" " ${BRed} Opps, Error 04.Creation Function-app Slot ${NC}"
  exit 1;
fi
#########
## End ##
#########
echo ""
echo " ${BGreen} YAAAAAY, You have Done Great Job ${NC}"
echo ""
