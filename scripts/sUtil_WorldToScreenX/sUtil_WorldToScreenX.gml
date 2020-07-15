var WorldX = argument0;
var WorldY = argument1;

var _view_xview = camera_get_view_x(view_camera[0]);
var _view_yview = camera_get_view_y(view_camera[0]);
var _view_wview = camera_get_view_width(view_camera[0]);
var _view_hview = camera_get_view_height(view_camera[0]);
var _view_angle = camera_get_view_angle(view_camera[0]);

var ViewCenterX = _view_xview + (_view_wview/2);
var ViewCenterY = _view_yview + (_view_hview/2);
var Zoom = view_wport[0] / _view_wview;

var MyDistanceFromCenter = point_distance(ViewCenterX,ViewCenterY,WorldX,WorldY) * Zoom;
var MyDirectionFromCenter = point_direction(ViewCenterX,ViewCenterY,WorldX,WorldY) + _view_angle;

return (view_wport[0]/2) + lengthdir_x(MyDistanceFromCenter,MyDirectionFromCenter);