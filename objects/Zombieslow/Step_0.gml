/// @description Insert description here
// You can write your code in this editor

// 僵尸对象的步事件 (Step Event)
// 检查主角对象是否存在
x = clamp(x, 0, 1500 - sprite_width);
y = clamp(y, 0,750 - sprite_height);


   var max_distance = 700; // 最大距离,超过该距离音量为0
   var volume = 1 - (  distance_to_object(Fish) / max_distance)*2.6;
        volume = clamp(volume, 0, 1); // 确保音量在0到1之间
        audio_sound_gain(   sound_to_play, volume, 0);
		show_debug_message(distance_to_object(Fish))
		show_debug_message(volume)
		



if (instance_exists(Fish)) {
    // 获取主角的状态
    var player_state = Fish.movestate;
    
    // 计算僵尸与主角之间的距离
    var distance_to_player = distance_to_object(Fish);
    
    // 僵尸的状态枚举
    enum ZombieState {
        Idle,
        Chasing
    }
    
    // 僵尸的当前状态
    var zombie_state = ZombieState.Idle;
    
    // 僵尸的移动速度
    var zombie_speed = 0.8;
    
    // 僵尸的感知范围
    var zombie_detection_range_slow = 300;
    var zombie_detection_range_fast = 500;
    
    // 僵尸的追逐停止范围
    var zombie_chase_stop_range_slow = 500;
    var zombie_chase_stop_range_fast = 700;
    
    // 根据主角的状态和距离更新僵尸的状态
    switch (zombie_state) {
        case ZombieState.Idle:
            // 如果主角在慢走且在感知范围内,则进入追逐状态
            if (player_state == 0 && distance_to_player <= zombie_detection_range_slow) {
                zombie_state = ZombieState.Chasing;
            }
            // 如果主角在跑步且在感知范围内,则进入追逐状态
            else if (player_state == 1 && distance_to_player <= zombie_detection_range_fast) {
                zombie_state = ZombieState.Chasing;
            }
            break;
        
        case ZombieState.Chasing:
            // 如果主角在慢走且超出追逐停止范围,则停止追逐
            if (player_state == 0 && distance_to_player > zombie_chase_stop_range_slow) {
                zombie_state = ZombieState.Idle;
            }
            // 如果主角在跑步且超出追逐停止范围,则停止追逐
            else if (player_state == 1 && distance_to_player > zombie_chase_stop_range_fast) {
                zombie_state = ZombieState.Idle;
            }
            break;
    }
    
    // 根据僵尸的状态执行相应的行为
    switch (zombie_state) {
        case ZombieState.Idle:
		timer2 +=1;
		
	 var distance_x = Fish.x - x;
 var distance_y = Fish.y - y;
    
    // 反转距离的符号
	
    distance_x = -distance_x;
    distance_y = -distance_y;
    
    // 将敌人的位置设置为Fish的位置加上反转后的距离
    soundlocationx = Fish.x - distance_x;
    soundlocationy = Fish.y - distance_y;
	

	
audio_emitter_position(emitter2, soundlocationx, soundlocationy, 0);
	
		if (timer2 >=840){
			
            sound_to_play = choose(Breath1, Breath2, Breath3, Breath4,Zombie_Breathing_D1_www_fesliyanstudios_com,Zombie_Breathing_D2_www_fesliyanstudios_com,Zombie_Breathing_D3_www_fesliyanstudios_com,Zombie_Breathing_D4_www_fesliyanstudios_com,Zombie_Breathing_D5_www_fesliyanstudios_com);
			
audio_play_sound_on(emitter2, sound_to_play , false, 1);
timer2 = 0;
			
			
		}
            break;
        
        case ZombieState.Chasing:
		timer3 +=1;
		 var distance_x = Fish.x - x;
 var distance_y = Fish.y - y;
    
    // 反转距离的符号
	
    distance_x = -distance_x;
    distance_y = -distance_y;
    
    // 将敌人的位置设置为Fish的位置加上反转后的距离
    soundlocationx = Fish.x - distance_x;
    soundlocationy = Fish.y - distance_y;
	

	
audio_emitter_position(emitter2, soundlocationx, soundlocationy, 0);
	
	
		if (timer3 >=840){
			
            sound_to_play = choose(Zombie_Long_Attack_A1_www_fesliyanstudios_com,Zombie_Long_Attack_A2_www_fesliyanstudios_com,Zombie_Long_Attack_A3_www_fesliyanstudios_com,Zombie_Long_Attack_A4_www_fesliyanstudios_com,Zombie_Long_Attack_A5_www_fesliyanstudios_com);
			
audio_play_sound_on(emitter2, sound_to_play , false, 1);
timer3 = 0;
			
			
		}
		
		
		
		
            // 追逐状态下的行为,向主角的位置移动
            direction_to_player = point_direction(x, y, Fish.x, Fish.y);
            x += lengthdir_x(zombie_speed, direction_to_player);
            y += lengthdir_y(zombie_speed, direction_to_player);
            break;
    }
}

if (ishit = true &&enemyhealth >0){
sprite_index = Sprite289;

	timer +=1;

	if (timer >= 10){
		ishit =false;
		enemyhealth -=1;
		timer = 0;
		speed = 0;
		sprite_index = Sprite28;
	}
}
if (enemyhealth <=0){
	instance_destroy(self)
}

if (place_meeting(x,y,Fish)){
	hittimer +=1
	if (hittimer >=60){
		Fish.playerhealth -=1;
		hittimer = 0;
	}
}else{
	hittimer =30;
}
//show_debug_message(Fish.playerhealth)