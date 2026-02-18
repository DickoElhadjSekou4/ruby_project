# Méthode pour créer un mot de passe
def signup
  print "Définis ton mot de passe : "
  password = gets.chomp
  password
end

# Méthode pour demander le mot de passe jusqu'à ce qu'il soit correct
def login(password)
  user_input = ""
  until user_input == password
    print "Entre ton mot de passe : "
    user_input = gets.chomp
    puts "Mot de passe incorrect, recommence !" if user_input != password
  end
end

# Méthode pour afficher l'écran de bienvenue
def welcome_screen
  puts " Bienvenue dans ton espace secret !"
  puts "Voici quelques secrets top-secrets :"
  puts " Vas y quoi fait de ton mieux, oup's pas de secret "
  puts " Tu performe grave ahahaha "
end

# Méthode principale pour lancer le programme complet
def perform
  password = signup
  login(password)
  welcome_screen
end

perform

