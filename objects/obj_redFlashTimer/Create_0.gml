// CONFIGURABLE SETTINGS
base_time = global.game_time;	// base round time (seconds)
timer = base_time;				// live countdown
trigger_pct = 1/3;				// start flashing when timer <= base_time * trigger_pct

// Flash‑rate settings
min_flash_hz = 1;				// flashes / sec when the danger period starts
max_flash_hz = 10;				// flashes / sec at zero time

// internal runtime vars
flash_alpha = 0;
flash_time = 0;
u_flash = shader_get_uniform(sh_flash_red, "u_flash_alpha");
