if (room_get_name(room) != "index") {
    var hh = window_get_height();
    draw_set_color(c_black);
    draw_set_font(cbDataGUIFont);
    draw_text(5, hh - 19, string_hash_to_newline("room: " + room_get_name(room)));
    draw_set_color(c_white);
    draw_text(4, hh - 20, string_hash_to_newline("room: " + room_get_name(room)));
    window_set_caption("Noise: FPS: " + string(fps) + "   Real FPS: " + string(fps_real));
}

