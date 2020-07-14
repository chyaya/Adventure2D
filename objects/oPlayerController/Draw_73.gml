
event_inherited();

/*
if(m_Mode == Mode.DeployBuilding)
{
	with(m_PlayerObject)
	{
		var pos = sUtil_GetBuildingDeployPos(
			x + m_TargetOffsetX, y + m_TargetOffsetY, other.m_SelectedConstructId);
		var sprite = global.Construct_Sprite[other.m_SelectedConstructId];

		var color = c_white;
		
		with(other)
		{
			if(sPlayerController_CanConstruct_Depoly(m_SelectedConstructId, pos[0], pos[1]))
			{
				color = c_green;
			}
			else
			{
				color = c_red;	
			}
		}

		draw_sprite_ext(sprite, 0, pos[0], pos[1], 1, 1, 0, color, 0.5);
	}
}
*/

/*
if(instance_exists(m_PlayerObject))
{
	var journalId = sPlayerController_CurrentJournalIndex();

	var len = 120;
	var targets = global.Journal_Targets[journalId];

	//with(oSleepingBag)
	//{
	//	targets[array_length_1d(targets)] = self;
	//}

	for(var i = 0; i < array_length_1d(targets); ++i)
	{
		var object = targets[i].id;
	
		if(false == instance_exists(object))
			continue;
	
		if(point_distance(m_PlayerObjectX, m_PlayerObjectY, object.x, object.y) < len)
			continue;
	
		var angle = point_direction(m_PlayerObjectX, m_PlayerObjectY, object.x, object.y);
	
		var offsetX = lengthdir_x(len, angle);
		var offsetY = lengthdir_y(len, angle) - m_PlayerObject.sprite_height/2;	
	
		var scale = 12/object.sprite_width;
		draw_sprite_ext(object.sprite_index, 0,
			m_PlayerObjectX + offsetX,// + (object.sprite_width/2 - object.sprite_xoffset)*scale,
			m_PlayerObjectY + offsetY,// + (object.sprite_height/2 - object.sprite_yoffset)*scale,
			scale, scale, 0, c_white, 1);
		
		//draw_circle(m_PlayerObjectX + offsetX, m_PlayerObjectY + offsetY, 2, false);
	
		var offset2X = lengthdir_x(len + 10, angle);
		var offset2Y = lengthdir_y(len + 10, angle) - m_PlayerObject.sprite_height/2;	
	
		draw_sprite_ext(sprAnglePointer, 0,
			m_PlayerObjectX + offset2X, m_PlayerObjectY + offset2Y, 1, 1, angle, c_lime, 1);
	}

}
*/