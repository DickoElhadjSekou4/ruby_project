# Méthode pour jouer une partie
def play_game
  step = 0
  turns = 0
  puts "Bienvenue dans le jeu de l'escalier !"
  
  while step < 10
    turns += 1
    roll = rand(1..6)
    case roll
    when 5..6
      step += 1
      puts "Dé: #{roll} → Tu montes à la marche #{step} !"
    when 1
      step -= 1 unless step == 0
      puts "Dé: #{roll} → Tu descends à la marche #{step} !"
    else
      puts "Dé: #{roll} → Tu restes à la marche #{step}."
    end
  end
  
  puts "Bravo ! Tu as atteint la 10ᵉ marche en #{turns} tours !"
  turns
end

# Méthode pour simuler plusieurs parties et calculer la moyenne
def average_finish_time(simulations = 100)
  total_turns = 0
  simulations.times do
    total_turns += play_game
  end
  avg = total_turns.to_f / simulations
  puts "En moyenne, il faut #{avg.round(2)} tours pour atteindre la 10ᵉ marche."
end

# Méthode principale
def perform
  play_game
# statistique :
   average_finish_time
end

perform
