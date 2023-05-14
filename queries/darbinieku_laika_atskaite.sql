-- Darba laiku atskaite
--
-- Atlasa "Labklājības Metāla" uzņēmuma visu darbinieku darba laika ierobežo-
-- jumus un aktuālos darba laikus 2023. gada aprīlī.
-- Izskatās, ka darbinieki nevadās pēc darba laiku ierobežojumiem, un paši brīvi
-- strādā izvēlētās stundas klātienē vai attālināti.
--
-- Apskatītais noteikums:
-- Darbiniekiem-administratoriem tiek nodrošināt iespēja pārskatīt visu darbi-
-- nieku klātienē nostrādāto stundu skaitu, lai pārliecinātos, ka darbinieks ir
-- nostrādājis klātienē norādīto stundu skaitu.

   SELECT DISTINCT
          dar.id,
          apm.stundas_klatiene,
          apm.stundas_attalinati,
          sum(dla.stundas_klatiene) OVER (PARTITION BY dar.id) AS aktualas_stundas_klatiene,
          sum(dla.stundas_attalinati) OVER (PARTITION BY dar.id) AS aktualas_stundas_attalinati
     FROM "Darbinieki" AS dar
LEFT JOIN "Apmeklejuma_ierobezojumi" AS apm ON apm.id = dar.apmeklejuma_ierobezojuma_id
FULL JOIN (
           SELECT *
             FROM "Darba_laiki"
            WHERE datums >= '2023-04-01'
              AND datums < '2023-05-01'
          ) AS dla ON dla.darbinieka_id = dar.id
    WHERE dar.uznemuma_id = 'u_7F8gM1xT4d'
