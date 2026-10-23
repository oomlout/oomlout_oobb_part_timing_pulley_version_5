$fn = 50;

use <pulley_gt2.scad>;

difference() {
	union() {
		translate(v = [0, 0, 0]) {
			rotate(a = [0, 0, 0]) {
				difference() {
					union() {
						translate(v = [0, 0, 4.25]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [0, 0, -3.25]) {
											pulley_gt2(depth = 6.5, number_of_teeth = 24, tooth_depth_clearance = 0.0, tooth_width_clearance = 0.2);
										}
										translate(v = [0, 0, -4.25]) {
											cylinder(h = 1.0, r = 8.385437268410977);
										}
										translate(v = [0, 0, 3.25]) {
											cylinder(h = 1.0, r = 8.385437268410977);
										}
									}
									union() {
										translate(v = [0, 0, -5.25]) {
											cylinder(h = 10.5, r = 3.25);
										}
									}
								}
							}
						}
					}
					union();
				}
			}
		}
	}
	union();
}
