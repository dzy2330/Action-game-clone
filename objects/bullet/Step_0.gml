/// @description Insert description here
// You can write your code in this editor

direction = angle;
speed = 4;

if(instance_place(x, y, Rock)){
	instance_destroy(self);
}