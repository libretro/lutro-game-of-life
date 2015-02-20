Cell = {}
Cell.__index = Cell

function Cell.new(n)
	local self = setmetatable({}, Cell)
	return self
end

function Cell:getColor()
	return 0xffCCCCCC
end

