=begin
【問1】
以下のクラスを定義して下さい
	・「勇者」クラス
	・情報として、「名前」と「経験値」と「レベル」を持つ
	・以下の振る舞いが行える
		・自己紹介：「私は[名前]です」と出力する

【問2】
以下のクラスを定義して下さい
	・「モンスター」クラス
	・情報として、「名前」と「倒した時に得られる経験値」を持つ
    
【問3】
以下のクラスを定義して下さい
	・「スライム」クラス
	・「モンスター」クラスを継承
	・以下の振る舞いが行える
		・体当たり：「[名前]は体当たりをした」と出力

【問4】
「勇者」クラスに以下のメソッドを追加して下さい。
	・「倒す」メソッド
	・モンスターを引数に取る
	○（モンスター以外を引数に取った時には「モンスター以外は攻撃できません」と出力する）
	○・モンスターの「倒した時に得られる経験値」を勇者の「経験値」に足す
	（・経験値の合計が一定以上になった時に、勇者の「レベル」を上げる）
	○・「[モンスターの名前]を倒した」と出力する
	（・レベルが上がった時には、「[名前]は○から○にレベルが上がった」と出力する）

【問5】
勇者がスライムを3体倒してレベルが上がるストーリーを実装して下さい。

※ 各問題、仕様を満たすために不足している部分は検討して実装して下さい。
	例えば、いくつの経験値を得ればレベルが上がるのかは、決めて実装して下さい
=end


class Brave
    def initialize(name,point)
        @name = name
        @point = point
        @level = @point/50
    end
    def name
        puts "・自己紹介：「私は[#{@name}]です、現在、経験値#{@point}、レベル#{@level}です。」"
    end
    def attack_point
        if rand(5) >= 3
            100
        else
            50
        end
    end
    def attack
        puts "・[#{@name}]の攻撃！"
        puts "・体当たり：「[#{@name}]は体当たりをした』"
        puts "・#{attack_point.to_s}のダメージを与えた。"
    end
    def knock_down(monster)
        if  monster.is_a?(Monster) != true
            puts "「モンスター以外は攻撃できません」"
            return monster
        end
        puts "・#{monster.name}を倒した"
        @point = monster.experience_point + @point
        level = @point/50 
        if @level < level
            puts "・#{@name}は#{@level}から#{level}にレベルが上がった"
        end 
        @level = level
    end   
end
class Monster
    attr_accessor :name
    attr_accessor :experience_point
    def initialize(name,experience_point)
        @name = name
        @experience_point = experience_point
    end
    def attack_point
        if rand(5) >= 3
            20
        else
            10
        end
    end
end
class Slime < Monster
    def attack
        puts "・[#{@name}]の攻撃！"
        puts "・体当たり：「[#{@name}]は体当たりをした』"
        puts "・#{attack_point.to_s}ダメージを与えた"
    end
    def contact
        puts "・遭遇：#{@name}が現れた。[経験値：#{@experience_point}]"
    end      
end
brave1 = Brave.new("大城",10)
slime1 = Slime.new("スライムA",100)
slime2 = Slime.new("スライムB",10)
slime3 = Slime.new("スライムC",150)
brave1.name
slime1.contact
slime1.attack
brave1.attack
brave1.knock_down(slime1)
slime2.contact
slime2.attack
brave1.attack
brave1.knock_down(slime2)
slime3.contact
slime3.attack
brave1.attack
brave1.knock_down(slime3)