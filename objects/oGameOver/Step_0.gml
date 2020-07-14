if(false == m_InputEnable)
	return;
	
if(true == m_Win)
	return;

if(false == instance_exists(oPlayer))
{
	if(sUtil_GamePad_PressAnyButton() != 0)
	{
		//sGameLogic_PlayerRespawn();
		game_restart();

		instance_destroy();
		
		m_InputEnable = false;
	}
}