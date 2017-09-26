# coding: utf-8
require 'dxruby'

require_relative 'player'
require_relative 'enemy'

Window.width  = 800
Window.height = 600
loop_ct=0
score=0
fat=1

player_img = Image.load("player.png")
player_img.setColorKey([0, 0, 0])

enemy_img = Image.load("enemy.png")
enemy_img.setColorKey([0, 0, 0])

player = Player.new(400, 500, player_img)

font=Font.new(20)

enemies = []
10.times do
  enemies << Enemy.new(rand(800), rand(600), enemy_img)
end

Window.loop do
  break if Input.keyPush?(K_ESCAPE)
  if(loop_ct%3==0)
 	 enemies << Enemy.new(rand(800), rand(600), enemy_img)
 	 loop_ct=0
  end
  loop_ct+=1

  Sprite.update(enemies)
  Sprite.draw(enemies)
  Window.draw_font(10,10,score.to_s,font)

  player.update
  player.draw

  # 当たり判定
  if(Sprite.check(player, enemies))
  	score+=1
  end

  if(score%30==0 && score!=0)
  	fat*=1.1
  	  if(score%600==0)
  	    fat=1
      end
    score+=1
  	player.size(fat)
  end
end