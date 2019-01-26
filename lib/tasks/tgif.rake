desc "Check if today is Friday"
task :tgif do
t = Date.today
if t.friday?
  ap("Yay!! thank god it is friday")
else 
  ap("Nopes:/ Not yet / ") 
end 
    


end
