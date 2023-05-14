-- Darba laiki, kad darbiniekis ir pieejams klātienē
--
-- Apskata viena darbinieka klātienes darba laikus jūlija pirmajs piecās darba
-- dienās.
--
-- Izpildītais noteikums:
-- Darbiniekiem ir nodrošināta iespēja iegūt laikus, kad kāds cits darbinieks
-- būs birojā

  SELECT dla.darbinieka_id,
         dla.datums,
         dla.stundas_klatiene
    FROM "Darba_laiki" AS dla
   WHERE dla.darbinieka_id = 'd_ZGE1POsggg'
         AND dla.datums >= '2023-06-01'
         AND dla.datums < '2023-06-08'
         AND dla.stundas_klatiene > 0
ORDER BY dla.datums
