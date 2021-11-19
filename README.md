# Introduzione

Questo progetto prevede la realizzazione di una applicazione che funge da API ovvero da server per permettere a un utilizzatore di accedere ad alcuni dati salvati su un database.

L'applicazione utilizza [Node](https://nodejs.org/en/) che è un sistema che permette di scrivere codice Javascript che viene "capito" da un computer ed eseguito su un server.

# Preparazione

## Installare Docker

Docker è un sistema che ci permette di avere un database sul nostro PC, nulla di cui preoccuparsi, basterà installarlo e il resto è già incluso nel progetto.

Per installarlo clicca [qui](https://www.docker.com/get-started) e segui le istruzioni.

## Installare Node

Per installare Node è utile avere un sistema che permetta di scegliere quale versione installare.
A questo scopo usiamo [nvm](https://github.com/coreybutler/nvm-windows).

## NVM

Una volta installato `nvm` basterà aprire un terminale e lanciare `nvm install 16`, questo comando farà installare Node nella versione 16 sul pc.
Per verificare di aver installato correttamente Node basta lanciare `node -v` e questo dovrebbe stampare la versione attualmente installata.

## Clonare il repository

Adesso è necessario "copiare" il codice della nostra applicazione in una cartella a nostra scelta (per esempio `test-api`).
Per farlo è sufficiente eseguire il seguente comando sul terminale. Servirà inserire username e password per [GitHub](https://github.com).

```bash
git clone https://github.com/alemagio/test-api.git test-api
```

Dopo di che dovremmo avere una cartella chiamata `test-api` che contiene un po' di file, tra cui questo file di istruzioni.

## Installare le dipendenze

Quando si lavora su progetti non proprio piccolissimi è molto utile appoggiarsi a librerie (insieme di programmi e funzioni che sono scritte da altri) per non dover ogni volta riscrivere alcune parti basilari da capo.

Queste librerie vanno installate e per farlo dobbiamo entrare nella cartella del nostro progetto

```bash
cd test-api
```

e lanciare il seguente comando

```bash
npm install
```

dopo qualche secondo il sistema dovrebbe concludere e nella cartella del nostro progetto dovrebbe essere presente un'altra cartella chiamata `node_modules`.

# Utilizzo

```bash
nvm use
```

```bash
npm run dev
```