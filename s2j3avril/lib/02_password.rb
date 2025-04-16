def signup
    puts "Définissez votre mot de passe :"
    print "> "
    gets.chomp
  end
  
  def login(password)
    loop do
      puts "Entrez votre mot de passe :"
      print "> "
      input = gets.chomp
      if input == password
        puts "Accès autorisé !"
        break
      else
        puts "Mot de passe incorrect. Essayez à nouveau."
      end
    end
  end
  
  def welcome_screen
    puts "Bienvenue dans la zone secrète !"
    puts "Les derniers textos révèlent que le code du coffre est 4242."
  end
  
  def perform
    password = signup
    login(password)
    welcome_screen
  end
  
  perform