event_inherited();

if(global.ShowDebug_AI && oPlayerController.m_PlayerObject != self)
{
	if(m_AI_Control && m_AI_PlayerVisible)
	{
		var lineColor = c_white;
		if(m_AI_TargetObject != noone)
			lineColor = c_red;
		
		draw_circle_colour(x, y, m_AI_SearchRange, lineColor, lineColor, true);
	}
	
	if(m_Path != undefined)
	{
	    for(var i = 0; i < path_get_number(m_Path) - 1; i++)
	    {
			draw_set_color(c_yellow);
			
	        draw_line(
				path_get_point_x(m_Path, i),
				path_get_point_y(m_Path, i),
				path_get_point_x(m_Path, i + 1),
				path_get_point_y(m_Path, i + 1));
	    }
	}


}
