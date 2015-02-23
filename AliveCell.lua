AliveCell = Cell.new()
AliveCell.__index = AliveCell

function AliveCell.new(n)
	local self = setmetatable({}, AliveCell)
	return self
end

function AliveCell:getColor()
	return 102, 0, 102
end

function AliveCell:nextGeneration(neighbour)
	if neighbour==2 or neighbour==3 then
		cell=self
	else
		cell = DeadCell.new()
	end
	return cell
end