
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
//cam_target_x = clamp(cam_target_x, view_width / 2, room_width - view_width / 2);
//cam_target_y = clamp(cam_target_y, view_height / 2, room_height - view_height / 2);


camera_set_view_pos(camera, cam_target_x - view_width / 2, cam_target_y - view_height / 2);


