/// @description Insert description here
// You can write your code in this editor

x = clamp(x, 0, 1500 - sprite_width);
y = clamp(y, 0, 750 - sprite_height);
var moveUp = keyboard_check(ord("W")); 
var moveLeft = keyboard_check(ord("A")); // 按A向左
var moveDown = keyboard_check(ord("S")); // 按S向下
var moveRight = keyboard_check(ord("D")); // 按D向右

// 设置角色的移动速度
character_speed = 4;

// 根据按键输入更新角色的位置
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

x = Fish.x+60;
y=Fish.y+23;

// 获取鼠标位

// 计算从角色到鼠标的角度
var angle = point_direction(x, y, mouse_x, mouse_y);

// 更新枪的角度
image_angle = angle;

// 检查角度，决定是否翻转枪的图像
if (angle > 90 && angle < 270) {
    // 鼠标在角色左侧，枪需要翻转
    image_yscale = -1; // 翻转图像
	image_xscale = 1; 
} else {
    // 鼠标在角色右侧
    image_yscale = 1; // 保持正常方向
	image_xscale = 1; 
}
