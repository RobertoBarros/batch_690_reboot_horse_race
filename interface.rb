# Boas vindas ao nosso jogo dos cavalinhos
puts "Welcome to horse race"

# criar os cavalinhos
horses = ['Pe de pano', 'Pangare', 'Pocoto']

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
else
  puts "Try again!"
end
