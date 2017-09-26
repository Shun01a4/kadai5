# coding: utf-8

class Enemy < Sprite
  def initialize(x,y,image)
    super
    @move_x=(rand(20)-10)*0.1
    @move_y=(rand(20)-10)*0.1
  end
  def update
    self.x += @move_x
    self.y += @move_y
    if self.x >= Window.width - self.image.width || self.x < 0
      self.vanish
    end
    if self.y >= Window.height - self.image.height || self.y < 0
      self.vanish
    end
  end

  # 他のオブジェクトから衝突された際に呼ばれるメソッド
  def hit(obj)
    self.vanish
  end
end