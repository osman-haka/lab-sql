CREATE TABLE libro (
  id_libro VARCHAR(50) PRIMARY KEY,
  isbs VARCHAR(50),
  titolo VARCHAR(50),
  casa_editrice VARCHAR(50),
  autori VARCHAR(50),
  pagine INT,
  tipologia VARCHAR(50),
  edizione INT,
  prezzo INT,
  anno DATE
);

CREATE TABLE autore (
  nome VARCHAR(50),
  cognome VARCHAR(50),
  data_nascita DATE,
  sesso VARCHAR(50),
  nazionalita VARCHAR(50),
  sesso VARCHAR(50),
);

CREATE TABLE case_editrici(
  nome VARCHAR(50),
  nazione VARCHAR(50),
  anno_fondazione DATE,
  pubblica VARCHAR(50),
  privata VARCHAR(50),
);

