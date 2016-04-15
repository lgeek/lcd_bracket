// Copyright (C) 2016 Cosmin Gorgovan <cosmin at linux-geek dot org>
// This work is licensed under a Creative Commons Attribution-ShareAlike 4.0 International License:
// http://creativecommons.org/licenses/by-sa/4.0/

lcd_thickness = 2.7;
lcd_margin = 4;
lcd_height = 60;

mount_depth = 13.7;
mount_height = 14;

wall_thickness = 1.2;

t_height = lcd_margin + wall_thickness;

difference() {
    cube([lcd_height, wall_thickness*2+lcd_thickness, t_height]);
    translate([0, wall_thickness, wall_thickness])
        cube([lcd_height, lcd_thickness, lcd_margin]);
}

translate([-mount_height - wall_thickness * 2, 0, 0]) 
difference() {
    cube([mount_height + wall_thickness * 3, mount_depth + 6*wall_thickness, t_height]);
    translate([0, 3*wall_thickness, 0]) cube([mount_height, mount_depth, t_height]);
}
