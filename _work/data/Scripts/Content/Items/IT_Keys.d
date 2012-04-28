
const int	Value_Lockpick			=	10;
const int	Value_Key_01			=	3;
const int	Value_Key_02			=	3;
const int	Value_Key_03			=	3;


//******************************************************************************************
//	Dietrich
//******************************************************************************************

INSTANCE ItKe_Lockpick (C_Item)
{
	name 				=	"Dietrich";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_Lockpick;

	visual 				=	"ItKe_Lockpick.3ds";
	material 			=	MAT_METAL;

	description			= 	name;
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};

INSTANCE ItKe_Bunch (C_Item)
{
	name 				=	"Schl�sselbund";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI|ITEM_SHOW;

	value 				=	Value_Lockpick;

	visual 				=	"ItKe_Lockpick.3ds";
	material 			=	MAT_METAL;

	description			= 	name;
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};

INSTANCE ItKe_Lockpick_Mage (C_Item)
{
	name 				=	"magischer Dietrich";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI|ITEM_SHOW;

	value 				=	Value_Lockpick;

	visual 				=	"ItKe_Lockpick.3ds";
	material 			=	MAT_METAL;

	description			= 	name;
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};

INSTANCE ItKe_Lockpick_Mage_Unloaded (C_Item)
{
	name 				=	"magischer Dietrich (nicht aufgeladen)";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI|ITEM_SHOW;

	value 				=	Value_Lockpick;

	visual 				=	"ItKe_Lockpick.3ds";
	material 			=	MAT_METAL;

	description			= 	name;
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};

//******************************************************************************************
//	Prototyp Schl�ssel
//******************************************************************************************

INSTANCE ItKe_XR_NW_HOEHLE_01 (C_Item)
{
	name 				=	"Schl�ssel";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	0;

	value 				=	Value_Key_02;

	visual 				=	"ItKe_Key_02.3ds";
	material 			=	MAT_METAL;

	description			= 	name;
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};

INSTANCE ItKe_XeresKnast (C_Item)
{
	name 				=	"Schl�ssel";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	0;

	value 				=	Value_Key_02;

	visual 				=	"ItKe_Key_02.3ds";
	material 			=	MAT_METAL;

	description			= 	name;
	TEXT[1]				=	"�ffnet die Zellen in Xeres' Gef�ngnis";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};

INSTANCE ItKe_PennerVaterFreudenspender (C_Item)
{
	name 				=	"Schl�ssel";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	0;

	value 				=	Value_Key_02;

	visual 				=	"ItKe_Key_02.3ds";
	material 			=	MAT_METAL;

	description			= 	name;
	TEXT[1]				=	"von Penners Vater";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};

INSTANCE ItKe_SekobScheune (C_Item)
{
	name 				=	"Schl�ssel";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	0;

	value 				=	Value_Key_02;

	visual 				=	"ItKe_Key_02.3ds";
	material 			=	MAT_METAL;

	description			= 	name;
	TEXT[1]				=	"aus Sekobs Scheune";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};

INSTANCE ItKe_Santino (C_Item)
{
	name 				=	"Schl�ssel";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	0;

	value 				=	Value_Key_02;

	visual 				=	"ItKe_Key_02.3ds";
	material 			=	MAT_METAL;

	description			= 	name;
	TEXT[1]				=	"Schl�ssel von Aleph";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};

INSTANCE ItKe_Elena(C_Item)
{
	name 				=	"Schl�ssel";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	0;

	value 				=	Value_Key_02;

	visual 				=	"ItKe_Key_02.3ds";
	material 			=	MAT_METAL;

	description			= 	name;
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};

INSTANCE ItKe_Akahasch(C_Item)
{
	name 				=	"Akahaschs Schl�ssel";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	0;

	value 				=	Value_Key_02;

	visual 				=	"ItKe_Key_02.3ds";
	material 			=	MAT_METAL;

	description			= 	name;
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};

INSTANCE ItKe_RitualsinselDoor(C_Item)
{
	name 				=	"Schl�ssel";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	0;

	value 				=	Value_Key_02;

	visual 				=	"ItKe_Key_02.3ds";
	material 			=	MAT_METAL;

	description			= 	name;
	TEXT[0]				=	"F�r die T�r zu Teleportflamme";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};

