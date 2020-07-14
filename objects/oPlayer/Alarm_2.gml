/// @description Satiety Zero

sPawn_AddHealth(-ceil(m_MaxHealth*0.2));

sUtil_CreateNotify(x, y, "I'm starving", 0, -30);

alarm[2] = room_speed*5;