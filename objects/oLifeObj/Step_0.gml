event_inherited();

if(m_CurHealth == 0 && m_LastHealth > 0 && object_index != oGhost)
{
	event_user(0);
}

m_LastHealth = m_CurHealth;