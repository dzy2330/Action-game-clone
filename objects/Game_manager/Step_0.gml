
var player_x = Fish.x;
var player_y = Fish.y;

var mouse_x_view = device_mouse_x_to_gui(0);
var mouse_y_view = device_mouse_y_to_gui(0);


var mouse_offset_x = (mouse_x_view - view_wport[0] / 2) / (view_wport[0] / 2);
var mouse_offset_y = (mouse_y_view - view_hport[0] / 2) / (view_hport[0] / 2);


var influence = 100; 
var cam_target_x = player_x + (mouse_offset_x * influence);
var cam_target_y = player_y + (mouse_offset_y * influence);



//the code below is to not let the camara out of the room
cam_target_x = clamp(cam_target_x, view_width / 2, room_width - view_width / 2);
cam_target_y = clamp(cam_target_y, view_height / 2, room_height - view_height / 2);
if (keyboard_check_released(ord("R"))) {
	Fire.visible = false;
    
}

camera_set_view_pos(camera, cam_target_x - view_width / 2, cam_target_y - view_height / 2);


// 检测鼠标左键点击
if (keyboard_check(ord("R"))) {
	
timer +=1;

gun_length = 16;

// 计算枪口的位置
muzzle_x =Gun.x + lengthdir_x(gun_length, Gun.image_angle);
muzzle_y = Gun.y + lengthdir_y(gun_length, Gun.image_angle);
if (timer >=8){
    var bullet = instance_create_layer(muzzle_x, muzzle_y, "Instances", Bullet7);
    camera_set_view_pos(camera,camera_get_view_x(camera)+irandom_range(-5,5) , camera_get_view_y(camera) +irandom_range(-5,5));

Fire.visible = true;

if (keyboard_check_released(ord("R"))) {
	Fire.visible = false;
    
}

    // 设置子弹飞行的基础方向为枪口朝向
    var bullet_direction = Gun.image_angle; // 假设枪和玩家的方向是相同的
   
    // 给子弹方向加上随机偏差
    var deviation = random_range(-8, 8); // 偏差范围，可根据需要调整
    bullet.direction = bullet_direction + deviation;

    // 设置子弹速度
    bullet.speed = 10; // 可根据需要调整
	timer = 0;
}
}
