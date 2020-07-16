if(false == instance_exists(oGameOver))
{
	if(keyboard_check(vk_up))
	{
		m_Input_AxisL_Up = true;
		m_Input_DPad_Up = true;
	}

	if(keyboard_check(vk_down))
	{
		m_Input_AxisL_Down = true;
		m_Input_DPad_Down = true;
	}

	if(keyboard_check(vk_left))
	{
		m_Input_AxisL_Left = true;
		m_Input_DPad_Left = true;
	}

	if(keyboard_check(vk_right))
	{
		m_Input_AxisL_Right = true;
		m_Input_DPad_Right = true;
	}
	
	if(keyboard_check_pressed(ord("A")))
	{
		m_Input_Btn_LB	= true;
	}
		
	if(keyboard_check_pressed(ord("S")))
	{
		m_Input_Btn_RB	= true;
	}
	
	if(keyboard_check_pressed(vk_pagedown))
	{
		m_Input_Btn_RT = true;
	}

	if(keyboard_check_pressed(ord("V")))
	{
		m_Input_Btn_Y = true;	
	}

	if(keyboard_check_pressed(ord("Z")))
	{
		m_Input_Btn_A = true;	
	}

	if(keyboard_check_pressed(ord("X")))
	{
		m_Input_Btn_X = true;	
	}

	if(keyboard_check_pressed(ord("C")))
	{
		m_Input_Btn_B = true;	
	}
}

if(keyboard_check_pressed(vk_enter))
{
	m_Input_Btn_Start = true;	
}

if(keyboard_check_pressed(vk_backspace))
{
	m_Input_Btn_Select = true;	
}