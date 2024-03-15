/// @description Insert description here
// You can write your code in this editor
// 假设 room_width 和 room_height 是你的地图尺寸
for (i = 0; i < 12; i++) {
    var x_pos = irandom(room_width - 1); // 随机X坐标
    var y_pos = irandom(room_height - 1); // 随机Y坐标
    instance_create_layer(x_pos, y_pos, "Instances", Zombieslow);
}

timer = 0;
