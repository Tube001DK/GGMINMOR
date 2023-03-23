/// @DnDAction : YoYo Games.Instances.Sprite_Scale
/// @DnDVersion : 1
/// @DnDHash : 368119E9
/// @DnDArgument : "xscale" ".3"
/// @DnDArgument : "yscale" ".3"
image_xscale = .3;
image_yscale = .3;

/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
/// @DnDVersion : 1
/// @DnDHash : 1042CBCB
/// @DnDArgument : "x" "mouse_x"
/// @DnDArgument : "y" "mouse_y"
direction = point_direction(x, y, mouse_x, mouse_y);

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 231ACF08
/// @DnDArgument : "speed" "15"
speed = 15;

/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 5D2C3E7B
/// @DnDArgument : "angle" "direction"
image_angle = direction;