def half_pyramid(floors)
    floors.times do |i|
      puts ' ' * (floors - i - 1) + '#' * (i + 1)
    end
  end
  
  def full_pyramid
    puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
    floors = gets.chomp.to_i
    floors.times do |i|
      spaces = floors - i - 1
      hashes = 2 * i + 1
      puts ' ' * spaces + '#' * hashes
    end
  end
  
  def wtf_pyramid
    puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ? (Choisis un nombre impair)"
    floors = gets.chomp.to_i
    return puts "Erreur : nombre pair." if floors.even?
  
    middle = (floors + 1) / 2
    (1..middle).each do |i|
      puts ' ' * (middle - i) + '#' * (2 * i - 1)
    end
    (middle - 1).downto(1) do |i|
      puts ' ' * (middle - i) + '#' * (2 * i - 1)
    end
  end
  
  def perform
    full_pyramid
    wtf_pyramid
  end
  
  perform