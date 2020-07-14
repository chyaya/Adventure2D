#macro AXIS_THRESHOLD 0.4

if(gamepad_get_device_count() > 0)
{
	if(false == instance_exists(oGameOver))
	{
		if(gamepad_axis_value(0, gp_axislv) < -AXIS_THRESHOLD)
		{
			m_Input_AxisL_Up = true;
		}
		else if(gamepad_axis_value(0, gp_axislv) > AXIS_THRESHOLD)
		{
			m_Input_AxisL_Down = true;
		}
	
		if(gamepad_axis_value(0, gp_axislh) < -AXIS_THRESHOLD)
		{
			m_Input_AxisL_Left = true;
		}
		else if(gamepad_axis_value(0, gp_axislh) > AXIS_THRESHOLD)
		{
			m_Input_AxisL_Right = true;
		}
		
		if(gamepad_button_check_pressed(0, gp_padl))
		{
			m_Input_DPad_Left = true;	
		}
		
		if(gamepad_button_check_pressed(0, gp_padr))
		{
			m_Input_DPad_Right = true;	
		}
		
		if(gamepad_button_check_pressed(0, gp_padu))
		{
			m_Input_DPad_Up = true;	
		}
		
		if(gamepad_button_check_pressed(0, gp_padd))
		{
			m_Input_DPad_Down = true;	
		}
	
		if(gamepad_button_check_pressed(0, gp_face1))
		{
			m_Input_Btn_A	= true;
		}
	
		if(gamepad_button_check_pressed(0, gp_face2))
		{
			m_Input_Btn_B	= true;
		}
	
		if(gamepad_button_check_pressed(0, gp_face3))
		{
			m_Input_Btn_X	= true;
		}
	
		if(gamepad_button_check_pressed(0, gp_face4))
		{
			m_Input_Btn_Y	= true;
		}
		
		if(gamepad_button_check_pressed(0, gp_shoulderl))
		{
			m_Input_Btn_LB	= true;
		}
		
		if(gamepad_button_check_pressed(0, gp_shoulderr))
		{
			m_Input_Btn_RB	= true;
		}
		
		if(gamepad_button_check_pressed(0, gp_shoulderlb))
		{
			m_Input_Btn_LT	= true;
		}
		
		if(gamepad_button_check_pressed(0, gp_shoulderrb))
		{
			m_Input_Btn_RT	= true;
		}
			
		var haxis = gamepad_axis_value(0, gp_axisrh);
		var vaxis = gamepad_axis_value(0, gp_axisrv);
		
		m_Input_AxisR_Active = point_distance(0, 0, haxis, vaxis) > AXIS_THRESHOLD;
		
		if(m_Input_AxisR_Active)
			m_Input_AxisR_Angle = point_direction(0, 0, haxis, vaxis);
	}
	
	if(gamepad_button_check_pressed(0, gp_start))
	{
		m_Input_Btn_Start = true;
	}
	
	if(gamepad_button_check_pressed(0, gp_select))
	{
		m_Input_Btn_Select = true;
	}
}