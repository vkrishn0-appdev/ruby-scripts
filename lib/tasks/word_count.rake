desc "Calculate word count statistics"
task :word_count do
  path_to_text = Rails.root + "lib/input_files/word_count_text.txt"
  text = open(path_to_text).read

  path_to_special_word = Rails.root + "lib/input_files/word_count_special_word.txt"
  special_word = open(path_to_special_word).read

  # =====================================================================
  # Your code goes below.
  # The text from the file is in the variable 'text'.
  # The special word from the file is in the variable 'special_word'.
  # =====================================================================
  ap("the words read from teh file are ->"+text)
  ap("Character  with spaces is :"+text.length.to_s)
  ap("Character count without spaces is :"+text.delete(" ").length.to_s)
  ap(" The number of times story is present in the file is : "+text.scan("story").length.to_s)
 
 
  
  
end
