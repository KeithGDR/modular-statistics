/*****************************/
//Pragma
#pragma semicolon 1
#pragma newdecls required

/*****************************/
//Defines
#define PLUGIN_NAME "[Modular Statistics] Statistic: Kills"
#define PLUGIN_DESCRIPTION "This is a statistics module that registers a certain kind of statistic."
#define PLUGIN_VERSION "1.0.0"

/*****************************/
//Includes
#include <sourcemod>
#include <modular-statistics>

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

public void OnPluginStart()
{
	HookEvent("player_death", Event_OnPlayerDeath);
}

public void ModularStats_OnRegisterAll()
{
	ModularStats_RegisterStat("kills", "Kills");
}

public void Event_OnPlayerDeath(Event event, const char[] name, bool dontBroadcast)
{
	int client = GetClientOfUserId(event.GetInt("userid"));
	int attacker = GetClientOfUserId(event.GetInt("attacker"));
	
	if (attacker < 1 || attacker > MaxClients || client == attacker || IsFakeClient(attacker))
		return;
	
	
}