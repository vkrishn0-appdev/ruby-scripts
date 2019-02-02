desc "Calculate median"
task :median do
  path_to_file = Rails.root + "lib/input_files/descriptive_statistics_numbers.txt"
  input = open(path_to_file).read.chomp
  numbers = input.gsub(",", "").split.map(&:to_f)

  # =====================================================================
  # Your code goes below.
  # The numbers from the file are in the array `numbers`.
  # =====================================================================

  # MEDIAN
  # ======

  # To find the median of a set of numbers,
  #  - sort your set
  #  - find the number of items in your sorted set
  #  - if your sorted set has an odd number of items
  #    - save the middle number as your median
  #  - otherwise
  #    - find the number to the left of the middle number
  #    - find the number to the right of the middle number
  #    - average the left and right numbers and save it as your median
  
  ## my formula for median - If the total data set is an even number, then the avg of data[count/2]and data[count/2 -1 ] is the median, if the total data set is odd 
  ## then median is the avg of data[count/2]
  
  ap("Your Numbers sorted  :")
  sorted = numbers.sort
  ap(sorted.sort)
  # is the total data set even or odd 
  # check  if the reminder when divided by 2 is 0 or 1 
    if sorted.count % 2 == 0 
     ap("data set has even number of data , so median is the avg of  n/2 and n/2 -1 ")
     n = numbers.count/2 
     median  = (sorted[n] + sorted[n-1] ) / 2 
   end 
     if sorted.count % 2 > 1 
     ap("data set has odd number of data, so median is the exac half ")
     n= sorted.count/2
     median = sorted[n.round(0)]/2
   end 
   
    ap("The median is "+median.to_s)
     
   
  
end
