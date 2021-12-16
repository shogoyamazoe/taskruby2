def janken 
  puts "[0]:グー\n[1]:チョキ\n[2]:パー"
  player_hand = gets.to_i
  program_hand = rand(3)
  
  jankens = ["グー", "チョキ", "パー"]
  puts "あなたの手:#{jankens[player_hand]}, わたしの手:#{jankens[program_hand]}"
      
  if  player_hand == program_hand
    puts "あいこで"
    return 1
  elsif (player_hand == 0 && program_hand == 1) || (player_hand == 1 && program_hand == 2) || (player_hand == 2 && program_hand == 0)
    puts "じゃんけんはあなたの勝ちです"
    return 2  
  elsif (player_hand == 0 && program_hand == 2) || (player_hand == 1 && program_hand == 0) || (player_hand == 2 && program_hand == 1)
    puts "じゃんけんはあなたの負けです"
    return 3
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
  else
    puts "じゃんけんから始めましょう"
  end
end

next_game = 1
  puts "最初はグー、じゃんけん..."
  
while  next_game <= 1 do
  next_game = janken
end

case next_game
  when 2
    puts "あっち向いてホイをします"
    puts "あなたは指を指します" 
    next_game = hoi_win
    
  when 3
    puts "あっち向いてホイをします"
    puts "あなたは顔を向けます"
    next_game = hoi_lose
  else
    puts "どのパターンに当てはまりません"
end