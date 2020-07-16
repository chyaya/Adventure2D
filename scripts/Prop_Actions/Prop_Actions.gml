gml_pragma("global", "Prop_Actions();");


enum Action {
	NONE,
	
	ChopTree,
	ChopTree_Tool,
	
	MAX
}


Prop_AddAction(Action.NONE, "아무것도 하지 않는다", 0, [], []);

////

Prop_AddAction(Action.ChopTree, "나무 베기", 5, [], []);
Prop_AddAction(Action.ChopTree_Tool, "도끼로 나무 베기", 0, [Item.Axe], [1]);