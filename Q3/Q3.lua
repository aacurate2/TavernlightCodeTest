-- Q3 - Fix or improve the name and the implementation of the below method

-- function do_sth_with_PlayerParty(playerId, membername) <-- OLD
function removeMemberFromParty(playerId, memberId) -- <-- NEW
	player = Player(playerId)
	local party = player:getParty()

	for k,v in pairs(party:getMembers()) do
		-- if v == Player(membername) then -- <-- OLD
		-- 	party:removeMember(Player(membername)) <-- ALSO OLD
		if v == Player(memberId) then -- <-- NEW
			party:removeMember(Player(memberId)) -- <-- ALSO NEW
		end
	end
end
