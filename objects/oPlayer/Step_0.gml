/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

var len = 16;
m_TargetOffsetX = lengthdir_x(len, m_TargetAngle);
m_TargetOffsetY = lengthdir_y(len, m_TargetAngle) - sprite_height/2;

if(m_Inven_Equip != noone)
{
	for(var i = 0; i < Equip.MAX; ++i)
	{
		var lastItemId = m_LastEquipItemIds[i];
		var curItemId = sInven_GetItemId(m_Inven_Equip, i);
	
		if(lastItemId != curItemId)
		{
			if(global.Item_OnEquip[lastItemId] != noone)
			{
				script_execute(global.Item_OnEquip[lastItemId], self, m_Inven_Equip, i, -1);
			}
		
			if(global.Item_OnEquip[curItemId] != noone)
			{
				script_execute(global.Item_OnEquip[curItemId], self, m_Inven_Equip, i, +1);
			}
		
			m_LastEquipItemIds[i] = curItemId;
		}
	}
}

if(m_Inven_Bag != noone)
{
	if(m_QuickSlotMap != noone)
		ds_map_destroy(m_QuickSlotMap);
	
	m_QuickSlotMap = sInven_GetMapOfQuickSlotItem(m_Inven_Bag);

	if(ds_map_find_value(m_QuickSlotMap, m_SelectedQuickSlotItemId) == undefined)
		m_SelectedQuickSlotItemId = 0;
	
	if(m_SelectedQuickSlotItemId == 0 && ds_map_size(m_QuickSlotMap) > 0)
		m_SelectedQuickSlotItemId = ds_map_find_first(m_QuickSlotMap);

	if(m_SelectedQuickSlotItemId != m_LastQuickSlotItemId)
	{
		if(global.Item_OnQuickSlot[m_LastQuickSlotItemId] != noone)
		{
			script_execute(global.Item_OnQuickSlot[m_LastQuickSlotItemId], self, m_LastQuickSlotItemId, -1);
		}
		
		if(global.Item_OnQuickSlot[m_SelectedQuickSlotItemId] != noone)
		{
			script_execute(global.Item_OnQuickSlot[m_SelectedQuickSlotItemId], self, m_SelectedQuickSlotItemId, +1);
		}
	
		m_LastQuickSlotItemId = m_SelectedQuickSlotItemId;
	}
}
