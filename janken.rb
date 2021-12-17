puts "じゃんけんを始めます" 
puts "最初はぐー。。。じゃんけん。。。。"

def janken 
  puts "[0]:グー\n[1]:チョキ\n[2]:パー"
  player_hand = gets.to_i
  program_hand = rand(3)
  
  jankens = ["グー", "チョキ", "パー"]
  puts "あなたの手:#{jankens[player_hand]}, わたしの手:#{jankens[program_hand]}"
      
  if  player_hand == program_hand
    puts "あいこで"
    return 10
  elsif (player_hand == 0 && program_hand == 1) || (player_hand == 1 && program_hand == 2) || (player_hand == 2 && program_hand == 0)
    puts "じゃんけんはあなたの勝ちです"
    return 20
  elsif (player_hand == 0 && program_hand == 2) || (player_hand == 1 && program_hand == 0) || (player_hand == 2 && program_hand == 1)
    puts "じゃんけんはあなたの負けです"
    return 30
  else 
    puts "入力値が異常です"
    puts "数値は0.1.2を入力してください。もう一度入力してください"
    return janken
  end
end  
  
def hoi_win
  puts "[0]:左\n[1]:上\n[2]:右\n[3]:下"
  player = gets.to_i
  program = rand(4)

  
  hoi_win = ["左", "上", "右","下"]
  puts "あなた:#{hoi_win[player]}, わたしの方向:#{hoi_win[program]}"
    
  if player == program
    puts "あなたの勝ち"
    return 100
  
  elsif player != program
    puts "もう一度じゃんけんしよう！！"
    return 101

  else
    puts "じゃんけんから始めましょう"
  end
end

def hoi_lose
  puts "[0]:左\n[1]:上\n[2]:右\n[3]:下"
  player = gets.to_i
  program = rand(4)

  hoi_lose = ["左", "上", "右","下"]
  puts "あなた:#{hoi_lose[player]}, わたしの方向:#{hoi_lose[program]}"
    
  if player == program
    puts "あなたの負け"
    return 200

  elsif player != program
    puts "もう一度じゃんけんしよう！！"
    return 201

  else 
    puts "じゃんけんから始めましょう"
  end
end

next_game = janken

while next_game == 10 do
  next_game = janken
end

while next_game == 20 do
  puts "あっち向いてホイをします"
  puts "あなたは指を指します" 
  if hoi_win == 101
    next_game  = janken
     if while next_game == 10
       next_game = janken
      end
  end
  else
    next_game = false
  end
end

while next_game == 30 do
  puts "あっち向いてホイをします"
  puts "あなたは顔を向けます"
  if hoi_lose == 201
    next_game  = janken
     if while next_game == 10
       next_game = janken
      end
  end
  else
    next_game = false
  end
end

