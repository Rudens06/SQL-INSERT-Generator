-- Transportlidzekļu nobraukums mēneša laikā

-- Atlasa un summē "Labklājības Metāla" uzņēmuma transportlīdzekļu nobraukumu
-- aprīļa mēnesī.

-- Izpildītais noteikums:
-- Darbiniekiem-administratoriem ir pieejams detalizēts pārskats par konkrētā
-- laika periodā izmantotajiem transportlīdzekļiem

   SELECT
          bra.auto_registracijas_nr,
          sum(bra.nobrauktie_kilometri) AS nobrauktie_kilometri_kopa
     FROM "Braucieni" AS bra
LEFT JOIN "Transportlidzekli" AS tra ON tra.auto_registracijas_nr = bra.auto_registracijas_nr
    WHERE tra.uznemuma_id = 'u_7F8gM1xT4d'
          AND bra.sakuma_laiks >= '2023-04-01 00:00:00'
          AND bra.sakuma_laiks < '2023-05-01 00:00:00'
 GROUP BY bra.auto_registracijas_nr
