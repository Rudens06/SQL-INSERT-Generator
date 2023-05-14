require 'date'

cars = ["CC4777", "EF9455", "IP2581", "IX1215", "KP2738", "KY9792", "LB9207", "MZ170", "NI9201", "PN6631", "XI972", "XU9566", "YS668", "YV864", "ZM35"]

employee_ids = ["d_2SfYmdFU0R", "d_3cBoOJifId", "d_4yqVqb4gpp", "d_5LJ1A9mtGA", "d_701Mko63af", "d_8Db7SXX8VO", "d_8sc2d31sM3", "d_93mwgy5Qm9", "d_BJzZMYb710", "d_BlunhO7UCJ", "d_DUqrEOSKKu", "d_H01mouKkvO", "d_Hdsql6y9d4", "d_LEuz4oz4FN", "d_OOuX75PmVG", "d_ObTJf3Uth8", "d_P5OkG4JvtT", "d_UPivYw0Tns", "d_YbcQRlGOR0", "d_h6S1r9K49X", "d_iWYFpeMEdo", "d_kCcyYTnMzZ", "d_pFQsFp48s6", "d_qSUT8fxHMR", "d_wHaYYmbHbj", "d_wRfsp2rp7V", "d_wn344Iztom", "d_xq2rJrjPuZ", "d_y65oJ8gN4w"]

c = 0

cars.each do |car|

  usage = rand

  (Date.new(2023, 04, 01)...Date.new(2023, 05, 01)).each do |date|
    next if date.saturday? || date.sunday?

    if rand < usage

      start_time = DateTime.new(date.year, date.month, date.day, rand(8..16), rand(0..5) * 10, 0)
      duration = rand(3..(6*6)) * 10
      distance = (duration * rand(33.0..76.0) / 60).to_i
      end_time = start_time + Rational(duration, 24*60)

      puts "INSERT INTO \"Braucieni\"(id, auto_registracijas_nr, sakuma_laiks, beigu_laiks, iemesls, nobrauktie_kilometri, degvielas_atlikums, brauciens_no, brauciens_uz, darbinieka_id) VALUES ('b_9QmaZ#{c.to_s.rjust(5, '0')}', '#{car}', '#{start_time.strftime("%Y-%m-%d %H:%M:%S")}', '#{end_time.strftime("%Y-%m-%d %H:%M:%S")}', 'lidostas pārvadājumi', #{distance}, 20, 'Elizabetes iela 92, LV-3577, Rīga, Latvija', 'Krišjāņa Barona iela 80, LV-8376, Liepāja, Latvija', '#{employee_ids.sample}');\n"
    end

    c += 1
  end

end
