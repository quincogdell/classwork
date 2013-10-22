require 'pry'
  def translate(word)
    vowels = 'aeiouAEIOU'
    vowels_a = vowels.split(//)
    first_char = word.slice(0)
    first_vowel_pos = word.index(/['aeiouAEIOU']/)
    word_len = word.size

    # check for 'y'
    first_vowel_pos ||= word.index('y')
    first_vowel_pos ||= 0

    first_sec = word.slice(0,first_vowel_pos)

    if vowels_a.include?(first_char)
      new_word = word + "way"
    else
      new_word = word.slice(first_vowel_pos..word_len) << first_sec << "ay"
    end
    new_word
   # binding.pry
  end

#p translate('happy')
#p translate("rhythm")

