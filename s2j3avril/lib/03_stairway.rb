def play_game
    position = 0
    turns = 0
    until position == 10
      die = rand(1..6)
      case die
      when 5, 6 then position += 1
      when 1 then position = [position - 1, 0].max
      end
      turns += 1
    end
    turns
  end
  
  def average_finish_time(games = 100)
    total = games.times.sum { play_game }
    total.to_f / games
  end
  
  def perform
    puts "Nombre moyen de tours pour atteindre la 10ème marche : #{average_finish_time}"
  end
  
  perform