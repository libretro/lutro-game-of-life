DeadCell = Cell.new()
DeadCell.__index = DeadCell

function DeadCell.new(n)
	local self = setmetatable({}, DeadCell)
	self.type = "DeadCell"
	return self
end

function DeadCell:getColor()
	return 153, 153, 153
end

function DeadCell:nextGeneration(neighbour)
	if neighbour==3 then
		cell=AliveCell.new()
	else
		cell = self
	end
	return cell
end