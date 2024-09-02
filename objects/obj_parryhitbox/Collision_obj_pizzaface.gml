if (!collisioned)
{
    if (obj_player1.x != other.x)
        obj_player1.xscale = sign(other.x - obj_player1.x)
    else
        obj_player1.xscale = (-other.image_xscale)
    instance_destroy(obj_pizzaface)
	global.fill += 50
    event_user(0)
    global.combotime = 60
}