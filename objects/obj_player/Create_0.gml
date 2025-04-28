// Inherit the parent event
event_inherited();

carrying = false;
box = noone;
facing = 0; // 0-right, 1-up, 2-left, 3-down
focus = noone;
box_focus = noone;
moving = noone;

p_on_minigame = false;

obj_game_manager.player1 = self;