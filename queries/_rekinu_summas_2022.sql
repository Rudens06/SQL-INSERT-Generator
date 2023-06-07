-- Visu apmaksāto un neapmaksāto rēķinu summas no 2022 gada

  SELECT rek.statuss, sum(rek.summa)
    FROM "Rekini" AS rek
   WHERE rek.izrakstisanas_datums BETWEEN '2022-01-01' AND '2022-12-31'
GROUP BY statuss
