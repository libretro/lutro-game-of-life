-- ./informatique/RetroArch/retroarch -L informatique/libretro-lutro/lutro_libretro.so informatique/lutro-game-of-life/main.lua

require "Point"
require "World"
require "Cell"
require "AliveCell"
require "DeadCell"


function lutro.conf(t)
	t.width  = 200
	t.height = 200
end

function lutro.load()
	points = {}
	points[0]= Point.new(1,1)
	points[1]= Point.new(2,2)
	points[2]= Point.new(3,3)

	w1 = World.new()
	w1:init(points)
end

function lutro.update(dt)

end

function lutro.draw()
	w1:draw()
end
