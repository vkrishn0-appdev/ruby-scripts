desc "Calculate standard deviation"
task :standard_deviation do
  path_to_file = Rails.root + "lib/input_files/descriptive_statistics_numbers.txt"
  input = open(path_to_file).read.chomp
  numbers = input.gsub(",", "").split.map(&:to_f)

  # =====================================================================
  # Your code goes below.
  # The numbers from the file are in the array `numbers`.
  # =====================================================================

  # VARIANCE
  # ========
  # To find the variance of a set,
  #  - we find the mean of the set
  #  - for each number in the set,
  #    - we find the difference between the number and the mean
  #    - we square the difference
  #  - the variance is the mean of the squared differences
  
  ap("Your Numbers :")
  ap(numbers)
  mean = numbers.each.sum/numbers.count
  ap("Mean :"+mean.to_s)
  variance = []
  numbers.each do |num|       # For each element in numbers, (refer to it as "num")
    var = (mean - num) * (mean - num )           # Square the number
    variance.push(var)  # Push it into the squared_numbers array called as variance. 
  end
  
  ap("The variance data set is :")
  ap(variance)
  
  variance_set = variance.each.sum/variance.count 
  ap("The variance of the given data is "+variance_set.to_s)

  # STANDARD DEVIATION
  # ==================
  # To find the standard deviation of a set,
  #  - take the square root of the variance
  
  sd = variance_set**0.5 
  ap("The standard deviation is "+sd.to_s)

end
