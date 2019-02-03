/// @description  scr_textbox_set_text_shadow(textbox_instance, boolien, offset_px, color, alpha);
/// @param textbox_instance
/// @param  boolien
/// @param  offset_px
/// @param  color
/// @param  alpha
/**
 * @brief  Adds a shadow to the text of the textbox
 *
 * @param  {textbox_instance} textbox_instance An instance of a textbox
 * @param  {boolean} boolien True to enable, false to disable shadows
 * @param  {number} offset_px Offset of the shadow from the parent text in pixels
 * @param  {number} color GM Color value for the shadow (ex. c_black)
 * @param  {float}   alpha Alpha value for the shadow (Between 0.0 and 1.0)
 *
 * @return {boolean} Returns undefined if instance can't be found
 *                   Returns true if successful
 */

var o = argument0;
if (!instance_exists(o)) return undefined;

with (o) {
    shadowEnabled = argument1;
    shadowOffset = argument2;
    shadowColor = argument3;
    shadowOpacity = argument4;
    return true;
}
