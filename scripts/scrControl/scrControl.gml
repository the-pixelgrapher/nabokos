keyRight = max(keyboard_check(vk_right), keyboard_check(ord("D")));
keyUp = max(keyboard_check(vk_up), keyboard_check(ord("W")));
keyLeft = max(keyboard_check(vk_left), keyboard_check(ord("A")));
keyDown = max(keyboard_check(vk_down), keyboard_check(ord("S")));

keyRightP = max(keyboard_check_pressed(vk_right), keyboard_check_pressed(ord("D")));
keyUpP = max(keyboard_check_pressed(vk_up), keyboard_check_pressed(ord("W")));
keyLeftP = max(keyboard_check_pressed(vk_left), keyboard_check_pressed(ord("A")));
keyDownP = max(keyboard_check_pressed(vk_down), keyboard_check_pressed(ord("S")));
	
keyActP = max(keyboard_check_pressed(vk_enter), keyboard_check_pressed(vk_space));
keyActR = max(keyboard_check_released(vk_enter), keyboard_check_released(vk_space));