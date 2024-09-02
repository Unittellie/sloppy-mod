if room != rank_room && minutes <= 0 && seconds <= 0 && addseconds <= 0
{
	instance_destroy(obj_fadeout);
	with obj_player
	{
		instance_create(obj_player1.x, obj_player1.y, obj_pizzaface);
		fmod_event_one_shot("event:/sfx/pizzaface/laugh");
	}
}
