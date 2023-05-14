-- Darba vietu veidi uzņēmuma birojos

   SELECT vie.biroja_id,
          bir.adrese,
          vie.vieta_biroja,
          vie.veida_id,
          dve.nosaukums,
          vie.vietu_skaits
     FROM (
             SELECT vie.biroja_id,
                    vie.vieta_biroja,
                    vie.veida_id,
                    count(vie.id) AS vietu_skaits
               FROM "Darbavietas" AS vie
          LEFT JOIN "Biroji" AS bir ON bir.id = vie.biroja_id
          LEFT JOIN "Darbavietas_veidi" AS dve ON dve.id = vie.veida_id
              WHERE bir.uznemuma_id = 'u_7F8gM1xT4d'
           GROUP BY vie.biroja_id, vie.vieta_biroja, vie.veida_id
           ORDER BY vie.biroja_id, vie.vieta_biroja
          ) AS vie
LEFT JOIN "Biroji" AS bir ON bir.id = vie.biroja_id
LEFT JOIN "Darbavietas_veidi" AS dve ON dve.id = vie.veida_id
 ORDER BY bir.adrese, vie.vieta_biroja, dve.nosaukums
