-- Darbinieku skaits pēc lomām starp visiem uzņēmumiem, apskata visas lomas.

   SELECT l.nosaukums, COUNT(dar.id)
     FROM "Lomas" AS l
FULL JOIN "Darbinieki" AS dar ON dar.lomas_nosaukums = l.nosaukums
 GROUP BY l.nosaukums
