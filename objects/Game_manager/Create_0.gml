// 创建相机
camera = camera_create();


view_width = 650;
view_height = 325;
camera_set_view_size(camera, view_width, view_height);

// 将房间的视图0设置为使用这个相机
view_camera[0] = camera;

// 启用视图并设置视图大小（确保与上面的相机视图大小一致）
view_enabled = true;
view_set_wport(0, view_width);
view_set_hport(0, view_height);

timer = 0;

// 假设这段代码在玩家对象的Step事件中
// 假设这段代码在玩家对象的Step事件中



