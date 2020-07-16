if(m_ActiveTime > current_time)
{
		
	
}
else
{
	var interactionObjectList = ds_list_create();
	var interactionObjectNum = collision_circle_list(
		x, y, 60, oPlayer, true, false, interactionObjectList, true);

	if(interactionObjectNum > 0)
	{
		var playerObj = interactionObjectList[|0];
		
		var emptySlot = 0;
		with(playerObj)
		{
			emptySlot = sInven_CountEmptySlot(m_Inven_Bag);
		}
	
		if(emptySlot > 0)
		{
			var dx = playerObj.x - x;
			var dy = playerObj.y - y;
			var length = sqrt(dx*dx + dy*dy);
	
			var vx = dx/length;
			var vy = dy/length;
	

			x += vx*length*0.2;
			y += vy*length*0.2;
		}
	}

	ds_list_destroy(interactionObjectList);
}