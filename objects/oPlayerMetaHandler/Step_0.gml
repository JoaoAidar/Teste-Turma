//Code made by AIDAR 
if(gameModeChanged){
	
	if(instance_exists(oPlayer)) {
		var Deadplayer = instance_find(oPlayer,0)	
		instance_destroy(Deadplayer)
	}
	var player = instance_create_depth(room_width/2, room_height/2, depth,oPlayer)
	with(player){
		curGameMode = oGlobalGameModeManager.currentGlobalGameMode
		alarm[0] = 0
	}
	gameModeChanged = false
}

