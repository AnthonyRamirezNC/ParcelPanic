var dt = delta_time / 1000000;         
timer = max(timer - dt, 0);           // advance & clamp to 0

var trig_time = base_time * trigger_pct;

if (timer <= trig_time) {
    // 0 … 1 progression through the danger zone
    var p = (trig_time - timer) / trig_time;
    
    // interpolate flash frequency
    var flash_hz = lerp(min_flash_hz, max_flash_hz, p);
    
    // advance phase for a smooth sine pulse
    flash_time += dt * flash_hz;
    
    flash_alpha = 0.5 * abs(sin(flash_time));   // ranges 0 to .5
} else {
    flash_alpha = 0;
    flash_time  = 0;
}
