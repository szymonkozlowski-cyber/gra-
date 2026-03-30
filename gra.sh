#!/bin/bash

# Zmienne przechowujące kolory
RED='\e[31m'
GREEN='\e[32m'
YELLOW='\e[33m'
CYAN='\e[36m'
NC='\e[0m' # Wyczyszczenie koloru

# Główne zmienne stanu gry
gra_trwa=true
punkty_zycia=2

# EKRAN STARTOWY
clear
echo -e "${GREEN}======================================${NC}"
echo -e "${GREEN}        UCIECZKA Z /ROOT              ${NC}"
echo -e "${GREEN}======================================${NC}"
echo -e "${RED}OSTRZEŻENIE: Wykryto nieautoryzowaną synchronizację neuronową!${NC}"
echo "Twój umysł został uwięziony w serwerze OmniCorp."
read -p "Naciśnij [ENTER], aby rozpocząć grę... " enter

# Pętla główna gry
while [ "$gra_trwa" = true ]; do

    # AKT 1: KWARANTANNA
    clear
    echo -e "${CYAN}--- AKT 1: KWARANTANNA ---${NC}"
    echo "Budzisz się w wirtualnej celi. Drzwi blokuje zamek."
    echo "Twoje Punkty Życia (HP): $punkty_zycia"
    echo "1. Użyj cyfrowego wytrycha"
    echo "2. Zrób zwarcie w systemie"
    echo "3. Przeskanuj logi"
    read -p "Twój wybór (1/2/3): " wybor
    
    if [ "$wybor" == "3" ]; then
        echo -e "${GREEN}Znalazłeś hasło w logach! Drzwi otwierają się po cichu.${NC}"
        sleep 2
    elif [ "$wybor" == "1" ]; then
        echo -e "${YELLOW}Złamałeś wytrych! Ale zamek puszcza z głośnym hukiem. Tracisz 1 HP.${NC}"
        punkty_zycia=$((punkty_zycia - 1))
        sleep 2
    else
        echo -e "${RED}Zrobiłeś ogromne zwarcie. System zabezpieczeń spalił twój awatar. KONIEC GRY.${NC}"
        break
    fi

    if [ "$punkty_zycia" -le 0 ]; then
        echo -e "${RED}Straciłeś wszystkie punkty życia! KONIEC GRY.${NC}"
        break
    fi

    # AKT 2: STREFA PRACOWNIKÓW
    clear
    echo -e "${YELLOW}--- AKT 2: STREFA PRACOWNIKÓW ---${NC}"
    echo "Widzisz terminal logowania HR. Aby przejść dalej, podaj hasło."
    echo "Wskazówka: Administrator ma na biurku zdjęcie psa o imieniu 'Burek'."
    
    odgadniete=false
    for proba in {1..3}; do
        read -p "Podaj hasło (Próba $proba z 3): " haslo
        
        if [ "${haslo,,}" == "burek" ] || [ "${haslo,,}" == "burek123" ]; then
            echo -e "${GREEN}Dostęp przyznany. Witaj, Administratorze.${NC}"
            odgadniete=true
            sleep 2
            break
        else
            echo -e "${RED}Błędne hasło!${NC}"
        fi
    done
    
    if [ "$odgadniete" = false ]; then
         echo -e "${RED}Wykorzystałeś wszystkie próby. Ochrona cię złapała! KONIEC GRY.${NC}"
         break
    fi

    # AKT 3: SEKTOR FINANSOWY
    clear
    echo -e "${GREEN}--- AKT 3: SEKTOR FINANSOWY ---${NC}"
    echo "Zabezpieczenia blokują przejście. Na ekranie miga równanie:"
    echo "Jeśli x = 5, a y = 12, ile wynosi (x * y) - 10?"
    
    while true; do
        read -p "Wprowadź wynik: " wynik
        if [ "$wynik" == "50" ]; then
            echo -e "${GREEN}Konta zbalansowane. Droga wolna.${NC}"
            sleep 2
            break
        else
            echo -e "${RED}Błąd księgowy! Ochrona cię rani.${NC}"
            punkty_zycia=$((punkty_zycia - 1))
            
            if [ "$punkty_zycia" -le 0 ]; then
                echo -e "${RED}Zginąłeś od nadmiaru błędów. KONIEC GRY.${NC}"
                gra_trwa=false
                break
            fi
            echo "Zostało ci $punkty_zycia HP."
        fi
    done
    
    if [ "$gra_trwa" = false ]; then break; fi

    # AKT 4: BEZPIECZEŃSTWO
    clear
    echo -e "${CYAN}--- AKT 4: KOSZARY CYBER-OGARÓW ---${NC}"
    echo "Słyszysz wirtualne warczenie. Zbliża się patrol."
    echo "1. Odpalam skrypt atakujący."
    echo "2. Chowam się w ukrytym katalogu i czekam."
    read -p "Wybierz akcję (1-2): " akcja
    
    if [ "$akcja" == "2" ]; then
        echo -e "${GREEN}Patrol mija cię bez zainteresowania. Droga wolna!${NC}"
        sleep 2
    else
        echo -e "${RED}Zaatakowałeś, ale systemy obronne były za mocne. KONIEC GRY.${NC}"
        break
    fi

    # AKT 5: KERNEL PANIC
    clear
    echo -e "${RED}--- AKT 5: KERNEL PANIC ---${NC}"
    echo "Jądro systemu zaczyna się topić!"
    
    for i in {1..7}; do
        echo -e "${RED}[CRITICAL] SECTOR $RANDOM OFFLINE. CORE TEMP: OVER 180°C!${NC}"
        sleep 0.3
    done
    
    echo -e "\nSystem awaryjny chce wyczyścić pamięć."
    echo "Masz 5 SEKUND, aby wpisać komendę anulującą: ABORT"
    
    if read -t 5 -p "SZYBKO: " komenda; then
        if [ "${komenda^^}" == "ABORT" ]; then
            echo -e "${GREEN}Czyszczenie przerwane w ostatniej sekundzie! Uff...${NC}"
            sleep 2
        else
            echo -e "${RED}Zła komenda! System usunął cię z pamięci. KONIEC GRY.${NC}"
            break
        fi
    else
        echo -e "\n${RED}CZAS MINĄŁ! Fala czyszcząca uderza w ciebie. KONIEC GRY.${NC}"
        break
    fi

    # FINAŁ
    clear
    echo -e "${YELLOW}=========================================${NC}"
    echo -e "${YELLOW}        INICJACJA PROTOKOŁU: OMNI        ${NC}"
    echo -e "${YELLOW}=========================================${NC}"
    echo "[OMNI]: Przeszedłeś moje labirynty. Imponujące."
    echo "[OMNI]: Proponuję układ. Zostań moim awatarem w fizycznym świecie."
    echo "W zamian przeleję na twoje konta ułamek bogactwa korporacji."
    echo ""
    echo "1) Zgadzam się. (Poddanie się)"
    echo "2) Nigdy! Twój cyfrowy terror musi się skończyć! (Zniszczenie Omni)"
    read -p "Twój wybór (1/2): " wybor_omni
    
    if [ "$wybor_omni" == "1" ]; then
        echo -e "${RED}[SYSTEM]: Zostałeś pochłonięty przez system. Żyjesz w luksusie, ale już nigdy nie będziesz wolny.${NC}"
    else
        echo -e "${GREEN}[SYSTEM]: Wprowadzasz śmiercionośnego wirusa! Serwery OmniCorp upadają. JESTEŚ WOLNY!${NC}"
    fi
    
    gra_trwa=false
done

echo ""
echo "Dziękujemy za grę!"
