 
[**UWAGA: plik readme w przygotowaniu!**]

## Skrócona instrukcja obsługi
1. Dodaj nowego beneficjenta (organizację otrzymującą dotację);
2. Dodaj koordynatora NFOŚiGW;
3. Dodaj nowy projekt (z wykorzystaniem informacji wprowadzonych w pkt 1 i 2);
4. Dodaj do tego projektu informacje o płatności na rzecz beneficjenta.


##Podstawowe informacje

Niniejszy projekt jest aplikacją związaną z funduszami europejskimi (w tym przypadku: tzw. 
funduszami norweskimi, czyli MF EOG i NMF).
W założeniu ma pomagać w zarządzaniu projektami z poziomu instytucji rządowej, która sprawuje 
nadzór nad całym programem operacyjnym .

W swojej poprzedniej pracy w jednym z ministerstw pracowałem na podobnej bazie informacji, ale 
wykorzystującej program Excel. Praca ta polegała m.in. na jak najwcześniejszej identyfikacji 
projektów zagrożonych, czyli takich, które mogłyby zakończyć się niepowodzeniem (inaczej mówiąc: 
takich, które nie zdążyłyby zrealizować zakresu prac przed końcem umowy). Dokonywaliśmy tego porównując daty zakończenia projektu 
z płatnościami, które zostały przelane na konto beneficjenta. Płatności te były wykonywane w miarę 
postępów prac w projektach, na podstawie przedstawionych faktur (tzn. jeśli beneficjent nie przesyła 
faktur do instytucji udzielającej dotacji, to można podejrzewać, że w projekcie są problemy i istnieje 
ryzyko, że nie zostanie on zrealizowany w zadeklarowanych ramach czasowych – czyli zgodnie z umową).

Ministerstwo, w którym pracowałem, nie było bezpośrednio zaangażowane w realizację projektów ani 
w konkakty z beneficjentami funduszy norweskich. Odpowiadała za to instytucja udzielająca dotacji (NFOŚiGW),
stąd też konieczność umieszczenia w aplikacji informacji o koordynatorach projektów z tej instytucji - 
dla wygody użytkowników aplikacji. 
 
Aplikacja jest bazą danych o projekcie, zawierającą podstawowe informacje o przedsięwzięciu (baza 
teleadresowa wraz z informacjami dot. finansowania przedsięwzięcia oraz innymi kluczowymi dla projektów
informacjami, takimi jak daty ich rozpoczęcia i zakończenia). Do każdego projektu istnieje możliwość 
dodania informacji o płatnościach (dotacjach), które zostały przesłane beneficjentom na podstawie 
zrealizowanych przez nich prac. Aplikacja zlicza te płatności i oblicza, jaką część całkowitej dotacji 
one stanowią.

Aplikacja oblicza również, ile dni pozostało do zakończenia danego projektu oraz wyświetla listę projektów, 
których realizacja zbliża się ku końcowi.

Jest ona przewidziana do użytku dla kilkuosobowej grupy ściśle określonych odbiorców (pracowników 
instytucji), stąt też nie ma konieczności tworzenia funkcjonalności rejestracji nowych użytkowników itp.

Wszelkie dane osobowe użyte w aplikacji są wyłącznie przykładowe i nie reprezentują pracowników 
istniejących instytucji.