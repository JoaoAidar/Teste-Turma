//Code made by AIDAR 
#region SETTING INPUT UP

	inputPlayerW = keyboard_check(ord("W"))
	inputPlayerA = keyboard_check(ord("A"))
	inputPlayerS = keyboard_check(ord("S"))
	inputPlayerD = keyboard_check(ord("D"))
	inputPlayerShift = keyboard_check(vk_shift)
	inputPlayerControl = keyboard_check(vk_control)

#endregion

enum DIRECTIONS {
	Up,
	Down,	
	Left,
	Right
}
gsRPGCreateEvent()
gsTopDownCreateEvent()

curGameMode = GameStyles.TopDown


