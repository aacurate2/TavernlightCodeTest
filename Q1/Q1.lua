-- Q1 - Fix or improve the implementation of the below methods

local function releaseStorage(player)
	player:setStorageValue(1000, -1)
end

function onLogout(player)
	if player:getStorageValue(1000) == 1 then
		-- addEvent(releaseStorage, 1000, player) <-- OLD
		releaseStorage(player) -- <-- NEW
		return true
	end
	return false
end
