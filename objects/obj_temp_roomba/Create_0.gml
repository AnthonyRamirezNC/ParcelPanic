// Inherit the parent event
event_inherited();
path_copy = path_duplicate(myNewPath);
path_reverse(path_copy);
path_start(myNewPath, moveSpeed, path_action_restart, true);



