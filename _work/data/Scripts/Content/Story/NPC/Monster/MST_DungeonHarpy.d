//**************************
//	Harpie Prototype
//**************************

PROTOTYPE Mst_Default_DungeonHarpie(C_Npc)			
{
	//----- Monster ----
	name							=	"H�hlenharpie";
	guild							=	GIL_HARPY;
	aivar[AIV_MM_REAL_ID]			= 	ID_HARPY;
	level							=	18;
	
	//-----Attribute ----	
	attribute	[ATR_STRENGTH]		=	90;
	attribute	[ATR_DEXTERITY]		=	15;
	attribute	[ATR_HITPOINTS_MAX]	=	180;
	attribute	[ATR_HITPOINTS]		=	180;
	attribute	[ATR_MANA_MAX] 		=	100;
	attribute	[ATR_MANA] 			=	100;
	
	//----- Protections ----	
	protection	[PROT_BLUNT]		=	90000;
	protection	[PROT_EDGE]			=	90000;
	protection	[PROT_POINT]		=	40000;
	protection	[PROT_FIRE]			=	90;
	protection	[PROT_FLY]			=	90;
	protection	[PROT_MAGIC]		=	0;

	self.aivar[AIV_Damage] = self.attribute[ATR_HITPOINTS_MAX];
	
	//----- Damage Types ----	
	damagetype 						=	DAM_EDGE;
//	damage		[DAM_INDEX_BLUNT]	=	0;
//	damage		[DAM_INDEX_EDGE]	=	0;
//	damage		[DAM_INDEX_POINT]	=	0;
//	damage		[DAM_INDEX_FIRE]	=	0;
//	damage		[DAM_INDEX_FLY]		=	0;
//	damage		[DAM_INDEX_MAGIC]	=	0;

	//----- Kampf-Taktik ----	
	fight_tactic	= 	FAI_HARPY;
	
	//----- Senses & Ranges ----	
	senses			=	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range	=	PERC_DIST_MONSTER_ACTIVE_MAX;

	aivar[AIV_MM_ThreatenBeforeAttack] = TRUE;
	aivar[AIV_MM_FollowTime]	= FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_FollowInWater] = TRUE;
	
	//----- Daily Routine ----	
	start_aistate				= ZS_MM_AllScheduler;
	
	aivar[AIV_MM_RestStart] 	= OnlyRoutine;	
};


//**************
//	Visuals
//**************


func void B_SetVisuals_DungeonHarpie()
{
	Mdl_SetVisual			(self,	"Harpie.mds");
	//								Body-Mesh		Body-Tex	Skin-Color	Head-MMS	Head-Tex	Teeth-Tex	ARMOR
	Mdl_SetVisualBody		(self,	"DungeonHar_Body",		DEFAULT,	DEFAULT,	"",			DEFAULT,  	DEFAULT,	-1);
};


//************
//	Harpie
//************

INSTANCE DungeonHarpie	(Mst_Default_DungeonHarpie)
{
	B_SetVisuals_DungeonHarpie();
	
	Npc_SetToFistMode(self);
};

INSTANCE DungeonHarpieTransform	(Mst_Default_DungeonHarpie)
{
	Npc_PercEnable (self, PERC_ASSESSSURPRISE , B_StopMagicTransform);
	B_SetVisuals_DungeonHarpie();
	Npc_SetToFistMode(self);
};
