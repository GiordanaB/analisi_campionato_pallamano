# Analisi del campionato di pallamano Serie A Gold 2025/2026

## Descrizione del progetto

Il progetto ha l'obiettivo di analizzare i dati del campionato italiano maschile di pallamano Serie A Gold 2025/2026 attraverso l'utilizzo di SQL e MySQL.

L'analisi si concentra sulle prestazioni delle squadre, sui risultati delle partite e sulle caratteristiche dei giocatori, con l'obiettivo di individuare tendenze, confronti e informazioni utili a partire dai dati disponibili.

## Obiettivi

- Analizzare la classifica e il rendimento delle squadre.
- Confrontare gol segnati e gol subiti.
- Esaminare il numero di giocatori presenti nelle rose.
- Analizzare l'età dei giocatori.
- Studiare la distribuzione dei ruoli.
- Analizzare la distribuzione delle nazionalità.
- Ricavare indicatori statistici utili per confrontare le squadre.

## Struttura del database

Il database `campionato_pallamano` è composto da tre tabelle principali:

| Tabella | Descrizione |
|---|---|
| `squadre` | Contiene le informazioni sulle 14 squadre del campionato. |
| `giocatori` | Contiene i dati relativi ai 282 giocatori e alla squadra di appartenenza. |
| `partite` | Contiene i dati relativi alle 182 partite, compresi giornata, data, squadre partecipanti e gol segnati. |

Le tabelle sono collegate attraverso chiavi primarie e chiavi esterne, che permettono di associare i giocatori alle squadre e le partite alle squadre partecipanti.

## Struttura del repository

- `campionato_pallamano.sql`: esportazione SQL del database.
- `01_classifica.sql`: classifica del campionato.
- `02_statistiche_squadre.sql`: statistiche offensive e difensive.
- `03_analisi_rose.sql`: dimensione delle rose.
- `04_analisi_eta.sql`: analisi dell'età dei giocatori.
- `05_analisi_ruoli.sql`: distribuzione dei ruoli.
- `06_analisi_nazionalita.sql`: distribuzione delle nazionalità.
- `07_riepilogo_campionato.sql`: riepilogo delle prestazioni.
- `README.md`: documentazione del progetto.

## Come utilizzare il progetto

### Requisiti

- MySQL.
- phpMyAdmin, oppure un altro client compatibile con MySQL.

### 1. Importare il database

1. Aprire phpMyAdmin.
2. Creare un database chiamato `campionato_pallamano`, se non esiste già.
3. Selezionare il database.
4. Aprire la scheda **Importa**.
5. Selezionare il file `campionato_pallamano.sql`.
6. Avviare l'importazione e verificare che le tabelle siano state create correttamente.

Se il file SQL contiene già istruzioni per creare o selezionare il database, seguire le istruzioni presenti nell'esportazione ed evitare di creare strutture duplicate.

### 2. Eseguire le query

Dopo aver importato il database, aprire uno dei file `.sql` con un editor oppure copiarne il contenuto nella scheda **SQL** di phpMyAdmin.

Eseguire le query una alla volta e verificare i risultati restituiti.

Le sette query consentono di analizzare la classifica, le statistiche delle squadre, le rose, l'età dei giocatori, i ruoli, le nazionalità e le prestazioni complessive del campionato.

## Analisi SQL realizzate

### 1. Classifica del campionato

Calcolo delle partite giocate, vittorie, pareggi, sconfitte, gol fatti, gol subiti e punti ottenuti da ciascuna squadra.

### 2. Statistiche offensive e difensive

Calcolo dei gol segnati e subiti da ogni squadra e delle rispettive medie per partita.

### 3. Dimensione delle rose

Conteggio dei giocatori appartenenti a ciascuna squadra e confronto tra le dimensioni delle rose.

### 4. Analisi dell'età

Calcolo dell'età media approssimativa dei giocatori e individuazione degli anni di nascita più recente e più lontano per ciascuna rosa.

### 5. Distribuzione dei ruoli

Conteggio dei giocatori per ruolo all'interno di ogni squadra.

### 6. Analisi delle nazionalità

Conteggio dei giocatori per nazionalità e calcolo della percentuale sul totale.

### 7. Riepilogo delle prestazioni

Confronto complessivo tra le squadre attraverso vittorie, pareggi, sconfitte, gol fatti e gol subiti.

## Principali risultati

Dalle analisi effettuate emergono alcuni risultati interessanti:

- **Cassano Magnago** ha ottenuto 24 vittorie su 26 partite, con 804 gol fatti e 653 subiti.
- **Sassari** ha realizzato il maggior numero di gol, pari a 848.
- **Brixen** ha subito il maggior numero di gol, pari a 851.
- **Eppan** ha ottenuto 3 vittorie e 23 sconfitte.
- I giocatori registrati con il codice di nazionalità `ITA` sono 212 su 282, pari al 75,2% del totale.
- Le rose delle squadre presentano differenze sia nel numero di giocatori sia nella distribuzione di età e ruoli.

## Strumenti utilizzati

- **MySQL** – gestione del database ed esecuzione delle query.
- **phpMyAdmin** – consultazione delle tabelle ed esecuzione delle interrogazioni SQL.
- **Visual Studio Code** – scrittura e organizzazione dei file SQL.
- **GitHub** – archiviazione e condivisione del progetto.

## Competenze dimostrate

- Interrogazione e analisi di database relazionali.
- Utilizzo di `SELECT`, `JOIN`, `GROUP BY` e `ORDER BY`.
- Utilizzo di funzioni aggregate come `COUNT`, `SUM`, `AVG`, `MIN` e `MAX`.
- Utilizzo di espressioni condizionali con `CASE`.
- Calcolo di percentuali e indicatori statistici.
- Interpretazione dei risultati e individuazione di informazioni rilevanti.
- Documentazione e organizzazione di un progetto SQL.

## Note metodologiche

Le analisi sono basate sui dati presenti nel database del progetto. L'età dei giocatori è stimata sottraendo l'anno di nascita dal 2025 e non tiene conto del giorno e del mese di nascita.

I risultati descrivono i dati analizzati e non costituiscono, da soli, una verifica indipendente della completezza o dell'accuratezza delle statistiche ufficiali del campionato.
