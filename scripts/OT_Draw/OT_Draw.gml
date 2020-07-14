/// OT_Draw()


//if(false == variable_instance_exists(id, "shadowSurface"))
//{
//	shadowSurface = noone;
//}

//if(!surface_exists(shadowSurface)){
//	shadowSurface = surface_create(view_wport[0], view_hport[0]);
//}

//var viewPos = sUtil_Camera_ScreenToWorld(0, 0);
var viewPos = [0, 0];

var sx = 0;
var sy = 0;

var oldShader = shader_current();

shader_reset();
//surface_set_target(shadowSurface);
gpu_set_fog(true, c_black, 0, 0);
//draw_clear_alpha(c_white, 0);

// render everything in the Order Table (could clip to viewport here)
for(var index=0;index<global.ot_size;index++)
{
	// get the list of instances for this "Y" index
	var l = global.ot[# 0,index];
	
	// IF there is anything in the list, draw it
	var count = ds_list_size(l)-1;
	if( count>=0 )
	{
		while(count>=0)
		{
			// Get the instance in the list
			var i = ds_list_find_value(l,count--);
			
			var w = i.sprite_width/2;
			var h = i.sprite_height;
			
			draw_sprite_pos(i.sprite_index, i.image_index,
				i.x-(w/2)+(h/4)-sx - viewPos[0],
				i.y+(h/3)-sy - viewPos[1],
				i.x+(w/2)+(h/4)-sx - viewPos[0],
				i.y+(h/3)-sy - viewPos[1],
				i.x+(w/2) - viewPos[0],
				i.y - viewPos[1],
				i.x-(w/2) - viewPos[0],
				i.y - viewPos[1],
				0.3);
		}
		// This list had something in it... so clear it!		(don't clear as we still need it for silhouettes)
		//ds_list_clear(l);
	}
}

gpu_set_fog(false, c_white, 0, 0);
//surface_reset_target();

//draw_set_alpha(0.5);
//draw_surface(shadowSurface, viewPos[0], viewPos[1]);
//draw_set_alpha(1.0);

shader_set(oldShader);



// render everything in the Order Table (could clip to viewport here)
for(var index=0;index<global.ot_size;index++)
{
	// get the list of instances for this "Y" index
	var l = global.ot[# 0,index];
	
	// IF there is anything in the list, draw it
	var count = ds_list_size(l)-1;
	if( count>=0 )
	{
		while(count>=0)
		{
			// Get the instance in the list
			var i = ds_list_find_value(l,count--);
		
			with(i)
			{
				if(m_OutlineEnable)
				{
					var oldShader = shader_current();
					shader_set(shSilhouette);
					draw_sprite_ext(sprite_index, -1, x + 1, y, image_xscale, image_yscale, image_angle, m_OutlineColor, 1);
					draw_sprite_ext(sprite_index, -1, x - 1, y, image_xscale, image_yscale, image_angle, m_OutlineColor, 1);
					draw_sprite_ext(sprite_index, -1, x, y + 1, image_xscale, image_yscale, image_angle, m_OutlineColor, 1);
					draw_sprite_ext(sprite_index, -1, x, y - 1, image_xscale, image_yscale, image_angle, m_OutlineColor, 1);
					shader_set(oldShader);
				}
			
				draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
			}
		}
		// This list had something in it... so clear it!		(don't clear as we still need it for silhouettes)
		//ds_list_clear(l);
	}
}
