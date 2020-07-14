/// @description Dead

// Inherit the parent event
event_inherited();

sUtil_PlayRandomSound(m_Sound_Dead);

with(oPawn)
{
	if(m_AI_TargetObject == other)
	{
		m_AI_TargetObject = noone;
	}
}

with(oHit)
{
	if(m_OwnerObj == other)
	{
		m_OwnerObj = noone;
	}
}

//if(m_Respawn)
//{
//	var delay = irandom_range(m_RespawnDelayMin, m_RespawnDelayMax);
	
//	with(oWorldManager)
//	{
//		sWorldManager_AddRespawn(other, delay);
//	}
//}

instance_destroy();