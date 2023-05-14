-- Uzņēmumu apmaksāto un neapmaksāto rēķinu summas

  SELECT rek.uznemuma_id,
         rek.statuss,
         sum(rek.summa) AS summa
    FROM "Rekini" AS rek
GROUP BY rek.uznemuma_id, rek.statuss
ORDER BY rek.uznemuma_id, rek.statuss
