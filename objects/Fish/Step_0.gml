
x = clamp(x, 0, 1500 - sprite_width);
y = clamp(y, 0,750 - sprite_height);
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


if (keyboard_check(ord("R"))) {
  
 if (!audio_is_playing(heavymachinegun_6998)) {
    audio_play_sound(heavymachinegun_6998, 1, true);
    }
       

} else {
  
        audio_stop_sound(heavymachinegun_6998);
    
}




