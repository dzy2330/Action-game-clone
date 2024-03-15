/// @description Insert description here
// You can write your code in this editor

timer +=1;
if (timer >=400)
{
	 var x_pos = irandom(room_width - 1); // 随机X坐标
    var y_pos = irandom(room_height - 1); // 随机Y坐标
    instance_create_layer(x_pos, y_pos, "Instances", Zombieslow);
	timer = 0;
}
