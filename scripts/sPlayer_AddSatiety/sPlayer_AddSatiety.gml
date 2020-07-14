var value = argument0;

m_CurSatiety = clamp(m_CurSatiety + value, 0, m_MaxSatiety);

if(m_CurSatiety > 0)
{
	alarm[2] = -1;
}
else
{
	if(alarm[2] == -1)
	{
		alarm[2] = room_speed*5;
	}
}