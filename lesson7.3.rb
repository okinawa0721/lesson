=begin
【問1】
以下のクラスを定義して下さい
	・「自動車」クラス
	・インスタンスの情報として「ナンバー」（ナンバープレートに表示されるやつ）を持つ
	・インスタンスの情報として「ID」を持つ
		・「ID」は自動車が生成された順番の数値をそのまま付ける
		・例えば、1台目であれば「1」、2台目であれば「2」

【問2】
「自動車」クラスに、作成済みの自動車の台数を教えてくれるメソッドを追加して下さい

【問3】
以下のクラスを定義して下さい。
	・「トラック」クラス
	・「自動車」クラスを継承
	・クラスの情報として「積める荷物の重さ」を持つ
	・インスタンスの情報として「積んでいる荷物の重さ」を持つ
	・以下の「荷物を積む」という振る舞いが行える
		・荷物の重さを引数に取る
		・積むことが可能であれば積む
		・積むことが出来なければ積まない
	・インスタンスの情報として「車体の色」を持つ

【問4】
以下のクラスを定義して下さい。
	・「バス」クラス
	・「自動車」クラスを継承
	・クラスの情報として「乗せられる乗客の数」を持つ
	・インスタンスの情報として「乗せている乗客の数」を持つ

【問5】
自動車の情報を出力するメソッドを追加して下さい。
トラックであれば以下を出力します。

IDは○○○
ナンバー：○○○
積載可能量：○○○
積載量：○○○

バスであれば以下を出力します。

ID：○○○
ナンバー：○○○
乗車可能人数：○○○
乗車人数：○○○

※必要に応じて動作確認用のコードを書いて下さい

=end

class Automobile
    @@count = 0 
    def initialize(namber)
        @namber = namber
        @@count += 1
        @id = @@count
    end
    def automobile_display
        puts "IDは#{@id}\nナンバー：#{@namber}"
    end
end
class Track < Automobile
    @@piled_up_weight = 100
    def initialize(namber="",now_weight,color)
        super(namber)
        @now_weight,@color = now_weight,color
    end
    def load_luggage(load_weight)
        if @@piled_up_weight >= @now_weight+load_weight
            @now_weight += load_weight
        end
    end
    def track_display
        puts "#{automobile_display}積載可能量：#{@@piled_up_weight}\n積載量：#{@now_weight}"
    end
end
class Bas < Automobile
    @@passengers_loaded = 20
    def initialize(namber="",now_passengers)
        super(namber)
        @now_passengers=now_passengers
    end
    def passengers_display
        puts @@passengers_loaded
    end
    def now_passengers
        puts @now_passengers
    end
    def bas_display
        puts "#{automobile_display}乗車可能人数：#{@@passengers_loaded}\n乗車人数#{@now_passengers}"
    end
end


track=Track.new(namder=123,40,"しろ")
track.load_luggage(20)
track.track_display
bas = Bas.new(namder=243,10)
bas1 = Bas.new(15)
bas.bas_display