INSTANCE ItKe_Mufid(C_Item)
{
	name 				=	"Schl�ssel";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	0;

	value 				=	Value_Key_02;

	visual 				=	"ItKe_Key_02.3ds";
	material 			=	MAT_METAL;

	description			= 	name;
	TEXT[0]				=	"habe ich Mufid abgenommen";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};

INSTANCE ItKe_Keith (C_Item)
{
	name 				=	"Schl�ssel";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	0;

	value 				=	Value_Key_02;

	visual 				=	"ItKe_Key_02.3ds";
	material 			=	MAT_METAL;

	description			= 	name;
	TEXT[0]				=	"F�r Keiths H�tte";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};

INSTANCE ItKe_TugettsoTempel (C_Item)
{
	name 				=	"Schl�ssel";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	0;

	value 				=	Value_Key_02;

	visual 				=	"ItKe_Key_02.3ds";
	material 			=	MAT_METAL;

	description			= 	name;
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};

INSTANCE ItKe_Irdorath(C_Item)
{
	name 				=	"Schl�ssel";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	0;

	value 				=	Value_Key_02;

	visual 				=	"ItKe_Key_02.3ds";
	material 			=	MAT_METAL;

	description			= 	name;
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};

INSTANCE ItKe_Eisturm01(C_Item)
{
	name 				=	"Schl�ssel";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	0;

	value 				=	Value_Key_02;

	visual 				=	"ItKe_Key_02.3ds";
	material 			=	MAT_METAL;

	description			= 	name;
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};

INSTANCE ItKe_Costa(C_Item)
{
	name 				=	"Schl�ssel";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	0;

	value 				=	Value_Key_02;

	visual 				=	"ItKe_Key_02.3ds";
	material 			=	MAT_METAL;

	description			= 	name;
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};

INSTANCE ItKe_Canthar(C_Item)
{
	name 				=	"Schl�ssel";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	0;

	value 				=	Value_Key_02;

	visual 				=	"ItKe_Key_02.3ds";
	material 			=	MAT_METAL;

	description			= 	name;
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};

INSTANCE ItKe_SuchenderJG (C_Item)
{
	name 				=	"Schl�ssel";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	0;

	value 				=	Value_Key_02;

	visual 				=	"ItKe_Key_02.3ds";
	material 			=	MAT_METAL;

	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_MANAPOTION";

	description			= 	name;
	TEXT[1]				= "Vom Suchenden im Nebelturm";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};

INSTANCE ItKe_EchsenKey(C_Item)
{
	name 				=	"Schl�ssel";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	0;

	value 				=	Value_Key_02;

	visual 				=	"ItKe_Key_02.3ds";
	material 			=	MAT_METAL;

	description			= 	name;
	TEXT[0]				= 	"Hatte die wei�e Echse im Sumpf bei sich";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};

INSTANCE ItKe_EchsenKey2(C_Item)
{
	name 				=	"Schl�ssel";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	0;

	value 				=	Value_Key_02;

	visual 				=	"ItKe_Key_02.3ds";
	material 			=	MAT_METAL;

	description			= 	name;
	TEXT[0]				= 	"Hatte die wei�e Echse im Sumpf bei sich";
	TEXT[1]				= 	"�ffnet eine T�r im S�den des Sumpfes";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};

INSTANCE ItKe_Andre(C_Item)
{
	name 				=	"Schl�ssel";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	0;

	value 				=	Value_Key_02;

	visual 				=	"ItKe_Key_02.3ds";
	material 			=	MAT_METAL;

	description			= 	name;
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};

INSTANCE ItKe_ReislordVonPock(C_Item)
{
	name 				=	"Schl�ssel";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	0;

	value 				=	Value_Key_02;

	visual 				=	"ItKe_Key_02.3ds";
	material 			=	MAT_METAL;

	description			= 	name;
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};

INSTANCE ItKe_Wettstreit(C_Item)
{
	name 				=	"Schl�ssel";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	0;

	value 				=	Value_Key_02;

	visual 				=	"ItKe_Key_02.3ds";
	material 			=	MAT_METAL;

	description			= 	name;
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};

INSTANCE ItKe_Lehmar(C_Item)
{
	name 				=	"Schl�ssel";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	0;

	value 				=	Value_Key_02;

	visual 				=	"ItKe_Key_02.3ds";
	material 			=	MAT_METAL;

	description			= 	name;
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};

INSTANCE ItKe_HSDM(C_Item)
{
	name 				=	"Schl�ssel";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	0;

	value 				=	Value_Key_02;

	visual 				=	"ItKe_Key_02.3ds";
	material 			=	MAT_METAL;

	description			= 	name;
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};

