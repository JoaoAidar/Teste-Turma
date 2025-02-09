//Code made by AIDAR 
function gsTopdownStepEvent() {
	var hInput = inputPlayerD - inputPlayerA
	var vInput = inputPlayerS - inputPlayerW

	x+=hInput*myTopDownSpeed
	y+=vInput*myTopDownSpeed
}

function gsRPGStepEvent(){
    // Persistent instance variables needed (declare in object's Create event):
    // isMoving, moveSteps, moveAxis, moveDistance, targetX, targetY
    show_debug_message(isMoving) 
	show_debug_message(inputPlayerD)
    if (!isMoving) {
        // Handle input and initiate movement
        var playerMoveInput = false;
        if (inputPlayerD) {
            myDirection = DIRECTIONS.Right;
            playerMoveInput = true;
            moveAxis = 0; // X-axis
            moveDistance = 64;
        } else if (inputPlayerW) {
            myDirection = DIRECTIONS.Up;
            playerMoveInput = true;
            moveAxis = 1; // Y-axis
            moveDistance = -64;
        } else if (inputPlayerA) {
            myDirection = DIRECTIONS.Left;
            playerMoveInput = true;
            moveAxis = 0;
            moveDistance = -64;
        } else if (inputPlayerS) {
            myDirection = DIRECTIONS.Down;
            playerMoveInput = true;
            moveAxis = 1;
            moveDistance = 64;
        }

        if (playerMoveInput) {
            // Calculate target position
            if (moveAxis == 0) {
                targetX = x + moveDistance;
                targetY = y;
            } else {
                targetY = y + moveDistance;
                targetX = x;
            }
            isMoving = true;
            moveSteps = 0;
        }
    }

    if (isMoving) {
        // Movement parameters
        var moveSpeed = 16; // Pixels per frame (64px over 4 frames)
        moveSteps++;

        // Update position
        if (moveAxis == 0) {
            x += moveDistance > 0 ? moveSpeed : -moveSpeed;
            // Snap to target when close
            if (abs(x - targetX) < moveSpeed) x = targetX;
        } else {
            y += moveDistance > 0 ? moveSpeed : -moveSpeed;
            // Snap to target when close
            if (abs(y - targetY) < moveSpeed) y = targetY;
        }

        // Check if movement complete
        if (x == targetX && y == targetY) {
            isMoving = false;
            // Ensure perfect alignment to grid
            x = round(x / 64) * 64;
            y = round(y / 64) * 64;
        }
    }
	

}