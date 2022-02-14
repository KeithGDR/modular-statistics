/*****************************/
//Pragma
#pragma semicolon 1
#pragma newdecls required

/*****************************/
//Defines
#define PLUGIN_NAME "Modular Statistics"
#define PLUGIN_DESCRIPTION "An open source and modular plugin to create/manage/save statistics."
#define PLUGIN_VERSION "1.0.0"

/*****************************/
//Includes
#include <sourcemod>

/*****************************/
//ConVars

/*****************************/
//Globals


/*****************************/
//Plugin Info
public Plugin myinfo = 
{
	name = PLUGIN_NAME, 
	author = "Drixevel", 
	description = PLUGIN_DESCRIPTION, 
	version = PLUGIN_VERSION, 
	url = "https://drixevel.dev/"
};

public APLRes AskPluginLoad2(Handle myself, bool late, char[] error, int err_max)
{
	RegPluginLibrary("modular-statistics");
	
	CreateNative("ModularStats_RegisterStat", Native_Register);
	CreateNative("ModularStats_IncrementStat", Native_Increment);
	
	return APLRes_Success;
}

public void OnPluginStart()
{
	RegConsoleCmd("sm_stats", Command_Stats);
}

public Action Command_Stats(int client, int args)
{
	OpenStatisticsMenu(client);
	return Plugin_Handled;
}

public int Native_Register(Handle plugin, int numParams)
{
	
}

public int Native_Increment(Handle plugin, int numParams)
{
	
}