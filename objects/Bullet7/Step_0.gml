/// @description Insert description here
// You can write your code in this editor
// 在obj_bullet的代码中检测碰撞
var enemy1 = instance_place(x, y, enemy); // 检测当前子弹位置是否与敌人碰撞
if (enemy1 != noone) { // 如果碰撞到敌人

    
    // 设定推动力的大小
  
    
   
    
    // 应用力到敌人，使其移动
enemy1.ishit = true;
       enemy1.direction = direction;
	   enemy1.speed = 6;
 
    
    
    instance_destroy(); 
}

if(instance_place(x, y, Rock)){
	instance_destroy(self);
}