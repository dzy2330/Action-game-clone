/// @description Insert description here
// You can write your code in this editor

audio_listener_position(x, y, 0);

var moveUp = keyboard_check(ord("W")); 
var moveLeft = keyboard_check(ord("A")); // 按A向左
var moveDown = keyboard_check(ord("S")); // 按S向下
var moveRight = keyboard_check(ord("D")); // 按D向右


character_speed = 4;


if (moveUp) {
  y-=character_speed;
  
}
if (moveDown) {
   y+=character_speed;
}
if (moveLeft) {
    x-=character_speed;
}
if (moveRight) {
    x+=character_speed;
}
