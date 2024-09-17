with (obj_player)
    state = (18 << 0)
if (scene >= 0)
{
    scr_getinput()
    if ((!showtext) && (key_jump || key_start))
    {
        showtext = true
        alarm[0] = 120
    }
    else if (showtext && (key_jump || key_start))
    {
        video_pause()
        video_close()
        room_goto(Mainmenu)
        return;
    }
}
var _switch = false
if (scenebuffer > 0)
    scenebuffer--
else
    _switch = true
switch scene
{
    case -2:
        if (_switch && (!instance_exists(obj_logoprop)))
        {
            scene++
            with (instance_create((room_width / 2), (room_height / 2), obj_logoprop))
                sprite_index = spr_intro_fmod
        }
        break
    case -1:
        if (_switch && (!instance_exists(obj_logoprop)))
        {
            scenebuffer = 340
            scenebuffer += 20
            scene++
            with (instance_create(0, 0, obj_genericfade))
            {
                fade = 1.2
                deccel = 0.03
            }
            video_open("gamedata/intro.mp4")
        }
        break
    case 0:
        break
}