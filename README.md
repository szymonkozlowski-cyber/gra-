# 💾 Ucieczka z /root - Gra Tekstowa w Bashu

Witaj w projekcie grupowym naszej gry terminalowej! Jest to tekstowa przygodówka w klimacie cyberpunk/IT, w całości napisana w skryptach powłoki Bash. 

Projekt tworzy **7 osób**, a każdy twórca odpowiada za napisanie **minimum 5 poziomów**.

## 🚀 Jak zagrać?

Aby uruchomić grę w środowisku Linux/macOS (lub WSL na Windowsie), pobierz wszystkie pliki do jednego folderu, a następnie otwórz terminal i wpisz:

1. Nadaj uprawnienia do wykonywania wszystkim skryptom:
   ```bash
   chmod +x *.sh
   📋 Przydział Aktów i Poziomów
💻 Daniel: Akt 1 - "Przebudzenie i Kwarantanna" (start.sh, p1.sh - p5.sh)
Twój cel: Wprowadzić gracza w klimat i dać mu pierwsze wyzwania.

p1: Wybór metody ucieczki z celi (wytrych, zwarcie, logi).

p2: Spotkanie z pierwszym, słabym antywirusem (zagadka z PIN-em).

p3: Korytarz śmieciowych danych (szukanie pliku w wirtualnym śmietniku).

p4: Przywracanie zasilania (odpowiednia sekwencja cyfr).

p5 (Miniboss): Pierwszy Firewall. Trzy proste pytania; błąd cofa na start poziomu.

🕵️‍♂️ Kamil: Akt 2 - "Strefa Pracowników" (p6.sh - p10.sh)
Twój cel: Pokazać korporacyjną stronę serwera i zmusić gracza do oszustw.

p6: Phishing. Gracz musi podszyć się pod pracownika HR i ukraść hasło.

p7: Przeglądanie maili, by wyłapać kod do zamkniętych drzwi.

p8: Test psychologiczny. Trzeba odpowiadać jak bezduszny "korpo-szczur", żeby ominąć alarm.

p9: Omijanie kamer monitoringu (szybki wybór ścieżki: lewo, prawo, prosto).

p10: Kradzież tokena sesji i ucieczka windą danych.

🏦 Igor: Akt 3 - "Sektor Finansowy" (p11.sh - p15.sh)
Twój cel: Lasery, banki danych i zagadki logiczne.

p11: Włamanie do szyfrowanych portfeli OmniCorp.

p12: Zagadka matematyczna w księgowości (balansowanie kont).

p13: Fałszywy alarm! Decyzja pod presją czasu: ucieczka w panice czy spokojne wgranie maskowania.

p14: Pranie cyfrowych brudów (tunelowanie kont).

p15 (Miniboss): Program "Audytor", który zadaje trudne zagadki logiczne.

📼 Vlad: Akt 4 - "Archiwum Danych (Deep Storage)" (p16.sh - p20.sh)
Twój cel: Zmiana klimatu na retro (systemy z lat 80., opisy powolnego ładowania).

p16: Spadek do starych, zapomnianych sektorów serwera.

p17: Naprawa dysku magnetycznego (wpisywanie odpowiednich liter pod presją).

p18: Rozmowa z zapomnianym wirusem "Robakiem" (można go zabić lub wyciągnąć informacje).

p19: Błądzenie w ciemności z użyciem "sonaru poleceń".

p20: Spotkanie z "Duchem w maszynie" (starszą AI), rozwiązanie jego zagadki słownej.

🛡️ Markian: Akt 5 - "Bezpieczeństwo (SecOps)" (p21.sh - p25.sh)
Twój cel: Czysta akcja i włamywanie się do systemów fizycznych.

p21: Skradanie się przez koszary cyber-ogarów (programów tropiących).

p22: Pościg! Rzucenie fałszywych danych psu na pożarcie, żeby uciec.

p23: Podrabianie cyfrowego odcisku palca Administratora.

p24: Hackowanie fizycznego systemu chłodzenia serwerowni w prawdziwym świecie.

p25 (Miniboss): Walka z Wartownikiem (wybieranie opcji: Atak, Obrona, Leczenie).

🔥 Bartosz: Akt 6 - "Jądro Systemu (Kernel)" (p26.sh - p30.sh)
Twój cel: Zbudować napięcie. Serwer się sypie po akcjach Markiana.

p26: Wejście do Kernela. Wszędzie sypią się błędy o przegrzaniu (efekt p24).

p27: Omijanie niestabilnych procesów i fałszywych błędów.

p28: Dekompilacja bramy głównej (gracz musi użyć logiki).

p29: Odliczanie do samounicestwienia (protokół czyszczenia) – panika!

p30: Złamanie ostatniej zapory przed najważniejszym folderem.

👑 Szymon: Akt 7 - "Wirtualny Panteon i Finał" (p31.sh - p35.sh)
Cel: Epickie zakończenie historii.

p31: Wejście do /root i spotkanie z Super-AI "Omni".

p32: Omni proponuje układ (bogactwo w zamian za służbę). Wybór moralny.

p33: Ostateczna bitwa na kody (mechanika w stylu papier-kamień-nożyce).

p34: Omni pokonany. Wybór zakończenia: kradzież, zniszczenie, czy przejęcie władzy nad firmą.

p35 (Epilog): Opis zakończenia na podstawie wyboru z p34 i napis "Koniec gry". Skrypt kończy działanie poleceniem exit 0.
