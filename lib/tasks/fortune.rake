desc "Print a random fortune"
task :fortune do
  fortunes = [
    "Do not mistake temptation for opportunity",
    "A friend asks only for your time not your money",
    "Do not confuse recklessness with confidence",
    "Bide your time, for success is near",
    "Every day in your life is a special occasion"
  ]

  # =====================================================================
  # Your code goes below.
  # =====================================================================

the_number = rand(5)
  ap( "rand output is "+the_number.to_s)
   ap( "your fortune today is - "+fortunes[the_number])

  

end
