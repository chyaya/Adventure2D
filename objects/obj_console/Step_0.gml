
if keyboard_check_pressed(vk_anykey)
{
	if(ord(keyboard_lastchar) == 96)
	{
		console_toggle(my_console);
		keyboard_lastchar = "";
		return;		
	}
}

/*****************************
* If a command has been submitted...
*****************************/
if console_submit(my_console) {

    /*****************************
    * Here we can put all our commands.
    *****************************/
    
    /*****************************
    * If user enters into the console:
    * show_message "message"
    *****************************/
    if console_cmd(my_console,"item")
	{
        /*****************************
        * Get the message value to display
        *****************************/
        var itemId = floor(real(console_value(my_console,1)));
		var itemCount = max(1, floor(real(console_value(my_console,2))));
        
		if(console_value_count(my_console) == 0)
		{
			sProp_SaveItemCodeFile();
			url_open(ITEM_FILENAME);
		}
		else
		{
			sInven_AddItem(oPlayerController.m_PlayerObject.m_Inven_Bag, itemId, itemCount);
		}
    }
	else if console_cmd(my_console, "save")
	{
		//var json = SaveInstances();
		//var file = file_text_open_write(SAVE_FILENAME);
		//file_text_write_string(file, json);
		//file_text_close(file);

		//url_open(SAVE_FILENAME);	
	}
	else if console_cmd(my_console, "exit") || console_cmd(my_console, "quit")
	{
		game_end();
	}
	else if console_cmd(my_console, "reset")
	{
		oWorldManager.m_DontSave = true;
		
		file_delete(SAVE_FILENAME);	
		game_restart();
	}
	else if console_cmd(my_console, "show_all_construct")
	{
		for(var i = 1; i < array_length_1d(global.Construct_Require_Building); ++i)
		{
			oPlayerController.m_ConstructVisible[i] = true;
		}
	}
	else if console_cmd(my_console, "add_health")
	{
		var value = floor(real(console_value(my_console, 1)));
		
		with(oPlayerController.m_PlayerObject)
		{
			sPawn_AddHealth(value);
		}
	}
	else if console_cmd(my_console, "add_satiety")
	{
		var value = floor(real(console_value(my_console, 1)));
		
		with(oPlayerController.m_PlayerObject)
		{
			sPlayer_AddSatiety(value);
		}
	}
	else if console_cmd(my_console, "export_tiledata")
	{
		var world_size = room_height / 16;
		
		var _l = layer_get_id("Tiles");
		var _m = layer_tilemap_get_id(_l); // Uncomment for tiles!	
		
		var file = file_text_open_write("tiles.txt");
						
		for(var _y = 0; _y < world_size; ++_y)
		{
			for(var _x = 0; _x < world_size; ++_x)
			{
				var t = tilemap_get(_m, _x, _y);
				
				file_text_write_string(file, string(t) + ",");
			}
			file_text_write_string(file, "\n");
		}
		
		file_text_close(file);
	}
	else if console_cmd(my_console, "invinsible")
	{
		if(false == instance_exists(oPlayerController.m_PlayerObject))
			exit;
		
		var boolean = false;
		
		if(console_value_count(my_console) == 0)
		{
			boolean = !oPlayerController.m_PlayerObject.m_Invinsible;
		}
		else
		{
			boolean = floor(real(console_value(my_console, 1))) > 0 ? true : false;
		}
		
		oPlayerController.m_PlayerObject.m_Invinsible = boolean;
	}	
}

/* */
/*  */
