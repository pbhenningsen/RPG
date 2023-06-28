if (type == TRANS_TYPE.SLIDE)
{
	draw_set_color(c_black);
	draw_rectangle(0,0,width *2,percent * heightHalf, false);//go from top of screen to middle
	draw_rectangle(0,height,width *2,height-(percent*heightHalf),false);//moves up from the bottom
}



if (type == TRANS_TYPE.FADE)//HOMEWORK, figure out how to do this
{
	draw_set_color(c_black);
	draw_rectangle(0,0,width,height,false);
	draw_set_alpha(min(1,percent + TRANSITION_SPEED));
}
