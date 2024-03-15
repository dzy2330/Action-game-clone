draw_self();

if (!surface_exists(darkness_surface)) {
    darkness_surface = surface_create(room_width, room_height);
}

surface_set_target(darkness_surface);
draw_clear_alpha(c_black, 0);

// 绘制黑色遮罩
draw_set_color(c_black);
draw_set_alpha(1);
draw_rectangle(0, 0, room_width, room_height, false);


// 在主角对象周围绘制透明区域
gpu_set_blendmode(bm_subtract);
draw_set_color(c_black);
draw_set_alpha(1);
draw_circle(x+11.5 , y+7 , 45, false);

//if (Game_manager.shooting == true&&timer<=10){
//	draw_circle(Gun.x , Gun.y , 45, false);
//	timer+=1
//}else{ timer = 0; 
//	Game_manager.shooting = false;
//}

gpu_set_blendmode(bm_normal);

surface_reset_target();

// 将表面绘制到屏幕上
draw_surface(darkness_surface, 0, 0);

// 在主角对象的Clean Up事件中
//if (surface_exists(darkness_surface)) {
//    surface_free(darkness_surface);
//}