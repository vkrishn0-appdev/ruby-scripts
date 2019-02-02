desc "Calculate monthly loan payments"
task :loan_payment do
    path_to_years = Rails.root + "lib/input_files/loan_payment_years.txt"
  ap(path_to_years)
    years = open(path_to_years).read.to_f
    ap("Number of years : "+years.to_s)
  
  path_to_apr =  Rails.root + "lib/input_files/loan_payment_apr.txt"
  ap(path_to_apr)
  apr = open(path_to_apr).read.to_f
  ap("APR : "+apr.to_s)
  
  path_to_p =  Rails.root + "lib/input_files/loan_payment_principal.txt"
  ap(path_to_p)
  principal = open(path_to_p).read.to_f
  ap("Principal :"+principal.to_s)
  
 
  
  
  ## new formula 
  ##m = p r(1+r)**n / (1+r)**n  -1 
  
  num= principal*(apr/1200) * (1+apr/1200)**(years*12)
  ##ap(num)
  den = (1+apr/1200)**(years*12) -1 
  ##ap(den) 
  payment = num/den
  ap("Monthly payment is :"+payment.round(2).to_s) 
  
  
  
  
end
