#!/bin/bash
wordlistsd(){
echo -e "\n${BK}DOWNLOADING ALL THE WORDLISTS${RT}"
mkdir -p tools/wordlists
cd tools/wordlists
    
echo -e "\n- Downloading subdomains wordlists"
 wget -q https://raw.githubusercontent.com/danielmiessler/SecLists/master/Discovery/DNS/deepmagic.com-prefixes-top50000.txt -O deepmagic-top50000.txt
if [ -s /root/tools/wordlists/deepmagic-top50000.txt ]; then
    echo -e "${GR}SUCCESS${RT}"
else
    echo -e "${YW}FAILED${RT}"
fi
    
echo -e "\n- Downloading resolvers wordlists"
wget -q https://raw.githubusercontent.com/janmasarik/resolvers/master/resolvers.txt -O resolvers.txt
if [ -s /root/tools/wordlists/resolvers.txt ]; then
    echo -e "${GR}SUCCESS${RT}"
else
    echo -e "${YW}FAILED${RT}"
fi
    
echo -e "\n- Downloading Subjack wordlists"
wget -q https://raw.githubusercontent.com/Bo0oM/fuzz.txt/master/fuzz.txt -O fuzz.txt
if [ -s /root/tools/wordlists/fuzz.txt ]; then
    echo -e "${GR}SUCCESS${RT}"
else
    echo -e "${YW}FAILED${RT}"
fi

echo -e "\n- Downloading LFI wordlist"
wget -q https://raw.githubusercontent.com/emadshanab/LFI-Payload-List/master/LFI%20payloads.txt -O LFI-payload.txt
if [ -s /root/tools/wordlists/LFI-payload.txt ]; then
    echo -e "${GR}SUCCESS${RT}"
else
    echo -e "${YW}FAILED${RT}"
fi 

echo -e "\n- Downloading Open Redirect wordlists"
wget -q https://raw.githubusercontent.com/emadshanab/wordlists-2/main/Open%20Redirect%20Payload%20List -O openredirect-payload.txt
if [ -s /root/tools/wordlists/openredirect-payload.txt ]; then
    echo -e "${GR}SUCCESS${RT}"
else
    echo -e "${YW}FAILED${RT}"
fi     

echo -e "\n- Downloading Subjack wordlists"
wget -q https://raw.githubusercontent.com/haccer/subjack/master/fingerprints.json -O /root/tools/fingerprints.json
if [ -s /root/tools/fingerprints.json ]; then
    echo -e "${GR}SUCCESS${RT}"
else
    echo -e "${YW}FAILED${RT}"
fi
}


wordlistsd