enum Tab {
	Inventory,
	Construct,
	Journal,
	Map,
	
	MAX
}

m_TabNames = ["Inventory", "Construct", "Journal", "Map"];

m_Input_AxisL_Active_Last = false;
m_Input_AxisL_Active_Next_Step_Time = 0;


enum Mode {
	Move,
	Bag,
	DeployBuilding,
	UseBuilding,
	
	MAX
}

m_Mode = Mode.Move;


enum Action {
	NONE,
	
	Attack,	
	OpenBag,
	CloseBag,
	UseItem,
	RemoveItem,
	TakeItem,
	SelectDeploy,
	Deploy,
	CancelDeploy,
	UseBuilding,
	UnuseBuilding,
	SelectCraft_One,
	SelectCraft_HalfOfAll,
	SelectCraft_All,
	Mount,
	Unmount,
	
	MAX
}

m_ActionName = [
	"",
	"공격",
	"가방 열기",
	"가방 닫기",
	"사용",
	"버리기",
	"가져오기",
	"건설",
	"배치",
	"배치 취소",
	"건물 사용",
	"건물 닫기",
	"제작",
	"반절 제작",
	"모두 제작",
	"탑승",
	"내리기",
];


m_CraftVisible = [];
for(var i = 1; i < array_length_1d(global.Craft_Result); ++i)
{
	m_CraftVisible[i] = global.Craft_Require_Building[i] == noone ? 1 : 0;	
}
	
/*
m_ConstructVisible = [];
for(var i = 1; i < array_length_1d(global.Construct_Result); ++i)
{
	m_ConstructVisible[i] = global.Construct_Require_Building[i] == noone ? 1 : 0;	
}
*/

/*
m_JournalVisible = [];
m_JournalComplete = [];
for(var i = 1; i < array_length_1d(global.Journal_Text); ++i)
{
	m_JournalVisible[i] = false;
	m_JournalComplete[i] = false;
}

m_JournalVisible[Journal.Prologue] = true;
*/

m_PlayerObject = noone;

m_WorldMapPin = ds_list_create();