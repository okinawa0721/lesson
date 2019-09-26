=begin
【問1】
以下のクラスを定義して下さい
	・「図形」クラス
	・インスタンスの情報として「色」を持つ
	・以下の「色を交換する」という振る舞いを持つ
		・「図形」クラス、もしくは「図形」クラスのサブクラスを引数に取る
		・引数で取ったインスタンスと「色」を交換する
【問2】
以下のクラスを定義して下さい
	・「三角形」クラス
	・「図形」クラスを継承
	・インスタンスの情報として「底辺の長さ」と「高さ」を持つ
【問3】
以下のクラスを定義して下さい
	・「四角形」クラス
	・「図形」クラスを継承
	・インスタンスの情報として「底辺の長さ」と「高さ」を持つ
【問4】
以下のクラスを定義して下さい
	・「正方形」クラス
	・どういう設計が良いか検討して実装して下さい
		・どのクラスを継承すると良いか
		・クラス変数、インスタンス変数として何を持つと良いか
【問5】
「三角形」クラス、「四角形」クラス、「正方形」クラスのインスタンスが以下を表示できるようメソッドを追加して下さい。
	・面積は○です
    
=end

class Shape
    attr_accessor :color
    protected :color=
    def initialize(color="")
        @color = color
    end
    def color_change(shape)
        if shape.is_a?(Shape) == true
            @color,shape.color = shape.color,@color
        end
    end
    def display_area
        puts "色は#{@color}面積は#{@area}です。"
    end
    def display
        puts @color
    end
end
class Equal_square < Shape
    def initialize(color,one_side)
        super(color)
        @one_side = one_side
    end
end

shape = Shape.new("黒")
equal_square = Equal_square.new("あか",10)
shape.display
equal_square.display
shape.color_change(equal_square)
shape.display
equal_square.display
equal_square.display_area

