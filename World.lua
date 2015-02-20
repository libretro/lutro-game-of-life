require "Cell"


World = {}
World.__index = World

function World.new()
	local self = setmetatable({}, World)
	self.lines = 100
	self.columns = 100
	self.grid = {}
	for i=0,self.lines-1 do
		self.grid[i] = {}
		for j=0,self.columns-1 do
			self.grid[i][j] = Cell.new()
		end
	end
	self.neighbours = {}
	for i=0,self.lines-1 do
		self.neighbours[i] = {}
		for j=0,self.columns-1 do
			self.neighbours[i][j] = 0
		end
	end
	return self
end

function World:init(cells)
	for i=0,#cells do
		self.grid[cells[i]:getx()][cells[i]:gety()] = AliveCell.new()
	end
end

function World:draw()
	for i=0,self.lines-1 do
		for j=0,self.columns-1 do
			lutro.graphics.rectangle(i*6,j*6,5,5, self.grid[i][j]:getColor())
		end
	end
end

function World:neighborhood()
	for i=0,self.lines-1 do
		for j=0,self.columns-1 do
			self.neighbours[i][j] = self:neighbours(i,j)
		end
	end	
end

function World:neighbour(line, column)
	neighbour = 0;
	for i=line-1,line+1 do
		for j=column-1,column+1 do
			if (i~=line or j~=column) 
				and i>=0 
				and j>=0 
				and i<self.lines 
				and j<self.columns
			then
				if self.grid[i][j]:getColor()== 0xff660066
					neighbour=neighbour+1
				end
			end
		end
	end	
	return neighbour
end

function World:nextGeneration()
	self:neighborhood()
	for i=0,self.lines-1 do
		for j=0,self.columns-1 do
			self.grid[i][j] = self.grid[i][j]:nextGeneration(self.neighbours[i][j])
		end
	end	
end