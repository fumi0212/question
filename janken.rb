class Player
  def hand
    puts "数字を入力してください"
    puts "0:グー"
    puts "1:チョキ"
    puts "2:パー"

    player_hand = gets.chomp
    if player_hand == "0"
      player_hand = player_hand.to_i
    elsif player_hand == "1"
      player_hand = player_hand.to_i
    elsif player_hand == "2"
      player_hand = player_hand.to_i
    end
    # コンソールを入力待ち状態にし、プレイヤーがコンソールから打ち込んだ値を出力する処理のメソッドの処理をこの中に作成する
  end
end

class Enemy
  def hand
    enemy_hand = rand(0..2)# グー、チョキ、パーの値をランダムに出力するメソッドの処理をこの中に作成する
  end
end

class Janken
  def pon(player_hand, enemy_hand)
    jankens = ["グー","チョキ","パー"]
    if player_hand == enemy_hand
      puts "相手の手は#{jankens[enemy_hand]}です。あいこです。"
      return true
    elsif player_hand != 0 && player_hand  != 1 && player_hand  != 2
      puts "0〜2の数字を入力してください。"
      return true
    elsif (player_hand - enemy_hand + 3) % 3 == 2
      puts "相手の手は#{jankens[enemy_hand]}です。あなたの勝ちです。"
      return false
    else
      puts "相手の手は#{jankens[enemy_hand]}です。あなたの負けです。"
      return false
    end
   end
 end


    # プレイヤーが打ち込んだ値と、Enemyがランダムに出した値でじゃんけんをさせ、その結果をコンソール上に出力するメソッドをこの中に作成する
    # その際、あいこもしくはグー、チョキ、パー以外の値入力時には、もう一度ジャンケンをする
    # 相手がグー、チョキ、パーのうち、何を出したのかも表示させる ruby janken.rb  next_game = true

player = Player.new
enemy = Enemy.new
janken = Janken.new

# 下記の記述で、ジャンケンメソッドが起動される
  while true
    if  janken.pon(player.hand, enemy.hand) == true
    else
     break
    end
  end
