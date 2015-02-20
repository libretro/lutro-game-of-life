DeadCell = Cell.new()
DeadCell.__index = DeadCell

function DeadCell.new(n)
	local self = setmetatable({}, DeadCell)
	return self
end

function DeadCell:getColor()
	return 0xff999999
end

function DeadCell:nextGeneration(neighbour)
	if neighbour==3 then
		cell=AliveCell.new()
	else
		cell = self
	end
	return cell
end