require "World"
require "Cell"
require "AliveCell"
require "DeadCell"

function lutro.conf(t)
	t.width  = 200
	t.height = 200
end

function lutro.load()
	w1 = World.new(1)
end

function lutro.update(dt)

end

function lutro.draw()
	w1:draw()
end
