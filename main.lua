-- ./informatique/RetroArch/retroarch -L informatique/libretro-lutro/lutro_libretro.so informatique/lutro-game-of-life/main.lua

require "Point"
require "World"
require "Cell"
require "AliveCell"
require "DeadCell"


function lutro.conf(t)
	t.width  = 600
	t.height = 600
end

function lutro.load()
	points = {}
	math.randomseed( os.time() )
	for i=0,math.random(50,100) do
	 	points[i]= Point.new(math.random(40,60),math.random(40,60))
	end 
	w1 = World.new()
	w1:init(points)
end

function lutro.update(dt)

end

function lutro.draw()
	w1:draw()
end
