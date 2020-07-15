draw_set_color(c_white);


if(m_InteractionObject != noone)
{
	sPlayerController_GUI_Interact();
}

	

/*
sPlayerController_DrawGUI_GhostScreenEffect();
sPlayerController_DrawGUI_InteractObject();

sPlayerController_DrawGUI_QuickSlot();

if(m_Mode == Mode.Bag)
{
	var viewW = view_wport[0];
	var viewH = view_hport[0];

	draw_set_alpha(0.5);
	draw_set_colour(c_black);

	draw_rectangle(0, 0, viewW, viewH, false);

	draw_set_alpha(1);
	draw_set_colour(c_white);
	
	switch(m_CurTab)
	{
	case Tab.Inventory:
		sPlayerController_DrawGUI_Stats();
		sPlayerController_DrawGUI_Tab_Inventory();
		break;
	case Tab.Construct:
		sPlayerController_DrawGUI_Tab_ConstructList();
		break;
	case Tab.Journal:
		sPlayerController_DrawGUI_Tab_Journal();
		break;
	case Tab.Map:
		sPlayerController_DrawGUI_Tab_Map();
		break;
	}
	
	sPlayerController_DrawGUI_TabList();
}
else if(m_Mode == Mode.UseBuilding)
{
	if(m_InteractionObject.object_index == oRocketStep)
	{
		
	}
	else if(object_is_ancestor(m_InteractionObject.object_index, oBuildingCraft))
	{
		sPlayerController_DrawGUI_UseBuilding_Craft();
	}
	else
	{
		sPlayerController_DrawGUI_UseBuilding_Storage();
	}
}
else
{
	sPlayerController_DrawGUI_HUD_Journal();
}

sPlayerController_DrawGUI_Actions();

if(m_PlayerObject != noone)
{
	//sPlayerController_DrawGUI_HUD_Timeline();
	sPlayerController_DrawGUI_HUD_Stats();
}

sPlayerController_DrawGUI_GameOver();

//sPlayerController_DrawGUI_Minimap();
*/