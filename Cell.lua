Cell = {}
Cell.__index = Cell

function Cell.new(n)
	local self = setmetatable({}, Cell)
	return self
end

function Cell:getColor()
	return 0xffCCCCCC
end

function Cell:nextGeneration(neighbour)
	if neighbour==3 then
		cell=AliveCell.new()
	else
		cell = self
	end
	return cell
end