require 'date'

employee_ids = ["d_2SfYmdFU0R", "d_3cBoOJifId", "d_4yqVqb4gpp", "d_5LJ1A9mtGA", "d_701Mko63af", "d_8Db7SXX8VO", "d_8sc2d31sM3", "d_93mwgy5Qm9", "d_BJzZMYb710", "d_BlunhO7UCJ", "d_DUqrEOSKKu", "d_H01mouKkvO", "d_Hdsql6y9d4", "d_LEuz4oz4FN", "d_OOuX75PmVG", "d_ObTJf3Uth8", "d_P5OkG4JvtT", "d_UPivYw0Tns", "d_YbcQRlGOR0", "d_h6S1r9K49X", "d_iWYFpeMEdo", "d_kCcyYTnMzZ", "d_pFQsFp48s6", "d_qSUT8fxHMR", "d_wHaYYmbHbj", "d_wRfsp2rp7V", "d_wn344Iztom", "d_xq2rJrjPuZ", "d_y65oJ8gN4w"]

c = 0
working_hours = [[0, 8], [1, 7], [2, 6], [3, 5], [4, 4], [5, 3], [6, 2], [7, 1], [8, 0]]

employee_ids.each do |emp_id|

  (Date.new(2023, 04, 01)...Date.new(2023, 05, 01)).each do |date|
    next if date.saturday? || date.sunday?
    contact_hours, remote_hours = working_hours.sample
    contact_hours = [contact_hours + rand(-3..3), 0].max if rand < 0.1
    remote_hours = [remote_hours + rand(-3..3), 0].max if rand < 0.1

    puts "INSERT INTO \"Darba_laiki\"(id, darbinieka_id, datums, stundas_klatiene, stundas_attalinati, uzdevums, apraksts, ieraksts_veikts, ieraksts_atjauninats) VALUES ('dl_Tt7UFme#{c.to_s.rjust(5, '0')}', '#{emp_id}','#{date.to_s}', #{contact_hours}, #{remote_hours}, 'Pētījumu veikšana', 'Veikt pētījumus par dažādiem tematiem, kas atbalsta uzņēmējdarbības darbību.', '2023-05-14 15:07:04', '2023-05-14 15:07:04');\n"

    c += 1
  end

end
