desc "Calculate mode"
task :mode do
  path_to_file = Rails.root + "lib/input_files/descriptive_statistics_numbers.txt"
  input = open(path_to_file).read.chomp
  numbers = input.gsub(",", "").split.map(&:to_f)

  # =====================================================================
  # Your code goes below.
  # The numbers from the file are in the array `numbers`.
  # =====================================================================

  # MODE
  # ====

  # To find the mode of a set of numbers, I follow an approach similar to the one for minimum and maximum above.
  
  #First sort the numbers 
  ap("Your sorted Numbers :")
  sorted = numbers.sort
  ap(sorted )
  
  #create a new array called mode_array with size = count of the sorted array
  

  freq = sorted.inject(Hash.new(0)) { |h,v| h[v] += 1; h }
  ap(freq)
  ap("mode is :"+sorted.max_by { |v| freq[v] }.to_s)
    
  
end
