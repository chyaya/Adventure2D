/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if(false == variable_instance_exists(id, "m_ConstructId"))
{
	m_ConstructId = 0;
}
else
{
	m_Name = global.Construct_Text[m_ConstructId];
}

//sprite_index = global.Construct_Sprite[m_ConstructId];
