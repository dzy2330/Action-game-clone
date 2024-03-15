// 在子弹对象的Draw事件中

// 绘制子弹本身
draw_self();

// 在主角的表面上绘制子弹周围的透明区域
if (surface_exists(Fish.darkness_surface)) {

    surface_set_target(Fish.darkness_surface);
     draw_set_color(c_black);
    draw_set_alpha(1);
    gpu_set_blendmode(bm_subtract);
    draw_circle(x, y, 30, false);  // 根据需要调整半径大小

    gpu_set_blendmode(bm_normal);
    

	
	
    surface_reset_target();
}