m_DirX = 0;
m_DirY = 0;
m_TargetAngle = 0;

m_Path = undefined;
//m_PathEndPos = position_create(-100, -100);

if(irandom(1) == 0)
{
	image_xscale = -1;	
}

m_AttackType = 0;

//if(false == variable_instance_exists(id, "m_Level"))
//{
//	m_Level = irandom(2);
//}

//if(false == variable_instance_exists(id, "m_AttackType"))
//{
//	m_AttackType = irandom(1);
//}
	
//var stats = sUtil_MakeStats(m_Level);
//m_MaxHealth = stats[?"health"];
//m_Damage = stats[?"damage"];
//m_MoveSpeed = stats[?"moveSpeed"];
//ds_map_destroy(stats);

m_RottenSprFrame = 0;
m_LastImageIndex = -1;

m_LastPathFind = 0;

m_Mount = noone;

event_inherited();