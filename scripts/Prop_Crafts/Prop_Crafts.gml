gml_pragma("global", "Prop_Crafts();");

enum Craft
{
	NONE,
	
	//굽기 
	BakedFruit,
	BakedApple,
	BakedMeet,
	
	MAX
}


Prop_AddCraft(Craft.NONE, noone, 0, [], [], noone);

// Bonfire
Prop_AddCraft(Craft.BakedFruit, Item.BakedFruit, 3000, [Item.Fruit], [1], noone);
Prop_AddCraft(Craft.BakedApple, Item.BakedApple, 3000, [Item.Apple], [1], noone);
Prop_AddCraft(Craft.BakedMeet, Item.BakedMeat, 3000, [Item.Meat], [1], noone);


