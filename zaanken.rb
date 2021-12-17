class Game
  def z_start()
    puts"ジャンケン..."
    puts"0(グー)1(チョキ)2(パー)3(戦わない)"
    memo_type = gets.to_i
    memo_type2 =memo_type.to_i
    if memo_type2 == 3
      puts"ゲームを終了します"
      p = 5
      return p
    else
      x =rand(0..2)
      case memo_type2
      when 0
        name = "グー"
      when 1
        name = "チョキ"
      when 2
        name = "パー"
      end
      case x
      when 0
        namex = "グー"
      when 1
        namex = "チョキ"
      when 2
        namex = "パー"
      end
      puts"あなた:#{name}を出しました"
      puts"相手:#{namex}を出しました"
      aa = z_main(memo_type2,x)
      return aa
    end
  end

  def z_main(num,numx)
    @num = num
    @numx = numx
    if @num == @numx
      puts"あいこです"
      p = 0
      return p
    else
      if @numx == 0
        @numx = 3
      end
      w = @numx-@num
      case w
      when 1
       p = 1
       return p
      when -1 || 2
       p = 2
       return p
      end
    end
  end

  def a_start(winner)
    @win = winner
    @winner = "k"
    if @win == 1
      @winner = "あなた"
    else
      @winner = "相手"
    end

    puts"あっちむいて〜"
    puts"0(上)1(下)2(左)3(右)"
    memo_type = gets.to_i
    memo_type2 =memo_type.to_i
    x =rand(0..3)
    case memo_type2
    when 0
      name = "上"
    when 1
      name = "下"
    when 2
      name = "左"
    when 3
      name = "右"
    end
    case x
    when 0
      namex = "上"
    when 1
      namex = "下"
    when 2
      namex = "左"
    when 3
      namex = "右"
    end
    puts"あなた:#{name}を出しました"
    puts"相手:#{namex}を出しました"
    a_main(memo_type2,x,@winner)
  end

  def a_main(num,numx,twinner)
    @num = num
    @numx = numx
    @twinner = twinner
    if @num == @numx
      puts"YYYYYYYYYYYYYYYYYYY"
      puts"#{@winner}の勝利です!"
      puts"YYYYYYYYYYYYYYYYYYY"
      o = 4
      return o
    else
      o = 3
      return o
    end
  end


end

a=Game.new()
t = 3
y = 0
m = 0
q = 0
while t == 3
  while q == 0
    ai = a.z_start
    q = ai
    if q == 5
      break
    end
  end
  if q == 1 || q == 2
    aii = a.a_start(q)
    t = aii
  elsif q == 0
    t = 3
  else
    t =4
  end
  q = 0
end
puts "終了です"
