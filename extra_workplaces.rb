c = 0

20.times do |i|
  loc = ["4.stāvs", "2.korpuss, 4.stāvs", "4.stāvs", "1.stāvs"].sample
  type = ["dvv_MX76O1w7ld", "dvv_PYvgbgEReP"]
  type = "dvv_aMpUSVV6Ep" if loc == "4. stāvs"

  puts "INSERT INTO \"Darbavietas\"(id, biroja_id, vieta_biroja, veida_id) VALUES ('dv_DdATyBc#{c.to_s.rjust(3, '0')}', 'b_93mwgy5Qm9', '#{loc}', 'dvv_dlnvqFqxpR');\n"

  c += 1
end
