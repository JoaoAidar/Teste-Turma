//Code made by AIDAR 
enum GameStyles {
	TopDown, 
	RPG,
	RoomLockedTopDown, 
	RoomLockedRPG,
	length
}

curGameMode = GameStyles.length
currentGlobalGameMode = GameStyles.TopDown
global.GameMode = array_create(GameStyles.length)


global.GameMode[GameStyles.TopDown] = 
{
	displayName: "TopDown",
	playerCreateFunction : gsTopDownCreateEvent,
	playerStepFunction : gsTopdownStepEvent
}

global.GameMode[GameStyles.RPG] = {
	displayName: "RPG-like",
	playerCreateFuntion: gsRPGCreateEvent,
	playerStepFunction: gsRPGStepEvent
}


