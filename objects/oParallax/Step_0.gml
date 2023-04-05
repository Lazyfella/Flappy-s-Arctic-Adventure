/// @description
var main   = layer_get_id("Background_main");
var near   = layer_get_id("Background_Near");
var distant   = layer_get_id("Background_Distant");

layer_x(main,	 lerp(0, camera_get_view_x(view_camera[0]), 0.7 ) );
layer_x(near,	 lerp(0, camera_get_view_x(view_camera[0]), 0.8 ) );
layer_x(distant, lerp(0, camera_get_view_x(view_camera[0]), 0.9 ) );
