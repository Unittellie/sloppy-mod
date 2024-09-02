
with obj_player
	state = states.titlescreen;
if scene >= 0
{
	scr_menu_getinput();
	if (!showtext && (key_jump || key_start))
	{
		showtext = true;
		alarm[0] = 120;
	}
	else if (showtext && (key_jump || key_start))
	{
		room_goto(Mainmenu);
		video_close()
		exit;
	}
}
