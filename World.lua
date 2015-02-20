require "Cell"

World = {}
World.__index = World

function World.new(n)
	local self = setmetatable({}, World)
	self.grid = {}
	for i=0,99 do
		self.grid[i] = {}
		for j=0,99 do
			self.grid[i][j] = Cell.new()
		end
	end
	self.grid[10][10] = AliveCell.new()
	self.grid[20][10] = DeadCell.new()
	return self
end

function World:getNbColumn()
	return #self.grid
end

function World:getNbLine()
	return #self.grid[1]
end

function World:draw()
	for i=1,self:getNbColumn() do
		for j=1,self:getNbLine() do
			lutro.graphics.rectangle(i*2,j*2,1,1, self.grid[i][j]:getColor())
		end
	end
end