-- Darbinieku skaits pēc lomām starp uzņēmumiem metālapstrādes nozarē

   SELECT l.nosaukums, COUNT(*)
     FROM "Lomas" AS l
LEFT JOIN "Darbinieki" AS dar ON dar.lomas_nosaukums = l.nosaukums
LEFT JOIN "Uznemumi" AS uzn ON uzn.id = dar.uznemuma_id
    WHERE uzn.industrija = 'Metālapstrāde'
 GROUP BY l.nosaukums
