
regexp = /Perl|Python/i

while line = gets
  matched = line.match(regexp)
  if matched
    puts "\u2714 The matched word is #{matched}"
  else
    puts "\u2718 No match in line #{line}"
  end
end