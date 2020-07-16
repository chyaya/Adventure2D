var inven = argument0;
var count = 0;

var inv = inven[|Inven.ItemIds];
var total_slots = inven[|Inven.TotalSlotNumber];

for(var ii = 1; ii <= total_slots; ++ii)
{
   if(inv[|ii]==0)
   {
		++count;
   }
}

return count;
