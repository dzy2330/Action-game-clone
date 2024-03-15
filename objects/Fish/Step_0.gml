/// @description Insert description here
// You can write your code in this editor

audio_listener_position(x, y, 0);

var moveUp = keyboard_check(ord("W")); 
var moveLeft = keyboard_check(ord("A")); // 按A向左
var moveDown = keyboard_check(ord("S")); // 按S向下
var moveRight = keyboard_check(ord("D"));
var Shift = keyboard_check(vk_shift);

	
	if (state == 4&&moving = false){
		movestate = 0;
	sprite_index = rightstop;
}
if (state == 3&&moving = false){
	movestate = 0;
	sprite_index = leftstop;
}
if (state == 2&&moving = false){
	movestate = 0;
	sprite_index = down_stop;
}
if (state == 1&&moving = false){
	movestate = 0;
	sprite_index = upstop;
}

moving = false;

character_speed = 0.8;
fast_speed = 1.8;





if (moveUp) {
	 sprite_index = up;
	 moving = true;
        y -= character_speed;
	state = 1;
	movestate = 0;
    if (Shift) {
        sprite_index = upfast;
        y -= fast_speed;
		movestate = 1;
    }
} 
//else {
//    sprite_index = upstop;
//}

if (moveDown) {
	moving = true;
	    sprite_index = down_slow;
        y += character_speed;
	state = 2;
	movestate = 0;
    if (Shift) {
        sprite_index = downfast;
        y += fast_speed;
		movestate = 1;
    } 
} 
//else {
//    sprite_index = downstop;
//}

if (moveLeft) {
	moving = true;
	  sprite_index = left;
        x -= character_speed;
		movestate = 0;
	state = 3;
    if (Shift) {
        sprite_index = leftfast;
        x -= fast_speed;
		movestate = 1;
    } 
} 
//else {
//    sprite_index = leftstop;
//}

if (moveRight) {
	moving = true;
	 sprite_index = right;
	 movestate = 0;
        x += character_speed;
	 state = 4;
    if (Shift) {
        sprite_index = rightfast;
        x += fast_speed;
		movestate = 1;
    } 
}
//else {
//    sprite_index = rightstop;
//}
	


	
