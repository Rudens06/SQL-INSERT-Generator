-- Uzņēmumu biroji, piemēram, Liepājā

   SELECT bir.id, uzn.nosaukums, bir.adrese
     FROM "Biroji" AS bir
LEFT JOIN "Uznemumi" AS uzn ON uzn.id = bir.uznemuma_id
    WHERE bir.adrese LIKE '%Liepāja%'
