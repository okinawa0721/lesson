def rock_paper_scissors
    puts "出す手を選んでください"
    puts "グー:1,チョキ:2,パー:3"
    my_hand = gets.chomp.to_i
    cmp_hand = rand(1..3)
    if my_hand == cmp_hand
        puts "あいこです"
        return rock_paper_scissors
    elsif (my_hand == 0 && cmp_hand == 1) ||(my_hand == 1 && cmp_hand == 2) ||(my_hand == 2 && cmp_hand == 0)
        return "あなたの勝ちです"
    else
        return "あなたの負けです"
    end
end
puts rock_paper_scissors