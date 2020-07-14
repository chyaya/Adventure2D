// Inherit the parent event
event_inherited();

if(m_Inven_Bag != noone)
{
	sInven_Destroy(m_Inven_Bag);
	m_Inven_Bag = noone;
}

if(m_Inven_Equip != noone)
{
	sInven_Destroy(m_Inven_Equip);
	m_Inven_Equip = noone;
}

if(m_QuickSlotMap != noone)
{
	ds_map_destroy(m_QuickSlotMap);
	m_QuickSlotMap = noone;
}

oPlayerController.m_PlayerObject = noone;