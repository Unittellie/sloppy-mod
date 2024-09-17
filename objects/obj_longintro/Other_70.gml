if (ds_map_find_value(async_load, "type") == "video_start")
    scene = 0
if (ds_map_find_value(async_load, "type") == "video_end")
    room_goto(Mainmenu)