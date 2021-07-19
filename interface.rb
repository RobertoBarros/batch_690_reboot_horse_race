# Boas vindas ao nosso jogo dos cavalinhos
puts "Welcome to horse race"
money = 100

# criar os cavalinhos
horses = ['Pe de pano', 'Pangare', 'Pocoto']
loop do
  puts "you have #{money} credits"
  # Mostrar o nome dos cavalinhos
  puts "List of horses:"
  horses.each_with_index do |horse, index|
    puts "#{index+1} #{horse}"
  end

  # Perguntar em qual cavalinho ele vai apostar
  puts "Pick a horse number"

  # Pegar o cavalinho da aposta
  horse_bet = gets.chomp.to_i

  # Rodar a corrida
  winner = horses.sample

  # Mostrar quem é o vencedor
  puts "The winner is #{winner}"

  # Mostrar se ele ganhou ou perdeu
  if horses[horse_bet-1] == winner
    puts "Got Lucky"
    money += 50
  else
    puts "Try again!"
    money -= 50
  end
  break if money <= 0
end
