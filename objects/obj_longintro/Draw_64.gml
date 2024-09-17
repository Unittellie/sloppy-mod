if (scene == 0)
{
    video_set_volume(((global.option_unfocus_mute && (!window_has_focus())) ? 0 : global.option_master_volume))
    var _data = video_draw()
    var _status = _data[0]
    if (_status == 0)
    {
        var s = _data[1]
        var w = surface_get_width(s)
        var h = surface_get_height(s)
        var scale = obj_screensizer.actual_height / h
        draw_surface_ext(s, (obj_screensizer.actual_width / 2 - w * scale / 2), 0, scale, scale, 0, c_white, 1)
    }
}
if showtext
{
    draw_set_font(lang_get_font("creditsfont"))
    draw_set_halign(fa_left)
    draw_set_valign(fa_top)
    scr_draw_text_arr(16, (obj_screensizer.actual_height - 48), text)
}