INSTANCE ItKe_GDG_Keller_01(C_Item)
{
	name 				=	"Schl�ssel";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	0;

	value 				=	Value_Key_01;

	visual 				=	"ItKe_Key_01.3ds";
	material 			=	MAT_METAL;

	description			= 	name;
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};

INSTANCE ItKe_Mod_Gunnar_Dieb(C_Item)
{
	name 				=	"Schl�ssel";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	0;

	value 				=	Value_Key_01;

	visual 				=	"ItKe_Key_01.3ds";
	material 			=	MAT_METAL;

	description			= 	name;
	Text[0]				=	"Diesen Schl�ssel hatte Gunnar bei sich";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};

INSTANCE ITKE_STORAGE_01(C_Item)
{
	name 				=	"Schl�ssel";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	0;

	value 				=	Value_Key_01;

	visual 				=	"ItKe_Key_01.3ds";
	material 			=	MAT_METAL;

	description			= 	name;
	Text[0]				=	"Dieser Schl�ssel passt zum Keller";
	Text[1]				=	"im Burghof des Alten Lagers";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};