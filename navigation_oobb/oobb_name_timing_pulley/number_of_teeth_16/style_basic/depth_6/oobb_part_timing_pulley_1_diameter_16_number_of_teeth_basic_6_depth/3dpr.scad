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
											pulley_gt2(depth = 6.5, number_of_teeth = 16, tooth_depth_clearance = 0.0, tooth_width_clearance = 0.2);
										}
										translate(v = [0, 0, -4.25]) {
											cylinder(h = 1.0, r = 5.838958178940651);
										}
										translate(v = [0, 0, 3.25]) {
											cylinder(h = 1.0, r = 5.838958178940651);
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
