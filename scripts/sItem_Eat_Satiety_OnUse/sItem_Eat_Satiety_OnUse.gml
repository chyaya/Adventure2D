var pawn = argument0;
var inven = argument1;
var itemPos = argument2;

var itemId = sInven_GetItemId(inven, itemPos);

var valueUp = global.Item_UserParam[itemId];

with(pawn)
{
	sPlayer_AddSatiety(valueUp)
}

sUtil_CreateNotify(pawn.x, pawn.y, "Satiety+" + string(valueUp), 0, -30);
