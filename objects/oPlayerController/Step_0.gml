m_Actions[ACTION_A] = Action.NONE;
m_Actions[ACTION_B] = Action.NONE;
m_Actions[ACTION_X] = Action.NONE;
m_Actions[ACTION_Y] = Action.NONE;

m_Input_AxisL_Up = false;
m_Input_AxisL_Down = false;
m_Input_AxisL_Left = false;
m_Input_AxisL_Right = false;
m_Input_DPad_Up = false;
m_Input_DPad_Down = false;
m_Input_DPad_Left = false;
m_Input_DPad_Right = false;
m_Input_Btn_A = false;
m_Input_Btn_B = false;
m_Input_Btn_X = false;
m_Input_Btn_Y = false;
m_Input_Btn_Select = false;
m_Input_Btn_Start = false;
m_Input_Btn_LB = false;
m_Input_Btn_RB = false;
m_Input_Btn_LT = false;
m_Input_Btn_RT = false;
m_Input_AxisR_Active = false;
m_Input_AxisR_Angle = 0;


if(obj_console.my_console[?"active"] == false)
{
	sPlayerController_CaptureKeyboard();
	sPlayerController_CaptureGamepad();
}

m_Input_AxisL_Active = m_Input_AxisL_Up || m_Input_AxisL_Down || m_Input_AxisL_Left || m_Input_AxisL_Right
						|| m_Input_DPad_Up || m_Input_DPad_Down || m_Input_DPad_Left || m_Input_DPad_Right;
m_Input_AxisL_Step = false;

if(m_Input_AxisL_Active && !m_Input_AxisL_Active_Last)
{
	m_Input_AxisL_Active_Next_Step_Time = current_time + 300;
	m_Input_AxisL_Step = true;
}
else if(m_Input_AxisL_Active_Next_Step_Time != 0 && m_Input_AxisL_Active_Next_Step_Time < current_time)
{
	m_Input_AxisL_Active_Next_Step_Time = current_time + 100;
	m_Input_AxisL_Step = true;
}

m_Input_AxisL_Active_Last = m_Input_AxisL_Active;


switch(m_Mode)
{
case Mode.Move:
	
	if(noone != m_PlayerObject)
	{	
		with(m_PlayerObject)
		{
			m_DirY = 0;
			m_DirX = 0;
	
			if(other.m_Input_AxisL_Up)
			{
				m_DirY -= 1;
			}
			else if(other.m_Input_AxisL_Down)
			{
				m_DirY += 1;
			}
	
			if(other.m_Input_AxisL_Left)
			{
				m_DirX -= 1;
			}
			else if(other.m_Input_AxisL_Right)
			{
				m_DirX += 1;
			}
			
			if(other.m_Input_AxisR_Active)
			{
				m_TargetAngle = other.m_Input_AxisR_Angle;
			}
			else if(m_DirX != 0 || m_DirY != 0)
			{
				m_TargetAngle = point_direction(0, 0, m_DirX, m_DirY);
			}
			
			if(other.m_Input_Btn_LB)
			{			
				--other.m_CurrentInvenSlot;
				
				if(other.m_CurrentInvenSlot < 1)
					other.m_CurrentInvenSlot = 1;
			}
			
			if(other.m_Input_Btn_RB)
			{
				++other.m_CurrentInvenSlot;
				
				if(other.m_CurrentInvenSlot > sInven_GetTotalSlotNum(m_Inven_Bag))
					other.m_CurrentInvenSlot = sInven_GetTotalSlotNum(m_Inven_Bag);
			}
		}	
	}
	
	if(m_Input_Btn_A && m_InteractionObject != noone)
	{
		m_Mode = Mode.Interact;
		m_InteractActionIndex = 0;
		
		m_PlayerObject.m_DirX = 0;
		m_PlayerObject.m_DirY = 0;
	}
	
	
	break;
case Mode.Bag:
	
	with(m_PlayerObject)
	{
		m_DirX = 0;
		m_DirY = 0;
	}
	
	if(m_Input_Btn_LB)
	{
		m_CurTab = max(m_CurTab - 1, 0);
	}

	if(m_Input_Btn_RB)
	{
		m_CurTab = min(m_CurTab + 1, Tab.MAX - 1);
	}
	
	switch(m_CurTab)
	{
	case Tab.Inventory:
		//sPlayerController_GUI_Inventory();
		break;
	case Tab.Construct:
		//sPlayerController_GUI_Construct();
		break;
	case Tab.Journal:
		//sPlayerController_GUI_Journal();
		break;
	}
	break;
case Mode.Interact:
	
	if(m_Input_Btn_A)
	{
		
		m_Mode = Mode.Move;
	}
	
	if(m_InteractionObject != noone)
	{
		if(other.m_Input_AxisL_Up && other.m_Input_AxisL_Step)
		{
			m_InteractActionIndex++;
		
			if(m_InteractActionIndex >= array_length_1d(m_InteractionObject.m_Actions))
				m_InteractActionIndex = array_length_1d(m_InteractionObject.m_Actions) - 1;
		}
		else if(other.m_Input_AxisL_Down && other.m_Input_AxisL_Step)
		{
			m_InteractActionIndex--;
			
			if(m_InteractActionIndex < 0)
				m_InteractActionIndex = 0;
		}
	}
	
	
	break;
}

if(noone != m_PlayerObject)
{
	m_PlayerObjectX = m_PlayerObject.x;
	m_PlayerObjectY = m_PlayerObject.y;	
}

sPlayerController_CaptureInteractObject();


//if(global.UseFOW)
//	sFOW_Update(m_PlayerObjectX, m_PlayerObjectY, oDoor);


if(other.m_Input_Btn_Start)
{
	//game_restart();
}

//////////////////////////////////////////////////////////
// Ability / Possess

//sPlayerController_SelectAction();
//sPlayerController_DoAction();


audio_listener_set_position(self, x, y, 0);

