/// @description Insert description here
// You can write your code in this editor
depth = -bbox_bottom;
if (!up_finished and !animation_finished and y > org_y - up_range){
	y -= 0.5;
}else{
	up_finished = true;
	if(y < org_y + directiony)
	{
		y += speedy;
	}
	else
	{
		animation_finished = true;
	}

}

if(!animation_finished){
	x += speedx;
}