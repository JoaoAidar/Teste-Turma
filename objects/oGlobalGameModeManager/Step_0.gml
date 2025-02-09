//Code made by AIDAR 
var shift = keyboard_check_pressed(vk_shift)

if(shift){
	currentGlobalGameMode = WrapValue(currentGlobalGameMode+shift,1, 0)
	oPlayerMetaHandler.gameModeChanged = true
	
}

