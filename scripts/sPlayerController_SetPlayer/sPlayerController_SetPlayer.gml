var playerObj = argument0;

m_PlayerObject = playerObj;

m_CurrentInven = m_PlayerObject.m_Inven_Bag;
m_CurrentInvenSlot = 1;

m_InteractionObject = noone;

m_PlayerObjectX = m_PlayerObject.x;
m_PlayerObjectY = m_PlayerObject.y;

//if(m_QuickSlotMap != noone)
//{
//	ds_map_destroy(m_QuickSlotMap);
//	m_QuickSlotMap = noone;
//}