var worldX = m_PlayerObjectX;
var worldY = m_PlayerObjectY - 40;

var screenX = sUtil_WorldToScreenX(worldX, worldY);
var screenY = sUtil_WorldToScreenY(worldX, worldY);
		

if(m_Mode != Mode.Interact)
{
	with(m_InteractionObject)
	{
		sUtil_DrawTextBox(screenX, screenY, m_Name, c_white, c_black);
	}
}
else
{
	with(m_InteractionObject)
	{		
		var ActionNum = array_length_1d(m_Actions);
		
		if(ActionNum > 0)
		{
			for (var i = 0; i < ActionNum; i++)
			{
				var aid = m_Actions[i];
				var text = global.Action_Name[aid];
				
				var toolItemId = global.Action_Tool_ItemId[aid];
				var toolItemCount = global.Action_Tool_ItemCount[aid];
				
				if(global.Action_Food_Cost[aid] > 0)
				{
				}
				
				sUtil_DrawTextBox(screenX, screenY, text,
					i == other.m_InteractActionIndex ? c_green : c_white, c_black);
					
				screenY -= 32;
			}
		}
		else
		{
			sUtil_DrawTextBox(screenX, screenY, "할 수 있는게 없어", c_white, c_black);
		}
		
		
		
	}
	
}