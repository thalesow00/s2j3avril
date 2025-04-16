def say_hello(first_name)
    puts "Bonjour, #{first_name} !"
  end
  
  def ask_first_name
    print "Entrez votre prénom : "
    gets.chomp
  end
  
  def perform
    name = ask_first_name
    say_hello(name)
  end
  
  perform