-- Darbinieku atalgojums, min, max un vidējais atalgojums, kā arī atalgojuma
-- ranks starp šāda veida amatiem

   SELECT
          dar.id,
          dar.vards,
          dar.uzvards,
          dar.uznemuma_id,
          uzn.nosaukums,
          dar.amats,
          dar.alga,
          ama.min_alga,
          ama.max_alga,
          avg(dar.alga) OVER (PARTITION BY dar.amats) AS amata_videja_alga,
          rank() OVER (PARTITION BY dar.amats ORDER BY dar.alga DESC) AS amata_algas_rangs
     FROM "Darbinieki" AS dar
LEFT JOIN "Uznemumi" AS uzn ON uzn.id = dar.uznemuma_id
LEFT JOIN "Amati" AS ama ON ama.nosaukums = dar.amats
 ORDER BY dar.uznemuma_id, dar.amats
