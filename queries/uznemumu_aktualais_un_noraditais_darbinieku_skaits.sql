-- Uzņēmumu aktuālais un norādītais darbinieku skaits

   SELECT uzn.id,
          uzn.nosaukums,
          dar.darbinieku_skaits AS akutalais_darbinieku_skaits,
          uzn.darbinieku_skaits AS noraditais_darbinieku_skaits
     FROM (
              SELECT uznemuma_id, count(*) AS darbinieku_skaits
                FROM "Darbinieki"
            GROUP BY uznemuma_id
          ) AS dar
LEFT JOIN "Uznemumi" AS uzn ON uzn.id = dar.uznemuma_id
