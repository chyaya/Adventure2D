// Inherit the parent event
event_inherited();

if(m_SelectedCraftId == 0 && array_length_1d(m_CraftList) > 0)
{
	m_SelectedCraftId = m_CraftList[0];
}

if(m_CraftingCount > 0)
{
	var craftTime = global.Craft_Time[m_SelectedCraftId];
	
	if(current_time >= m_CraftingStartTime + craftTime)
	{
		--m_CraftingCount;
		
		//sGameLogic_CreateItem(x, y, global.Craft_Result[m_SelectedCraftId], 1);
		
		m_CraftingStartTime = current_time;
	}
}