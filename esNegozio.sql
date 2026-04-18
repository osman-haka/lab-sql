-- Estrazione di tutti i dati relativi ai modelli dei prodotti a catalogo. 
select * from 4CTL_modelli_prodotto;

-- Visualizzazione di nome e prezzo di tutti i modelli a catalogo.
select nome, prezzo_listino
from 4CTL_modelli_prodotto;

-- Ricerca di tutti i modelli con prezzo di listino inferiore a 600€.
select cod_modello
from 4CTL_modelli_prodotto
where prezzo_listino <= '600'

-- Selezione dei modelli che contengono la stringa ’Samsung’ nel nome.
select nome
from 4CTL_modelli_prodotto
where nome LIKE '%Samsung%';

-- Elenco dei clienti il cui nome termina con la lettera ’a’.
select nome
from 4CTL_clienti
where nome LIKE '%a';

-- Elenco dei modelli ordinati dal prezzo più elevato al più basso.
select nome, prezzo_listino
from 4CTL_modelli_prodotto
ORDER BY prezzo_listino DESC;

-- Visualizzazione delle categorie di prodotti disponibili senza ripetizioni.
select DISTINCT categoria 
from 4CTL_modelli_prodotto
  
-- Estrazione dei primi 10 prodotti arrivati in magazzino in ordine cronologico.
select cod_seriale, data_arrivo
from 4CTL_prodotti
ORDER BY data_arrivo ASC
limit 10

-- Elenco dei clienti ordinati alfabeticamente per cognome e successivamente per nome.
select * from 4CTL_clienti
ORDER BY cognome, nome ASC

-- Ricerca di tutti gli ordini effettuati nel mese di giugno 2024.
select * from 4CTL_ordini
WHERE data_ordine LIKE '%-06%'

-- Elenco dei codici seriali in magazzino associati al nome del relativo modello.
select * from 4CTL_modelli_prodotto mp, 4CTL_prodotti prod
where mp.id_modello = prod.id_modello

-- Ricostruzione dello scontrino: ID ordine, cognome cliente, nome modello e seriale venduto.
select o.id_ordine, c.cognome, mp.nome, p.cod_seriale
from 4CTL_ordini o, 4CTL_clienti c, 4CTL_modelli_prodotto mp, 4CTL_prodotti p, 4CTL_dettagli_ordine d
where 1=1 AND o.id_ordine=d.id_ordine AND d.id_prodotto=p.id_prodotto AND o.id_cliente = c.id_cliente AND mp.id_modello = p.id_modello


