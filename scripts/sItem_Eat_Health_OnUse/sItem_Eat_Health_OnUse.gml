var pawn = argument0;
var inven = argument1;
var itemPos = argument2;

var itemId = sInven_GetItemId(inven, itemPos);

var valueUp = global.Item_UserParam[itemId];

with(pawn)
{
	sPawn_AddHealth(valueUp)
}

sUtil_CreateNotify(pawn.x, pawn.y, "Health+" + string(valueUp), 0, -30);
