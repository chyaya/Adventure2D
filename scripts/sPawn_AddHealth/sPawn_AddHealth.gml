var value = argument0;

m_CurHealth = m_CurHealth + value;
m_CurHealth = clamp(m_CurHealth, 0, m_MaxHealth);