INSTANCE ItKe_MagicTempelKey(C_Item)
{
	name 				=	"Schl�ssel";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	0;

	value 				=	Value_Key_02;

	visual 				=	"ItKe_Key_02.3ds";
	material 			=	MAT_METAL;

	description			= 	name;
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};

INSTANCE ItKe_Key_01(C_Item)
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

INSTANCE ItKe_RELMagier(C_Item)
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

INSTANCE ItKe_DrachsKey(C_Item)
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

INSTANCE ItKe_WilfriedsHoehle(C_Item)
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

INSTANCE ItKe_Key_02(C_Item)
{
	name 				=	"Schl�ssel";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	0;

	value 				=	Value_Key_02;

	visual 				=	"ItKe_Key_02.3ds";
	material 			=	MAT_METAL;

	description			= 	name;
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};

INSTANCE ItKe_Key_03(C_Item)
{
	name 				=	"Schl�ssel";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	0;

	value 				=	Value_Key_03;

	visual 				=	"ItKe_Key_03.3ds";
	material 			=	MAT_METAL;

	description			= 	name;
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};
//****************************************************************************
//			Turm Schl�ssel City
//			---------------------------------------------
//****************************************************************************
INSTANCE ItKe_City_Tower_01(C_Item)
{
	name 				=	"Turm Schl�ssel";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Key_01;

	visual 				=	"ItKe_Key_01.3ds";
	material 			=	MAT_METAL;

	description			= 	name;
	
	TEXT[2]				=	"";
	TEXT[3]				=   "";
	
};
//****************************************************************************
//			Turm Schl�ssel City 02
//			---------------------------------------------
//****************************************************************************
INSTANCE ItKe_City_Tower_02(C_Item)
{
	name 				=	"Turm Schl�ssel";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Key_01;

	visual 				=	"ItKe_Key_01.3ds";
	material 			=	MAT_METAL;

	description			= 	name;
	
	TEXT[2]				=	"";
	TEXT[3]				=   "";
	
};
//****************************************************************************
//			Turm Schl�ssel City 03
//			---------------------------------------------
//****************************************************************************
INSTANCE ItKe_City_Tower_03(C_Item)
{
	name 				=	"Turm Schl�ssel";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Key_01;

	visual 				=	"ItKe_Key_01.3ds";
	material 			=	MAT_METAL;

	description			= 	name;
	
	TEXT[2]				=	"";
	TEXT[3]				=   "";
	
};
//****************************************************************************
//			Turm Schl�ssel City 04
//			---------------------------------------------
//****************************************************************************
INSTANCE ItKe_City_Tower_04(C_Item)
{
	name 				=	"Turm Schl�ssel";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Key_01;

	visual 				=	"ItKe_Key_01.3ds";
	material 			=	MAT_METAL;

	description			= 	name;
	
	TEXT[2]				=	"";
	TEXT[3]				=   "";
	
};
//****************************************************************************
//			Turm Schl�ssel City 05
//			---------------------------------------------
//****************************************************************************
INSTANCE ItKe_City_Tower_05(C_Item)
{
	name 				=	"Turm Schl�ssel";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Key_01;

	visual 				=	"ItKe_Key_01.3ds";
	material 			=	MAT_METAL;

	description			= 	name;
	
	TEXT[2]				=	"";
	TEXT[3]				=   "";
	
};
//****************************************************************************
//			Turm Schl�ssel City 06
//			---------------------------------------------
//****************************************************************************
INSTANCE ItKe_City_Tower_06(C_Item)
{
	name 				=	"Turm Schl�ssel";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Key_01;

	visual 				=	"ItKe_Key_01.3ds";
	material 			=	MAT_METAL;

	description			= 	name;
	
	TEXT[2]				=	"";
	TEXT[3]				=   "";
	
};

//---------------------------------------------------------------------
//	Kerkerschl�ssel
//---------------------------------------------------------------------
INSTANCE DungeonKey(C_Item)
{
	name 				=	"Kerkerschl�ssel";

	mainflag 				=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION;

	value 				=	3;

	visual 				=	"ItKe_Key_03.3ds";
	material 				=	MAT_METAL;

	description			= name;
	TEXT[0]				= "�ffnet den Kerker";
	TEXT[0]				= "des Alten Lagers.";
};



