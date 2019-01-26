desc "Play rock in rock-paper-scissors"
task :play_rock do
  ap("We played rock")
  t = rand(3) 
  if (t == 0)
    ap(" computer played rock")
    ap( " we tied ")
  end
  if (t == 1)
    ap(" computer played paper")
    ap( " we lose")
  else 
    ap (" computer played scissors")
    ap (" we win" )
  end
end

desc "Play paper in rock-paper-scissors"
task :play_paper do

ap("We played paper")
  t = rand(3) 
  if (t == 0)
    ap(" computer played rock")
    ap( " we win ")
  end
  if (t == 1)
    ap(" computer played paper")
    ap( " we tied")
  else 
    ap (" computer played scissors")
    ap (" we win" )
  end
end

desc "Play scissors in rock-paper-scissors"
task :play_scissors do

ap("We played scissors")
  t = rand(3) 
  if (t == 0)
    ap(" computer played rock")
    ap( " we lose ")
  end
  if (t == 1)
    ap(" computer played paper")
    ap( " we lose")
  else 
    ap (" computer played scissors")
    ap (" we tied" )
  end
end
