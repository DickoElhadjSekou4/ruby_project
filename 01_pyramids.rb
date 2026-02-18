# Méthode pour la moitié de pyramide
def half_pyramid
  print "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ? "
  floors = gets.chomp.to_i

  (1..floors).each do |i|
    puts "#" * i
  end
end

# Méthode pour la pyramide complète
def full_pyramid
  print "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ? "
  floors = gets.chomp.to_i

  (1..floors).each do |i|
    spaces = " " * (floors - i)
    hashes = "#" * (2 * i - 1)
    puts spaces + hashes
  end
end

# Méthode pour la pyramide losange (nombre impair)
def wtf_pyramid
  print "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ? (nombre impair) "
  floors = gets.chomp.to_i

  if floors.even?
    puts "Choisis un nombre impair la prochaine fois !"
    return
  end

  half = (floors / 2) + 1

  # Partie montante
  (1..half).each do |i|
    spaces = " " * (half - i)
    hashes = "#" * (2 * i - 1)
    puts spaces + hashes
  end

  # Partie descendante
  (half - 1).downto(1) do |i|
    spaces = " " * (half - i)
    hashes = "#" * (2 * i - 1)
    puts spaces + hashes
  end
end

# Méthode principale pour lancer les pyramides
def perform
  puts "--- Moitié de pyramide ---"
  half_pyramid
  puts "--- Pyramide complète ---"
  full_pyramid
  puts "--- Pyramide losange ---"
  wtf_pyramid
end

perform

