$fn = 50;

use <pulley_gt2.scad>;

difference() {
	union() {
		translate(v = [0, 0, 0]) {
			rotate(a = [0, 0, 0]) {
				difference() {
					union() {
						translate(v = [0, 0, -4.75]) {
							pulley_gt2(depth = 9.5, number_of_teeth = 30, tooth_depth_clearance = 0.0, tooth_width_clearance = 0.2);
						}
						translate(v = [0, 0, -5.75]) {
							cylinder(h = 1.0, r = 10.295296585513722);
						}
						translate(v = [0, 0, 4.75]) {
							cylinder(h = 1.0, r = 10.295296585513722);
						}
					}
					union() {
						translate(v = [0, 0, -6.75]) {
							cylinder(h = 13.5, r = 3.25);
						}
					}
				}
			}
		}
	}
	union();
}
