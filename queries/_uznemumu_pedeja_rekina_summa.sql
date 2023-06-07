-- Uzņēmumu pēdējā izrakstītā rēķina summas

SELECT uzn.id,
       uzn.nosaukums,
       (SELECT rek.summa
          FROM "Rekini" AS rek
         WHERE rek.uznemuma_id = uzn.id
      ORDER BY rek.izrakstisanas_datums DESC
         LIMIT 1
       ) AS pedeja_rekina_summa
  FROM "Uznemumi" AS uzn
