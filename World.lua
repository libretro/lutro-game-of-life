require "Cell"


World = {}
World.__index = World

function World.new()
	local self = setmetatable({}, World)
	self.grid = {}
	for i=0,99 do
		self.grid[i] = {}
		for j=0,99 do
			self.grid[i][j] = Cell.new()
		end
	end
	return self
end

function World:init(cells)
	for i=0,#cells do
		self.grid[cells[i]:getx()][cells[i]:gety()] = AliveCell.new()
	end
end

function World:getNbColumn()
	return #self.grid
end

function World:getNbLine()
	return #self.grid[1]
end

function World:draw()
	for i=0,self:getNbColumn() do
		for j=0,self:getNbLine() do
			lutro.graphics.rectangle(i*6,j*6,5,5, self.grid[i][j]:getColor())
		end
	end
end