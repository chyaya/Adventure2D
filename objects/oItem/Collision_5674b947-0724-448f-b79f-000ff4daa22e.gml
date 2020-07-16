if(m_ActiveTime > current_time)
	return;

with(other)
{
	if(false == sGameLogic_BeforeItemAdd(other.m_ItemId))
	{
		instance_destroy(other);
		exit;
	}
	
	if(sInven_AddItem(m_Inven_Bag, other.m_ItemId, 1) == 0)
	{
		var itemName = global.Item_Text[other.m_ItemId];
		
		sUtil_CreateNotify(x, y, itemName, 0, -30);
		
		instance_destroy(other);
	}
	else
	{
		sUtil_CreateNotify(x, y, "Inventory is full", 0, -30);
	}
}

m_ActiveTime = current_time + irandom_range(2000, 2500);