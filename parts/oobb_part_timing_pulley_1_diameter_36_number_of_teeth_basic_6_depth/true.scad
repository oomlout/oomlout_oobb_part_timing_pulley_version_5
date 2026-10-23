$fn = 50;

use <pulley_gt2.scad>;

difference() {
	union() {
		translate(v = [0, 0, 0]) {
			rotate(a = [0, 0, 0]) {
				difference() {
					union() {
						translate(v = [0, 0, -3.25]) {
							pulley_gt2(depth = 6.5, number_of_teeth = 36, tooth_depth_clearance = 0.0, tooth_width_clearance = 0.2);
						}
						translate(v = [0, 0, -4.25]) {
							cylinder(h = 1.0, r = 12.205155902616465);
						}
						translate(v = [0, 0, 3.25]) {
							cylinder(h = 1.0, r = 12.205155902616465);
						}
					}
					union() {
						translate(v = [0, 0, -5.25]) {
							cylinder(h = 10.5, r = 3.25);
						}
						translate(v = [-7.5, 0.0, -5.25]) {
							cylinder(h = 10.5, r = 1.5);
						}
						translate(v = [0.0, -7.5, -5.25]) {
							cylinder(h = 10.5, r = 1.5);
						}
						translate(v = [0.0, 7.5, -5.25]) {
							cylinder(h = 10.5, r = 1.5);
						}
						translate(v = [7.5, 0.0, -5.25]) {
							cylinder(h = 10.5, r = 1.5);
						}
					}
				}
			}
		}
	}
	union();
}
