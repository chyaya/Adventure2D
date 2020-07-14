// Inherit the parent event
event_inherited();

if(m_Rotten && m_CurHealth == 0)
{
	draw_sprite(sprRotten, current_second % 3, x, y);
}

