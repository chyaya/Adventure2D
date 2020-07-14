gml_pragma("global", "sProp_Items();");

enum Item
{
	NONE,
	
	Fruit,
	Apple,
	Meat,
	
	BakedFruit,
	BakedApple,
	BakedMeat,
	
	MAX
}

inv_create_item(Item.NONE, spr_no_item, "", 0, "", noone, noone, noone, 0); //Don't remove this one!

inv_create_item(Item.Fruit, sprFruit, "열매", 100, "포만감 + 3", sItem_Eat_Satiety_OnUse, noone, noone, 3);
inv_create_item(Item.Apple, sprApple, "사과", 10, "포만감 + 4", sItem_Eat_Satiety_OnUse, noone, noone, 4);
inv_create_item(Item.Meat, sprMeat, "고기", 100, "생명력 + 5", sItem_Eat_Health_OnUse, noone, noone, 5);

inv_create_item(Item.BakedFruit, sprBakedFruit, "구운 열매", 10, "포만감 + 4", sItem_Eat_Satiety_OnUse, noone, noone, 5);
inv_create_item(Item.BakedApple, sprBakedApple, "구운 사과", 10, "포만감 + 10", sItem_Eat_Satiety_OnUse, noone, noone, 7);
inv_create_item(Item.BakedMeat, sprBakedMeat, "구운 고기", 10, "생명력 + 15", sItem_Eat_Health_OnUse, noone, noone, 15);

