if (flash_alpha > 0) {
    shader_set(sh_flash_red);
    shader_set_uniform_f(u_flash, flash_alpha);
    
    // draw the entire application surface through the shader
    draw_surface(application_surface, 0, 0);
    
    shader_reset();
}
