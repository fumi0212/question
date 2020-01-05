class Player
  def hand
    puts "数字を入力してください"
    puts "0:グー"
    puts "1:チョキ"
    puts "2:パー"

    player_hand = gets.to_i
    # コンソールを入力待ち状態にし、プレイヤーがコンソールから打ち込んだ値を出力する処理のメソッドの処理をこの中に作成する
  end
end

class Enemy
  def hand
    enemy_hand = rand(3)# グー、チョキ、パーの値をランダムに出力するメソッドの処理をこの中に作成する
  end
end

class Janken
  def pon(player_hand, enemy_hand)
    jankens = ["グー","チョキ","パー"]
    if player_hand == enemy_hand
       next_game = true
      puts "相手の手は#{jankens[enemy_hand]}です。あいこです。"

    while next_game
      hand = janken.pon(player.hand, enemy.hand)
    end

    elsif player_hand < 0 || player_hand > 2
          next_game = true
      puts "0〜2の数字を入力してください。"
    while next_game
      hand = janken.pon(player.hand, enemy.hand)
    end


    elsif (player_hand - enemy_hand + 3) % 3 == 2
      puts "相手の手は#{jankens[enemy_hand]}です。あなたの勝ちです。"
      pon = false
    else
      puts "相手の手は#{jankens[enemy_hand]}です。あなたの負けです。"
      pon = false
    end
   end
 end

    # プレイヤーが打ち込んだ値と、Enemyがランダムに出した値でじゃんけんをさせ、その結果をコンソール上に出力するメソッドをこの中に作成する
    # その際、あいこもしくはグー、チョキ、パー以外の値入力時には、もう一度ジャンケンをする
    # 相手がグー、チョキ、パーのうち、何を出したのかも表示させる ruby janken.rb

player = Player.new
enemy = Enemy.new
janken = Janken.new

# 下記の記述で、ジャンケンメソッドが起動される
janken.pon(player.hand, enemy.hand)

# ここに書かれているRubyの記述はあくまでヒントとして用意された雛形なので、書かれている記述に従わずに実装したいという場合は、自分の好きに実装して構わない。課題要件を満たし、コードの品質が一定の水準にあると判定されればどのような実装でも合格になる。
