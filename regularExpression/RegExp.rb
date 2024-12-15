#https://rubular.com/
str1 = 'Automobile'
str2 = 'Automechanic'
str3 = 'MechanicAuto'
str4 = 'AutojhjhghgkhMechanic'
str5 = 'Autojhljlkhkjhkbhjmobile'
str6 = 'automobile'
str7 = 'This is not a long text, just example'

def reg_match_with_word(word1, word2)
  if word1 =~ /#{word2}/
    puts "Words are equals"
  else
    puts "No match"
  end
end
reg_match_with_word(str1, str6.capitalize)


def reg_match_beginning_word(str1, regExpPattern)
  if str1 =~ /^#{regExpPattern}/
    puts "Strings begin with \"#{regExpPattern}\""
  else
    puts "No match"
  end
end
reg_match_beginning_word(str1, "Auto")

def reg_match_ending_word(str, reg_exp_pattern)
  if str =~ /#{reg_exp_pattern}$/
    puts "#{str} ending with \"#{reg_exp_pattern}\""
  else
    puts "No match"
  end
end
reg_match_ending_word(str2, "nic")

def reg_match_starts_and_ending_word(str, reg_exp_start, reg_exp_end)
  if str =~ /#{reg_exp_start}.*#{reg_exp_end}$/
    puts "#{str} starts with #{reg_exp_start} and ending with \"#{reg_exp_end}\""
  else
    puts "No match"
  end
end
reg_match_starts_and_ending_word(str5, "Auto", "mobile")

matches = str7.match(/long/)
p matches
