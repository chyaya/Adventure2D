/// @description Dead

// Inherit the parent event
event_inherited();

with(oPlayerController)
{
	if(m_InteractionObject == other)
	{
		m_InteractionObject = noone;
	}
	
	m_PlayerObject = noone;
	
	sGameLogic_GameOver(false);
	
	m_Mode = Mode.Move;		
}

// 캐릭터가 죽을 경우 저장하면 안된다.
oWorldManager.m_DontSave = true;