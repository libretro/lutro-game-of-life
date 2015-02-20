DeadCell = Cell.new()
DeadCell.__index = DeadCell

function DeadCell.new(n)
	local self = setmetatable({}, DeadCell)
	return self
end

function DeadCell:getColor()
	return 0xff333333
end