var win = argument0;

if(instance_exists(oGameOver))
	exit;
	
with(instance_create(x, y, oBlank))
{
	m_Win = win;
	
	instance_change(oGameOver, true);
}