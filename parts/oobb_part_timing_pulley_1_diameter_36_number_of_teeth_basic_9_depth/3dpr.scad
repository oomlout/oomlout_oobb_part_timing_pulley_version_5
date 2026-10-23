$fn = 50;

use <pulley_gt2.scad>;

difference() {
	union() {
		translate(v = [0, 0, 0]) {
			rotate(a = [0, 0, 0]) {
				difference() {
					union() {
						translate(v = [0, 0, 5.75]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [0, 0, -4.75]) {
											pulley_gt2(depth = 9.5, number_of_teeth = 36, tooth_depth_clearance = 0.0, tooth_width_clearance = 0.2);
										}
										translate(v = [0, 0, -5.75]) {
											cylinder(h = 1.0, r = 12.205155902616465);
										}
										translate(v = [0, 0, 4.75]) {
											cylinder(h = 1.0, r = 12.205155902616465);
										}
									}
									union() {
										translate(v = [0, 0, -6.75]) {
											cylinder(h = 13.5, r = 3.25);
										}
										translate(v = [-7.5, 0.0, -6.75]) {
											cylinder(h = 13.5, r = 1.8);
										}
										translate(v = [0.0, -7.5, -6.75]) {
											cylinder(h = 13.5, r = 1.8);
										}
										translate(v = [0.0, 7.5, -6.75]) {
											cylinder(h = 13.5, r = 1.8);
										}
										translate(v = [7.5, 0.0, -6.75]) {
											cylinder(h = 13.5, r = 1.8);
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
