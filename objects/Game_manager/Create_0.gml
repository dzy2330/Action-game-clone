// 创建相机
camera = camera_create();

// 设置相机视图的初始大小（根据你的游戏设计调整）
view_width = 1000;
view_height = 500;
camera_set_view_size(camera, view_width, view_height);

// 将房间的视图0设置为使用这个相机
view_camera[0] = camera;

// 启用视图并设置视图大小（确保与上面的相机视图大小一致）
view_enabled = true;
view_set_wport(0, view_width);
view_set_hport(0, view_height);
