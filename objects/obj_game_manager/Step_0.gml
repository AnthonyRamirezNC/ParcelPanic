var delta_seconds = delta_time / 1000000;

if(timer_active){
	if (quota_timer > 0) {
		quota_timer -= delta_seconds;
    if (quota_timer <= 0) 
		quota_timer = 0;
	}

	if (quota_timer == 0 and quota > 0) {
		goto_fail();
	}
}

if (quota <= 0) {
	goto_next_level();
}