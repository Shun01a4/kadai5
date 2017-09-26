# coding: utf-8

class Player < Sprite
  def update
#    self.x += Input.x*5
#    self.y += Input.y*5
#    if(self.x<0 || self.x>768 || self.y<0 || self.y>568)
#      self.x -= Input.x*5
#      self.y -= Input.y*5
#    end
     self.x=Input.mouse_pos_x
     self.y=Input.mouse_pos_y
  end

  def size(fat)
  	self.scale_x=fat
  	self.scale_y=fat
  end
end