/// @description Insert description here
// You can write your code in this editor

randomize()
var distance_to_player = point_distance(x, y, Fish.x, Fish.y);
var shooting_distance = 100; 
var move_speed = 0.2;
if (distance_to_player <= shooting_distance) {
   
}

if(ismove == false){
move_direction = irandom(359); 
move_time= random_range(40,160);
ismove = true;
}

if (ishit = true &&enemyhealth >0){
sprite_index = Sprite289;

	timer3 +=1;

	if (timer3 >= 20){
		ishit =false;
		enemyhealth -=1;
		timer3 = 0;
		speed = 0;
		direction = move_direction
	}
}

if (ismove == true&&ishit == false&&enemyhealth >0){
	sprite_index = Sprite2;
	direction = move_direction
	speed = 3;
	timer += 1;
	if (timer >= move_time){
		speed = 0;
		sprite_index = Sprite28;
		if (timer >= move_time+45){
		ismove = false;
		timer = 0
	
		}
	}
	
}

if enemyhealth <= 0{
	sprite_index = Sprite28910;
}
var shoottime = random_range(350,500);
timer2 += 1;
if (timer2 >= shoottime &&enemyhealth >0 ){
	instance_create_layer(x, y, "Instances", Bullet)
	timer2 = 0
}
//var new_x = x + lengthdir_x(move_distance, move_direction)/600;
//var new_y = y + lengthdir_y(move_distance, move_direction)/600;


//if (!place_free(new_x, new_y)) {
//    new_x = x - lengthdir_x(move_distance, move_direction);
//    new_y = y - lengthdir_y(move_distance, move_direction);
//}

//x = new_x;
//y = new_y;
