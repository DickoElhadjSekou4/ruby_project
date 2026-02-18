# Programme 0 : Hello !
# Méthode qui dit juste bonjour
def say_hello
  puts "Bonjour !"
end

# Méthode qui dit bonjour à une personne
def say_hello_to(first_name)
  puts "Bonjour, #{first_name} !"
end

# Méthode qui demande le prénom à l'utilisateur
def ask_first_name
  print "Quel est ton prénom ? "
  return gets.chomp
end

# Méthode combo : demande le prénom et dit bonjour
def perform
  first_name = ask_first_name
  say_hello_to(first_name)
end

perform

