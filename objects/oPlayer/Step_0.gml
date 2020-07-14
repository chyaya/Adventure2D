/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

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

sPlayer_CaptureKeyboard();
sPlayer_CaptureGamepad();

m_DirY = 0;
m_DirX = 0;
	
if(m_Input_AxisL_Up)
{
	m_DirY -= 1;
}
else if(m_Input_AxisL_Down)
{
	m_DirY += 1;
}
	
if(m_Input_AxisL_Left)
{
	m_DirX -= 1;
}
else if(m_Input_AxisL_Right)
{
	m_DirX += 1;
}
		
if(m_Input_DPad_Left || m_Input_Btn_LB)
{
	selected--;
}
		
if(m_Input_DPad_Right || m_Input_Btn_RB)
{
	selected++;
}
		
selected = clamp(selected, 1, total_slots);
	
sPawn_Move(1.0);