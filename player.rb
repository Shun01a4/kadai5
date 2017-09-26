# coding: utf-8

class Player < Sprite
attr_accessor :x
attr_accessor :y
  def update
      self.x += Input.x*5
      self.y += Input.y*5
    if(self.x<0 || self.x>768 || self.y<0 || self.y>568)
      self.x -= Input.x*5
      self.y -= Input.y*5
    end
  end
end