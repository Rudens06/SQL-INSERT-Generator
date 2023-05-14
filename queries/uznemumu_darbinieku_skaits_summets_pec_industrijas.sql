-- Uzņēmumu darbinieku skaits sasummēts pēc industrijas

  SELECT uzn.industrija, sum(uzn.darbinieku_skaits) AS kopejais_darbinieku_skaits
    FROM "Uznemumi" AS uzn
GROUP BY uzn.industrija
ORDER BY kopejais_darbinieku_skaits DESC
