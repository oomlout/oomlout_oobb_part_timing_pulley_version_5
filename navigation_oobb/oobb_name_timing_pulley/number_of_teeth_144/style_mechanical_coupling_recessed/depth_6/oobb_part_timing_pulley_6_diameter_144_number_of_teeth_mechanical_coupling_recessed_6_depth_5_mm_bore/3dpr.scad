$fn = 50;

use <pulley_gt2.scad>;

difference() {
	union() {
		translate(v = [0, 0, 0]) {
			rotate(a = [0, 0, 0]) {
				difference() {
					union() {
						translate(v = [0, 0, 0.75]) {
							rotate(a = [180, 0, 0]) {
								difference() {
									union() {
										translate(v = [0, 0, -3.25]) {
											pulley_gt2(depth = 6.5, number_of_teeth = 144, tooth_depth_clearance = 0.0, tooth_width_clearance = 0.2);
										}
										translate(v = [0, 0, -4.25]) {
											cylinder(h = 1.0, r = 46.58262361046586);
										}
										translate(v = [0, 0, 3.25]) {
											cylinder(h = 1.0, r = 46.58262361046586);
										}
									}
									union() {
										translate(v = [5.656854249492381, 5.656854249492381, 4.25]) {
											rotate(a = [0, 0, 0]) {
												difference() {
													union() {
														translate(v = [0, 0, -13.5]) {
															rotate(a = [0, 0, 0]) {
																difference() {
																	union() {
																		translate(v = [-1.75, -3.25, -0.3]) {
																			cube(size = [3.5, 6.5, 0.3]);
																		}
																		translate(v = [-1.75, -1.75, -0.6]) {
																			cube(size = [3.5, 3.5, 0.3]);
																		}
																		translate(v = [-1.75, -3.25, 2.5]) {
																			cube(size = [3.5, 6.5, 0.3]);
																		}
																		translate(v = [-1.75, -1.75, 2.8]) {
																			cube(size = [3.5, 3.5, 0.3]);
																		}
																		linear_extrude(height = 2.5) {
																			polygon(points = [[3.4619999999999997, 0.0], [1.7310000000000003, 2.9981799479017264], [-1.7309999999999992, 2.9981799479017264], [-3.4619999999999997, 4.2397272186481365e-16], [-1.7310000000000014, -2.998179947901726], [1.7309999999999977, -2.9981799479017277]]);
																		}
																		translate(v = [-1.75, -3.25, -0.3]) {
																			cube(size = [3.5, 6.5, 0.3]);
																		}
																		translate(v = [-1.75, -1.75, -0.6]) {
																			cube(size = [3.5, 3.5, 0.3]);
																		}
																		translate(v = [-1.75, -3.25, 2.5]) {
																			cube(size = [3.5, 6.5, 0.3]);
																		}
																		translate(v = [-1.75, -1.75, 2.8]) {
																			cube(size = [3.5, 3.5, 0.3]);
																		}
																		translate(v = [-1.75, -3.25, -0.3]) {
																			cube(size = [3.5, 6.5, 0.3]);
																		}
																		translate(v = [-1.75, -1.75, -0.6]) {
																			cube(size = [3.5, 3.5, 0.3]);
																		}
																		translate(v = [-1.75, -3.25, 2.5]) {
																			cube(size = [3.5, 6.5, 0.3]);
																		}
																		translate(v = [-1.75, -1.75, 2.8]) {
																			cube(size = [3.5, 3.5, 0.3]);
																		}
																	}
																	union();
																}
															}
														}
														translate(v = [0, 0, -13.5]) {
															rotate(a = [0, 0, 0]) {
																difference() {
																	union() {
																		translate(v = [-1.75, -3.25, -0.3]) {
																			cube(size = [3.5, 6.5, 0.3]);
																		}
																		translate(v = [-1.75, -1.75, -0.6]) {
																			cube(size = [3.5, 3.5, 0.3]);
																		}
																		translate(v = [-1.75, -3.25, 2.5]) {
																			cube(size = [3.5, 6.5, 0.3]);
																		}
																		translate(v = [-1.75, -1.75, 2.8]) {
																			cube(size = [3.5, 3.5, 0.3]);
																		}
																		linear_extrude(height = 2.5) {
																			polygon(points = [[3.4619999999999997, 0.0], [1.7310000000000003, 2.9981799479017264], [-1.7309999999999992, 2.9981799479017264], [-3.4619999999999997, 4.2397272186481365e-16], [-1.7310000000000014, -2.998179947901726], [1.7309999999999977, -2.9981799479017277]]);
																		}
																		translate(v = [-1.75, -3.25, -0.3]) {
																			cube(size = [3.5, 6.5, 0.3]);
																		}
																		translate(v = [-1.75, -1.75, -0.6]) {
																			cube(size = [3.5, 3.5, 0.3]);
																		}
																		translate(v = [-1.75, -3.25, 2.5]) {
																			cube(size = [3.5, 6.5, 0.3]);
																		}
																		translate(v = [-1.75, -1.75, 2.8]) {
																			cube(size = [3.5, 3.5, 0.3]);
																		}
																		translate(v = [-1.75, -3.25, -0.3]) {
																			cube(size = [3.5, 6.5, 0.3]);
																		}
																		translate(v = [-1.75, -1.75, -0.6]) {
																			cube(size = [3.5, 3.5, 0.3]);
																		}
																		translate(v = [-1.75, -3.25, 2.5]) {
																			cube(size = [3.5, 6.5, 0.3]);
																		}
																		translate(v = [-1.75, -1.75, 2.8]) {
																			cube(size = [3.5, 3.5, 0.3]);
																		}
																	}
																	union();
																}
															}
														}
														translate(v = [0, 0, -13.5]) {
															rotate(a = [0, 0, 0]) {
																difference() {
																	union() {
																		translate(v = [-1.75, -3.25, -0.3]) {
																			cube(size = [3.5, 6.5, 0.3]);
																		}
																		translate(v = [-1.75, -1.75, -0.6]) {
																			cube(size = [3.5, 3.5, 0.3]);
																		}
																		translate(v = [-1.75, -3.25, 2.5]) {
																			cube(size = [3.5, 6.5, 0.3]);
																		}
																		translate(v = [-1.75, -1.75, 2.8]) {
																			cube(size = [3.5, 3.5, 0.3]);
																		}
																		linear_extrude(height = 2.5) {
																			polygon(points = [[3.4619999999999997, 0.0], [1.7310000000000003, 2.9981799479017264], [-1.7309999999999992, 2.9981799479017264], [-3.4619999999999997, 4.2397272186481365e-16], [-1.7310000000000014, -2.998179947901726], [1.7309999999999977, -2.9981799479017277]]);
																		}
																		translate(v = [-1.75, -3.25, -0.3]) {
																			cube(size = [3.5, 6.5, 0.3]);
																		}
																		translate(v = [-1.75, -1.75, -0.6]) {
																			cube(size = [3.5, 3.5, 0.3]);
																		}
																		translate(v = [-1.75, -3.25, 2.5]) {
																			cube(size = [3.5, 6.5, 0.3]);
																		}
																		translate(v = [-1.75, -1.75, 2.8]) {
																			cube(size = [3.5, 3.5, 0.3]);
																		}
																		translate(v = [-1.75, -3.25, -0.3]) {
																			cube(size = [3.5, 6.5, 0.3]);
																		}
																		translate(v = [-1.75, -1.75, -0.6]) {
																			cube(size = [3.5, 3.5, 0.3]);
																		}
																		translate(v = [-1.75, -3.25, 2.5]) {
																			cube(size = [3.5, 6.5, 0.3]);
																		}
																		translate(v = [-1.75, -1.75, 2.8]) {
																			cube(size = [3.5, 3.5, 0.3]);
																		}
																	}
																	union();
																}
															}
														}
														translate(v = [0, 0, -13.5]) {
															cylinder(h = 13.5, r = 1.5);
														}
														translate(v = [0, 0, -1.9]) {
															cylinder(h = 1.9, r1 = 1.8, r2 = 3.6);
														}
														translate(v = [0, 0, -13.5]) {
															cylinder(h = 13.5, r = 1.8);
														}
														translate(v = [0, 0, -13.5]) {
															cylinder(h = 13.5, r = 1.5);
														}
													}
													union();
												}
											}
										}
										translate(v = [-5.65685424949238, 5.656854249492381, 4.25]) {
											rotate(a = [0, 0, 0]) {
												difference() {
													union() {
														translate(v = [0, 0, -13.5]) {
															rotate(a = [0, 0, 0]) {
																difference() {
																	union() {
																		translate(v = [-1.75, -3.25, -0.3]) {
																			cube(size = [3.5, 6.5, 0.3]);
																		}
																		translate(v = [-1.75, -1.75, -0.6]) {
																			cube(size = [3.5, 3.5, 0.3]);
																		}
																		translate(v = [-1.75, -3.25, 2.5]) {
																			cube(size = [3.5, 6.5, 0.3]);
																		}
																		translate(v = [-1.75, -1.75, 2.8]) {
																			cube(size = [3.5, 3.5, 0.3]);
																		}
																		linear_extrude(height = 2.5) {
																			polygon(points = [[3.4619999999999997, 0.0], [1.7310000000000003, 2.9981799479017264], [-1.7309999999999992, 2.9981799479017264], [-3.4619999999999997, 4.2397272186481365e-16], [-1.7310000000000014, -2.998179947901726], [1.7309999999999977, -2.9981799479017277]]);
																		}
																		translate(v = [-1.75, -3.25, -0.3]) {
																			cube(size = [3.5, 6.5, 0.3]);
																		}
																		translate(v = [-1.75, -1.75, -0.6]) {
																			cube(size = [3.5, 3.5, 0.3]);
																		}
																		translate(v = [-1.75, -3.25, 2.5]) {
																			cube(size = [3.5, 6.5, 0.3]);
																		}
																		translate(v = [-1.75, -1.75, 2.8]) {
																			cube(size = [3.5, 3.5, 0.3]);
																		}
																		translate(v = [-1.75, -3.25, -0.3]) {
																			cube(size = [3.5, 6.5, 0.3]);
																		}
																		translate(v = [-1.75, -1.75, -0.6]) {
																			cube(size = [3.5, 3.5, 0.3]);
																		}
																		translate(v = [-1.75, -3.25, 2.5]) {
																			cube(size = [3.5, 6.5, 0.3]);
																		}
																		translate(v = [-1.75, -1.75, 2.8]) {
																			cube(size = [3.5, 3.5, 0.3]);
																		}
																	}
																	union();
																}
															}
														}
														translate(v = [0, 0, -13.5]) {
															rotate(a = [0, 0, 0]) {
																difference() {
																	union() {
																		translate(v = [-1.75, -3.25, -0.3]) {
																			cube(size = [3.5, 6.5, 0.3]);
																		}
																		translate(v = [-1.75, -1.75, -0.6]) {
																			cube(size = [3.5, 3.5, 0.3]);
																		}
																		translate(v = [-1.75, -3.25, 2.5]) {
																			cube(size = [3.5, 6.5, 0.3]);
																		}
																		translate(v = [-1.75, -1.75, 2.8]) {
																			cube(size = [3.5, 3.5, 0.3]);
																		}
																		linear_extrude(height = 2.5) {
																			polygon(points = [[3.4619999999999997, 0.0], [1.7310000000000003, 2.9981799479017264], [-1.7309999999999992, 2.9981799479017264], [-3.4619999999999997, 4.2397272186481365e-16], [-1.7310000000000014, -2.998179947901726], [1.7309999999999977, -2.9981799479017277]]);
																		}
																		translate(v = [-1.75, -3.25, -0.3]) {
																			cube(size = [3.5, 6.5, 0.3]);
																		}
																		translate(v = [-1.75, -1.75, -0.6]) {
																			cube(size = [3.5, 3.5, 0.3]);
																		}
																		translate(v = [-1.75, -3.25, 2.5]) {
																			cube(size = [3.5, 6.5, 0.3]);
																		}
																		translate(v = [-1.75, -1.75, 2.8]) {
																			cube(size = [3.5, 3.5, 0.3]);
																		}
																		translate(v = [-1.75, -3.25, -0.3]) {
																			cube(size = [3.5, 6.5, 0.3]);
																		}
																		translate(v = [-1.75, -1.75, -0.6]) {
																			cube(size = [3.5, 3.5, 0.3]);
																		}
																		translate(v = [-1.75, -3.25, 2.5]) {
																			cube(size = [3.5, 6.5, 0.3]);
																		}
																		translate(v = [-1.75, -1.75, 2.8]) {
																			cube(size = [3.5, 3.5, 0.3]);
																		}
																	}
																	union();
																}
															}
														}
														translate(v = [0, 0, -13.5]) {
															rotate(a = [0, 0, 0]) {
																difference() {
																	union() {
																		translate(v = [-1.75, -3.25, -0.3]) {
																			cube(size = [3.5, 6.5, 0.3]);
																		}
																		translate(v = [-1.75, -1.75, -0.6]) {
																			cube(size = [3.5, 3.5, 0.3]);
																		}
																		translate(v = [-1.75, -3.25, 2.5]) {
																			cube(size = [3.5, 6.5, 0.3]);
																		}
																		translate(v = [-1.75, -1.75, 2.8]) {
																			cube(size = [3.5, 3.5, 0.3]);
																		}
																		linear_extrude(height = 2.5) {
																			polygon(points = [[3.4619999999999997, 0.0], [1.7310000000000003, 2.9981799479017264], [-1.7309999999999992, 2.9981799479017264], [-3.4619999999999997, 4.2397272186481365e-16], [-1.7310000000000014, -2.998179947901726], [1.7309999999999977, -2.9981799479017277]]);
																		}
																		translate(v = [-1.75, -3.25, -0.3]) {
																			cube(size = [3.5, 6.5, 0.3]);
																		}
																		translate(v = [-1.75, -1.75, -0.6]) {
																			cube(size = [3.5, 3.5, 0.3]);
																		}
																		translate(v = [-1.75, -3.25, 2.5]) {
																			cube(size = [3.5, 6.5, 0.3]);
																		}
																		translate(v = [-1.75, -1.75, 2.8]) {
																			cube(size = [3.5, 3.5, 0.3]);
																		}
																		translate(v = [-1.75, -3.25, -0.3]) {
																			cube(size = [3.5, 6.5, 0.3]);
																		}
																		translate(v = [-1.75, -1.75, -0.6]) {
																			cube(size = [3.5, 3.5, 0.3]);
																		}
																		translate(v = [-1.75, -3.25, 2.5]) {
																			cube(size = [3.5, 6.5, 0.3]);
																		}
																		translate(v = [-1.75, -1.75, 2.8]) {
																			cube(size = [3.5, 3.5, 0.3]);
																		}
																	}
																	union();
																}
															}
														}
														translate(v = [0, 0, -13.5]) {
															cylinder(h = 13.5, r = 1.5);
														}
														translate(v = [0, 0, -1.9]) {
															cylinder(h = 1.9, r1 = 1.8, r2 = 3.6);
														}
														translate(v = [0, 0, -13.5]) {
															cylinder(h = 13.5, r = 1.8);
														}
														translate(v = [0, 0, -13.5]) {
															cylinder(h = 13.5, r = 1.5);
														}
													}
													union();
												}
											}
										}
										translate(v = [-5.6568542494923815, -5.65685424949238, 4.25]) {
											rotate(a = [0, 0, 0]) {
												difference() {
													union() {
														translate(v = [0, 0, -13.5]) {
															rotate(a = [0, 0, 0]) {
																difference() {
																	union() {
																		translate(v = [-1.75, -3.25, -0.3]) {
																			cube(size = [3.5, 6.5, 0.3]);
																		}
																		translate(v = [-1.75, -1.75, -0.6]) {
																			cube(size = [3.5, 3.5, 0.3]);
																		}
																		translate(v = [-1.75, -3.25, 2.5]) {
																			cube(size = [3.5, 6.5, 0.3]);
																		}
																		translate(v = [-1.75, -1.75, 2.8]) {
																			cube(size = [3.5, 3.5, 0.3]);
																		}
																		linear_extrude(height = 2.5) {
																			polygon(points = [[3.4619999999999997, 0.0], [1.7310000000000003, 2.9981799479017264], [-1.7309999999999992, 2.9981799479017264], [-3.4619999999999997, 4.2397272186481365e-16], [-1.7310000000000014, -2.998179947901726], [1.7309999999999977, -2.9981799479017277]]);
																		}
																		translate(v = [-1.75, -3.25, -0.3]) {
																			cube(size = [3.5, 6.5, 0.3]);
																		}
																		translate(v = [-1.75, -1.75, -0.6]) {
																			cube(size = [3.5, 3.5, 0.3]);
																		}
																		translate(v = [-1.75, -3.25, 2.5]) {
																			cube(size = [3.5, 6.5, 0.3]);
																		}
																		translate(v = [-1.75, -1.75, 2.8]) {
																			cube(size = [3.5, 3.5, 0.3]);
																		}
																		translate(v = [-1.75, -3.25, -0.3]) {
																			cube(size = [3.5, 6.5, 0.3]);
																		}
																		translate(v = [-1.75, -1.75, -0.6]) {
																			cube(size = [3.5, 3.5, 0.3]);
																		}
																		translate(v = [-1.75, -3.25, 2.5]) {
																			cube(size = [3.5, 6.5, 0.3]);
																		}
																		translate(v = [-1.75, -1.75, 2.8]) {
																			cube(size = [3.5, 3.5, 0.3]);
																		}
																	}
																	union();
																}
															}
														}
														translate(v = [0, 0, -13.5]) {
															rotate(a = [0, 0, 0]) {
																difference() {
																	union() {
																		translate(v = [-1.75, -3.25, -0.3]) {
																			cube(size = [3.5, 6.5, 0.3]);
																		}
																		translate(v = [-1.75, -1.75, -0.6]) {
																			cube(size = [3.5, 3.5, 0.3]);
																		}
																		translate(v = [-1.75, -3.25, 2.5]) {
																			cube(size = [3.5, 6.5, 0.3]);
																		}
																		translate(v = [-1.75, -1.75, 2.8]) {
																			cube(size = [3.5, 3.5, 0.3]);
																		}
																		linear_extrude(height = 2.5) {
																			polygon(points = [[3.4619999999999997, 0.0], [1.7310000000000003, 2.9981799479017264], [-1.7309999999999992, 2.9981799479017264], [-3.4619999999999997, 4.2397272186481365e-16], [-1.7310000000000014, -2.998179947901726], [1.7309999999999977, -2.9981799479017277]]);
																		}
																		translate(v = [-1.75, -3.25, -0.3]) {
																			cube(size = [3.5, 6.5, 0.3]);
																		}
																		translate(v = [-1.75, -1.75, -0.6]) {
																			cube(size = [3.5, 3.5, 0.3]);
																		}
																		translate(v = [-1.75, -3.25, 2.5]) {
																			cube(size = [3.5, 6.5, 0.3]);
																		}
																		translate(v = [-1.75, -1.75, 2.8]) {
																			cube(size = [3.5, 3.5, 0.3]);
																		}
																		translate(v = [-1.75, -3.25, -0.3]) {
																			cube(size = [3.5, 6.5, 0.3]);
																		}
																		translate(v = [-1.75, -1.75, -0.6]) {
																			cube(size = [3.5, 3.5, 0.3]);
																		}
																		translate(v = [-1.75, -3.25, 2.5]) {
																			cube(size = [3.5, 6.5, 0.3]);
																		}
																		translate(v = [-1.75, -1.75, 2.8]) {
																			cube(size = [3.5, 3.5, 0.3]);
																		}
																	}
																	union();
																}
															}
														}
														translate(v = [0, 0, -13.5]) {
															rotate(a = [0, 0, 0]) {
																difference() {
																	union() {
																		translate(v = [-1.75, -3.25, -0.3]) {
																			cube(size = [3.5, 6.5, 0.3]);
																		}
																		translate(v = [-1.75, -1.75, -0.6]) {
																			cube(size = [3.5, 3.5, 0.3]);
																		}
																		translate(v = [-1.75, -3.25, 2.5]) {
																			cube(size = [3.5, 6.5, 0.3]);
																		}
																		translate(v = [-1.75, -1.75, 2.8]) {
																			cube(size = [3.5, 3.5, 0.3]);
																		}
																		linear_extrude(height = 2.5) {
																			polygon(points = [[3.4619999999999997, 0.0], [1.7310000000000003, 2.9981799479017264], [-1.7309999999999992, 2.9981799479017264], [-3.4619999999999997, 4.2397272186481365e-16], [-1.7310000000000014, -2.998179947901726], [1.7309999999999977, -2.9981799479017277]]);
																		}
																		translate(v = [-1.75, -3.25, -0.3]) {
																			cube(size = [3.5, 6.5, 0.3]);
																		}
																		translate(v = [-1.75, -1.75, -0.6]) {
																			cube(size = [3.5, 3.5, 0.3]);
																		}
																		translate(v = [-1.75, -3.25, 2.5]) {
																			cube(size = [3.5, 6.5, 0.3]);
																		}
																		translate(v = [-1.75, -1.75, 2.8]) {
																			cube(size = [3.5, 3.5, 0.3]);
																		}
																		translate(v = [-1.75, -3.25, -0.3]) {
																			cube(size = [3.5, 6.5, 0.3]);
																		}
																		translate(v = [-1.75, -1.75, -0.6]) {
																			cube(size = [3.5, 3.5, 0.3]);
																		}
																		translate(v = [-1.75, -3.25, 2.5]) {
																			cube(size = [3.5, 6.5, 0.3]);
																		}
																		translate(v = [-1.75, -1.75, 2.8]) {
																			cube(size = [3.5, 3.5, 0.3]);
																		}
																	}
																	union();
																}
															}
														}
														translate(v = [0, 0, -13.5]) {
															cylinder(h = 13.5, r = 1.5);
														}
														translate(v = [0, 0, -1.9]) {
															cylinder(h = 1.9, r1 = 1.8, r2 = 3.6);
														}
														translate(v = [0, 0, -13.5]) {
															cylinder(h = 13.5, r = 1.8);
														}
														translate(v = [0, 0, -13.5]) {
															cylinder(h = 13.5, r = 1.5);
														}
													}
													union();
												}
											}
										}
										translate(v = [5.656854249492379, -5.6568542494923815, 4.25]) {
											rotate(a = [0, 0, 0]) {
												difference() {
													union() {
														translate(v = [0, 0, -13.5]) {
															rotate(a = [0, 0, 0]) {
																difference() {
																	union() {
																		translate(v = [-1.75, -3.25, -0.3]) {
																			cube(size = [3.5, 6.5, 0.3]);
																		}
																		translate(v = [-1.75, -1.75, -0.6]) {
																			cube(size = [3.5, 3.5, 0.3]);
																		}
																		translate(v = [-1.75, -3.25, 2.5]) {
																			cube(size = [3.5, 6.5, 0.3]);
																		}
																		translate(v = [-1.75, -1.75, 2.8]) {
																			cube(size = [3.5, 3.5, 0.3]);
																		}
																		linear_extrude(height = 2.5) {
																			polygon(points = [[3.4619999999999997, 0.0], [1.7310000000000003, 2.9981799479017264], [-1.7309999999999992, 2.9981799479017264], [-3.4619999999999997, 4.2397272186481365e-16], [-1.7310000000000014, -2.998179947901726], [1.7309999999999977, -2.9981799479017277]]);
																		}
																		translate(v = [-1.75, -3.25, -0.3]) {
																			cube(size = [3.5, 6.5, 0.3]);
																		}
																		translate(v = [-1.75, -1.75, -0.6]) {
																			cube(size = [3.5, 3.5, 0.3]);
																		}
																		translate(v = [-1.75, -3.25, 2.5]) {
																			cube(size = [3.5, 6.5, 0.3]);
																		}
																		translate(v = [-1.75, -1.75, 2.8]) {
																			cube(size = [3.5, 3.5, 0.3]);
																		}
																		translate(v = [-1.75, -3.25, -0.3]) {
																			cube(size = [3.5, 6.5, 0.3]);
																		}
																		translate(v = [-1.75, -1.75, -0.6]) {
																			cube(size = [3.5, 3.5, 0.3]);
																		}
																		translate(v = [-1.75, -3.25, 2.5]) {
																			cube(size = [3.5, 6.5, 0.3]);
																		}
																		translate(v = [-1.75, -1.75, 2.8]) {
																			cube(size = [3.5, 3.5, 0.3]);
																		}
																	}
																	union();
																}
															}
														}
														translate(v = [0, 0, -13.5]) {
															rotate(a = [0, 0, 0]) {
																difference() {
																	union() {
																		translate(v = [-1.75, -3.25, -0.3]) {
																			cube(size = [3.5, 6.5, 0.3]);
																		}
																		translate(v = [-1.75, -1.75, -0.6]) {
																			cube(size = [3.5, 3.5, 0.3]);
																		}
																		translate(v = [-1.75, -3.25, 2.5]) {
																			cube(size = [3.5, 6.5, 0.3]);
																		}
																		translate(v = [-1.75, -1.75, 2.8]) {
																			cube(size = [3.5, 3.5, 0.3]);
																		}
																		linear_extrude(height = 2.5) {
																			polygon(points = [[3.4619999999999997, 0.0], [1.7310000000000003, 2.9981799479017264], [-1.7309999999999992, 2.9981799479017264], [-3.4619999999999997, 4.2397272186481365e-16], [-1.7310000000000014, -2.998179947901726], [1.7309999999999977, -2.9981799479017277]]);
																		}
																		translate(v = [-1.75, -3.25, -0.3]) {
																			cube(size = [3.5, 6.5, 0.3]);
																		}
																		translate(v = [-1.75, -1.75, -0.6]) {
																			cube(size = [3.5, 3.5, 0.3]);
																		}
																		translate(v = [-1.75, -3.25, 2.5]) {
																			cube(size = [3.5, 6.5, 0.3]);
																		}
																		translate(v = [-1.75, -1.75, 2.8]) {
																			cube(size = [3.5, 3.5, 0.3]);
																		}
																		translate(v = [-1.75, -3.25, -0.3]) {
																			cube(size = [3.5, 6.5, 0.3]);
																		}
																		translate(v = [-1.75, -1.75, -0.6]) {
																			cube(size = [3.5, 3.5, 0.3]);
																		}
																		translate(v = [-1.75, -3.25, 2.5]) {
																			cube(size = [3.5, 6.5, 0.3]);
																		}
																		translate(v = [-1.75, -1.75, 2.8]) {
																			cube(size = [3.5, 3.5, 0.3]);
																		}
																	}
																	union();
																}
															}
														}
														translate(v = [0, 0, -13.5]) {
															rotate(a = [0, 0, 0]) {
																difference() {
																	union() {
																		translate(v = [-1.75, -3.25, -0.3]) {
																			cube(size = [3.5, 6.5, 0.3]);
																		}
																		translate(v = [-1.75, -1.75, -0.6]) {
																			cube(size = [3.5, 3.5, 0.3]);
																		}
																		translate(v = [-1.75, -3.25, 2.5]) {
																			cube(size = [3.5, 6.5, 0.3]);
																		}
																		translate(v = [-1.75, -1.75, 2.8]) {
																			cube(size = [3.5, 3.5, 0.3]);
																		}
																		linear_extrude(height = 2.5) {
																			polygon(points = [[3.4619999999999997, 0.0], [1.7310000000000003, 2.9981799479017264], [-1.7309999999999992, 2.9981799479017264], [-3.4619999999999997, 4.2397272186481365e-16], [-1.7310000000000014, -2.998179947901726], [1.7309999999999977, -2.9981799479017277]]);
																		}
																		translate(v = [-1.75, -3.25, -0.3]) {
																			cube(size = [3.5, 6.5, 0.3]);
																		}
																		translate(v = [-1.75, -1.75, -0.6]) {
																			cube(size = [3.5, 3.5, 0.3]);
																		}
																		translate(v = [-1.75, -3.25, 2.5]) {
																			cube(size = [3.5, 6.5, 0.3]);
																		}
																		translate(v = [-1.75, -1.75, 2.8]) {
																			cube(size = [3.5, 3.5, 0.3]);
																		}
																		translate(v = [-1.75, -3.25, -0.3]) {
																			cube(size = [3.5, 6.5, 0.3]);
																		}
																		translate(v = [-1.75, -1.75, -0.6]) {
																			cube(size = [3.5, 3.5, 0.3]);
																		}
																		translate(v = [-1.75, -3.25, 2.5]) {
																			cube(size = [3.5, 6.5, 0.3]);
																		}
																		translate(v = [-1.75, -1.75, 2.8]) {
																			cube(size = [3.5, 3.5, 0.3]);
																		}
																	}
																	union();
																}
															}
														}
														translate(v = [0, 0, -13.5]) {
															cylinder(h = 13.5, r = 1.5);
														}
														translate(v = [0, 0, -1.9]) {
															cylinder(h = 1.9, r1 = 1.8, r2 = 3.6);
														}
														translate(v = [0, 0, -13.5]) {
															cylinder(h = 13.5, r = 1.8);
														}
														translate(v = [0, 0, -13.5]) {
															cylinder(h = 13.5, r = 1.5);
														}
													}
													union();
												}
											}
										}
										translate(v = [0, 0, 0.75]) {
											rotate(a = [0, 90, 0]) {
												cylinder(h = 48.58262361046586, r = 2.0);
											}
										}
										translate(v = [0, 0, 0.75]) {
											rotate(a = [-90, 0, 0]) {
												cylinder(h = 48.58262361046586, r = 2.0);
											}
										}
										translate(v = [0, 0, -5.25]) {
											cylinder(h = 10.5, r = 5.2);
										}
										translate(v = [-37.5, -15.0, -5.25]) {
											cylinder(h = 10.5, r = 1.8);
										}
										translate(v = [-37.5, -7.5, -5.25]) {
											cylinder(h = 10.5, r = 1.8);
										}
										translate(v = [-37.5, 0.0, -5.25]) {
											cylinder(h = 10.5, r = 1.8);
										}
										translate(v = [-37.5, 7.5, -5.25]) {
											cylinder(h = 10.5, r = 1.8);
										}
										translate(v = [-37.5, 15.0, -5.25]) {
											cylinder(h = 10.5, r = 1.8);
										}
										translate(v = [-30.0, -22.5, -5.25]) {
											cylinder(h = 10.5, r = 1.8);
										}
										translate(v = [-30.0, -15.0, -5.25]) {
											cylinder(h = 10.5, r = 3.25);
										}
										translate(v = [-30.0, -7.5, -5.25]) {
											cylinder(h = 10.5, r = 1.8);
										}
										translate(v = [-30.0, 0.0, -5.25]) {
											cylinder(h = 10.5, r = 3.25);
										}
										translate(v = [-30.0, 7.5, -5.25]) {
											cylinder(h = 10.5, r = 1.8);
										}
										translate(v = [-30.0, 15.0, -5.25]) {
											cylinder(h = 10.5, r = 3.25);
										}
										translate(v = [-30.0, 22.5, -5.25]) {
											cylinder(h = 10.5, r = 1.8);
										}
										translate(v = [-22.5, -30.0, -5.25]) {
											cylinder(h = 10.5, r = 1.8);
										}
										translate(v = [-22.5, -22.5, -5.25]) {
											cylinder(h = 10.5, r = 1.8);
										}
										translate(v = [-22.5, -15.0, -5.25]) {
											cylinder(h = 10.5, r = 1.8);
										}
										translate(v = [-22.5, -7.5, -5.25]) {
											cylinder(h = 10.5, r = 1.8);
										}
										translate(v = [-22.5, 0.0, -5.25]) {
											cylinder(h = 10.5, r = 1.8);
										}
										translate(v = [-22.5, 7.5, -5.25]) {
											cylinder(h = 10.5, r = 1.8);
										}
										translate(v = [-22.5, 15.0, -5.25]) {
											cylinder(h = 10.5, r = 1.8);
										}
										translate(v = [-22.5, 22.5, -5.25]) {
											cylinder(h = 10.5, r = 1.8);
										}
										translate(v = [-22.5, 30.0, -5.25]) {
											cylinder(h = 10.5, r = 1.8);
										}
										translate(v = [-15.0, -37.5, -5.25]) {
											cylinder(h = 10.5, r = 1.8);
										}
										translate(v = [-15.0, -30.0, -5.25]) {
											cylinder(h = 10.5, r = 3.25);
										}
										translate(v = [-15.0, -22.5, -5.25]) {
											cylinder(h = 10.5, r = 1.8);
										}
										translate(v = [-15.0, -15.0, -5.25]) {
											cylinder(h = 10.5, r = 3.25);
										}
										translate(v = [-15.0, -7.5, -5.25]) {
											cylinder(h = 10.5, r = 1.8);
										}
										translate(v = [-15.0, 0.0, -5.25]) {
											cylinder(h = 10.5, r = 3.25);
										}
										translate(v = [-15.0, 7.5, -5.25]) {
											cylinder(h = 10.5, r = 1.8);
										}
										translate(v = [-15.0, 15.0, -5.25]) {
											cylinder(h = 10.5, r = 3.25);
										}
										translate(v = [-15.0, 22.5, -5.25]) {
											cylinder(h = 10.5, r = 1.8);
										}
										translate(v = [-15.0, 30.0, -5.25]) {
											cylinder(h = 10.5, r = 3.25);
										}
										translate(v = [-15.0, 37.5, -5.25]) {
											cylinder(h = 10.5, r = 1.8);
										}
										translate(v = [-7.5, -37.5, -5.25]) {
											cylinder(h = 10.5, r = 1.8);
										}
										translate(v = [-7.5, -30.0, -5.25]) {
											cylinder(h = 10.5, r = 1.8);
										}
										translate(v = [-7.5, -22.5, -5.25]) {
											cylinder(h = 10.5, r = 1.8);
										}
										translate(v = [-7.5, -15.0, -5.25]) {
											cylinder(h = 10.5, r = 1.8);
										}
										translate(v = [-7.5, 15.0, -5.25]) {
											cylinder(h = 10.5, r = 1.8);
										}
										translate(v = [-7.5, 22.5, -5.25]) {
											cylinder(h = 10.5, r = 1.8);
										}
										translate(v = [-7.5, 30.0, -5.25]) {
											cylinder(h = 10.5, r = 1.8);
										}
										translate(v = [-7.5, 37.5, -5.25]) {
											cylinder(h = 10.5, r = 1.8);
										}
										translate(v = [0.0, -37.5, -5.25]) {
											cylinder(h = 10.5, r = 1.8);
										}
										translate(v = [0.0, -30.0, -5.25]) {
											cylinder(h = 10.5, r = 3.25);
										}
										translate(v = [0.0, -22.5, -5.25]) {
											cylinder(h = 10.5, r = 1.8);
										}
										translate(v = [0.0, -15.0, -5.25]) {
											cylinder(h = 10.5, r = 3.25);
										}
										translate(v = [7.5, -37.5, -5.25]) {
											cylinder(h = 10.5, r = 1.8);
										}
										translate(v = [7.5, -30.0, -5.25]) {
											cylinder(h = 10.5, r = 1.8);
										}
										translate(v = [7.5, -22.5, -5.25]) {
											cylinder(h = 10.5, r = 1.8);
										}
										translate(v = [7.5, -15.0, -5.25]) {
											cylinder(h = 10.5, r = 1.8);
										}
										translate(v = [7.5, 15.0, -5.25]) {
											cylinder(h = 10.5, r = 1.8);
										}
										translate(v = [7.5, 22.5, -5.25]) {
											cylinder(h = 10.5, r = 1.8);
										}
										translate(v = [7.5, 30.0, -5.25]) {
											cylinder(h = 10.5, r = 1.8);
										}
										translate(v = [7.5, 37.5, -5.25]) {
											cylinder(h = 10.5, r = 1.8);
										}
										translate(v = [15.0, -37.5, -5.25]) {
											cylinder(h = 10.5, r = 1.8);
										}
										translate(v = [15.0, -30.0, -5.25]) {
											cylinder(h = 10.5, r = 3.25);
										}
										translate(v = [15.0, -22.5, -5.25]) {
											cylinder(h = 10.5, r = 1.8);
										}
										translate(v = [15.0, -15.0, -5.25]) {
											cylinder(h = 10.5, r = 3.25);
										}
										translate(v = [15.0, -7.5, -5.25]) {
											cylinder(h = 10.5, r = 1.8);
										}
										translate(v = [15.0, 7.5, -5.25]) {
											cylinder(h = 10.5, r = 1.8);
										}
										translate(v = [15.0, 15.0, -5.25]) {
											cylinder(h = 10.5, r = 3.25);
										}
										translate(v = [15.0, 22.5, -5.25]) {
											cylinder(h = 10.5, r = 1.8);
										}
										translate(v = [15.0, 30.0, -5.25]) {
											cylinder(h = 10.5, r = 3.25);
										}
										translate(v = [15.0, 37.5, -5.25]) {
											cylinder(h = 10.5, r = 1.8);
										}
										translate(v = [22.5, -30.0, -5.25]) {
											cylinder(h = 10.5, r = 1.8);
										}
										translate(v = [22.5, -22.5, -5.25]) {
											cylinder(h = 10.5, r = 1.8);
										}
										translate(v = [22.5, -15.0, -5.25]) {
											cylinder(h = 10.5, r = 1.8);
										}
										translate(v = [22.5, -7.5, -5.25]) {
											cylinder(h = 10.5, r = 1.8);
										}
										translate(v = [22.5, 7.5, -5.25]) {
											cylinder(h = 10.5, r = 1.8);
										}
										translate(v = [22.5, 15.0, -5.25]) {
											cylinder(h = 10.5, r = 1.8);
										}
										translate(v = [22.5, 22.5, -5.25]) {
											cylinder(h = 10.5, r = 1.8);
										}
										translate(v = [22.5, 30.0, -5.25]) {
											cylinder(h = 10.5, r = 1.8);
										}
										translate(v = [30.0, -22.5, -5.25]) {
											cylinder(h = 10.5, r = 1.8);
										}
										translate(v = [30.0, -15.0, -5.25]) {
											cylinder(h = 10.5, r = 3.25);
										}
										translate(v = [30.0, -7.5, -5.25]) {
											cylinder(h = 10.5, r = 1.8);
										}
										translate(v = [30.0, 7.5, -5.25]) {
											cylinder(h = 10.5, r = 1.8);
										}
										translate(v = [30.0, 15.0, -5.25]) {
											cylinder(h = 10.5, r = 3.25);
										}
										translate(v = [30.0, 22.5, -5.25]) {
											cylinder(h = 10.5, r = 1.8);
										}
										translate(v = [37.5, -15.0, -5.25]) {
											cylinder(h = 10.5, r = 1.8);
										}
										translate(v = [37.5, -7.5, -5.25]) {
											cylinder(h = 10.5, r = 1.8);
										}
										translate(v = [37.5, 7.5, -5.25]) {
											cylinder(h = 10.5, r = 1.8);
										}
										translate(v = [37.5, 15.0, -5.25]) {
											cylinder(h = 10.5, r = 1.8);
										}
										translate(v = [-113.16524722093172, -113.16524722093172, 0.75]) {
											cube(size = [226.33049444186344, 226.33049444186344, 113.16524722093172]);
										}
									}
								}
							}
						}
						translate(v = [103.16524722093172, 0, -0.75]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [0, 0, -3.25]) {
											pulley_gt2(depth = 6.5, number_of_teeth = 144, tooth_depth_clearance = 0.0, tooth_width_clearance = 0.2);
										}
										translate(v = [0, 0, -4.25]) {
											cylinder(h = 1.0, r = 46.58262361046586);
										}
										translate(v = [0, 0, 3.25]) {
											cylinder(h = 1.0, r = 46.58262361046586);
										}
									}
									union() {
										translate(v = [5.656854249492381, 5.656854249492381, 4.25]) {
											rotate(a = [0, 0, 0]) {
												difference() {
													union() {
														translate(v = [0, 0, -13.5]) {
															rotate(a = [0, 0, 0]) {
																difference() {
																	union() {
																		translate(v = [-1.75, -3.25, -0.3]) {
																			cube(size = [3.5, 6.5, 0.3]);
																		}
																		translate(v = [-1.75, -1.75, -0.6]) {
																			cube(size = [3.5, 3.5, 0.3]);
																		}
																		translate(v = [-1.75, -3.25, 2.5]) {
																			cube(size = [3.5, 6.5, 0.3]);
																		}
																		translate(v = [-1.75, -1.75, 2.8]) {
																			cube(size = [3.5, 3.5, 0.3]);
																		}
																		linear_extrude(height = 2.5) {
																			polygon(points = [[3.4619999999999997, 0.0], [1.7310000000000003, 2.9981799479017264], [-1.7309999999999992, 2.9981799479017264], [-3.4619999999999997, 4.2397272186481365e-16], [-1.7310000000000014, -2.998179947901726], [1.7309999999999977, -2.9981799479017277]]);
																		}
																		translate(v = [-1.75, -3.25, -0.3]) {
																			cube(size = [3.5, 6.5, 0.3]);
																		}
																		translate(v = [-1.75, -1.75, -0.6]) {
																			cube(size = [3.5, 3.5, 0.3]);
																		}
																		translate(v = [-1.75, -3.25, 2.5]) {
																			cube(size = [3.5, 6.5, 0.3]);
																		}
																		translate(v = [-1.75, -1.75, 2.8]) {
																			cube(size = [3.5, 3.5, 0.3]);
																		}
																		translate(v = [-1.75, -3.25, -0.3]) {
																			cube(size = [3.5, 6.5, 0.3]);
																		}
																		translate(v = [-1.75, -1.75, -0.6]) {
																			cube(size = [3.5, 3.5, 0.3]);
																		}
																		translate(v = [-1.75, -3.25, 2.5]) {
																			cube(size = [3.5, 6.5, 0.3]);
																		}
																		translate(v = [-1.75, -1.75, 2.8]) {
																			cube(size = [3.5, 3.5, 0.3]);
																		}
																	}
																	union();
																}
															}
														}
														translate(v = [0, 0, -13.5]) {
															rotate(a = [0, 0, 0]) {
																difference() {
																	union() {
																		translate(v = [-1.75, -3.25, -0.3]) {
																			cube(size = [3.5, 6.5, 0.3]);
																		}
																		translate(v = [-1.75, -1.75, -0.6]) {
																			cube(size = [3.5, 3.5, 0.3]);
																		}
																		translate(v = [-1.75, -3.25, 2.5]) {
																			cube(size = [3.5, 6.5, 0.3]);
																		}
																		translate(v = [-1.75, -1.75, 2.8]) {
																			cube(size = [3.5, 3.5, 0.3]);
																		}
																		linear_extrude(height = 2.5) {
																			polygon(points = [[3.4619999999999997, 0.0], [1.7310000000000003, 2.9981799479017264], [-1.7309999999999992, 2.9981799479017264], [-3.4619999999999997, 4.2397272186481365e-16], [-1.7310000000000014, -2.998179947901726], [1.7309999999999977, -2.9981799479017277]]);
																		}
																		translate(v = [-1.75, -3.25, -0.3]) {
																			cube(size = [3.5, 6.5, 0.3]);
																		}
																		translate(v = [-1.75, -1.75, -0.6]) {
																			cube(size = [3.5, 3.5, 0.3]);
																		}
																		translate(v = [-1.75, -3.25, 2.5]) {
																			cube(size = [3.5, 6.5, 0.3]);
																		}
																		translate(v = [-1.75, -1.75, 2.8]) {
																			cube(size = [3.5, 3.5, 0.3]);
																		}
																		translate(v = [-1.75, -3.25, -0.3]) {
																			cube(size = [3.5, 6.5, 0.3]);
																		}
																		translate(v = [-1.75, -1.75, -0.6]) {
																			cube(size = [3.5, 3.5, 0.3]);
																		}
																		translate(v = [-1.75, -3.25, 2.5]) {
																			cube(size = [3.5, 6.5, 0.3]);
																		}
																		translate(v = [-1.75, -1.75, 2.8]) {
																			cube(size = [3.5, 3.5, 0.3]);
																		}
																	}
																	union();
																}
															}
														}
														translate(v = [0, 0, -13.5]) {
															rotate(a = [0, 0, 0]) {
																difference() {
																	union() {
																		translate(v = [-1.75, -3.25, -0.3]) {
																			cube(size = [3.5, 6.5, 0.3]);
																		}
																		translate(v = [-1.75, -1.75, -0.6]) {
																			cube(size = [3.5, 3.5, 0.3]);
																		}
																		translate(v = [-1.75, -3.25, 2.5]) {
																			cube(size = [3.5, 6.5, 0.3]);
																		}
																		translate(v = [-1.75, -1.75, 2.8]) {
																			cube(size = [3.5, 3.5, 0.3]);
																		}
																		linear_extrude(height = 2.5) {
																			polygon(points = [[3.4619999999999997, 0.0], [1.7310000000000003, 2.9981799479017264], [-1.7309999999999992, 2.9981799479017264], [-3.4619999999999997, 4.2397272186481365e-16], [-1.7310000000000014, -2.998179947901726], [1.7309999999999977, -2.9981799479017277]]);
																		}
																		translate(v = [-1.75, -3.25, -0.3]) {
																			cube(size = [3.5, 6.5, 0.3]);
																		}
																		translate(v = [-1.75, -1.75, -0.6]) {
																			cube(size = [3.5, 3.5, 0.3]);
																		}
																		translate(v = [-1.75, -3.25, 2.5]) {
																			cube(size = [3.5, 6.5, 0.3]);
																		}
																		translate(v = [-1.75, -1.75, 2.8]) {
																			cube(size = [3.5, 3.5, 0.3]);
																		}
																		translate(v = [-1.75, -3.25, -0.3]) {
																			cube(size = [3.5, 6.5, 0.3]);
																		}
																		translate(v = [-1.75, -1.75, -0.6]) {
																			cube(size = [3.5, 3.5, 0.3]);
																		}
																		translate(v = [-1.75, -3.25, 2.5]) {
																			cube(size = [3.5, 6.5, 0.3]);
																		}
																		translate(v = [-1.75, -1.75, 2.8]) {
																			cube(size = [3.5, 3.5, 0.3]);
																		}
																	}
																	union();
																}
															}
														}
														translate(v = [0, 0, -13.5]) {
															cylinder(h = 13.5, r = 1.5);
														}
														translate(v = [0, 0, -1.9]) {
															cylinder(h = 1.9, r1 = 1.8, r2 = 3.6);
														}
														translate(v = [0, 0, -13.5]) {
															cylinder(h = 13.5, r = 1.8);
														}
														translate(v = [0, 0, -13.5]) {
															cylinder(h = 13.5, r = 1.5);
														}
													}
													union();
												}
											}
										}
										translate(v = [-5.65685424949238, 5.656854249492381, 4.25]) {
											rotate(a = [0, 0, 0]) {
												difference() {
													union() {
														translate(v = [0, 0, -13.5]) {
															rotate(a = [0, 0, 0]) {
																difference() {
																	union() {
																		translate(v = [-1.75, -3.25, -0.3]) {
																			cube(size = [3.5, 6.5, 0.3]);
																		}
																		translate(v = [-1.75, -1.75, -0.6]) {
																			cube(size = [3.5, 3.5, 0.3]);
																		}
																		translate(v = [-1.75, -3.25, 2.5]) {
																			cube(size = [3.5, 6.5, 0.3]);
																		}
																		translate(v = [-1.75, -1.75, 2.8]) {
																			cube(size = [3.5, 3.5, 0.3]);
																		}
																		linear_extrude(height = 2.5) {
																			polygon(points = [[3.4619999999999997, 0.0], [1.7310000000000003, 2.9981799479017264], [-1.7309999999999992, 2.9981799479017264], [-3.4619999999999997, 4.2397272186481365e-16], [-1.7310000000000014, -2.998179947901726], [1.7309999999999977, -2.9981799479017277]]);
																		}
																		translate(v = [-1.75, -3.25, -0.3]) {
																			cube(size = [3.5, 6.5, 0.3]);
																		}
																		translate(v = [-1.75, -1.75, -0.6]) {
																			cube(size = [3.5, 3.5, 0.3]);
																		}
																		translate(v = [-1.75, -3.25, 2.5]) {
																			cube(size = [3.5, 6.5, 0.3]);
																		}
																		translate(v = [-1.75, -1.75, 2.8]) {
																			cube(size = [3.5, 3.5, 0.3]);
																		}
																		translate(v = [-1.75, -3.25, -0.3]) {
																			cube(size = [3.5, 6.5, 0.3]);
																		}
																		translate(v = [-1.75, -1.75, -0.6]) {
																			cube(size = [3.5, 3.5, 0.3]);
																		}
																		translate(v = [-1.75, -3.25, 2.5]) {
																			cube(size = [3.5, 6.5, 0.3]);
																		}
																		translate(v = [-1.75, -1.75, 2.8]) {
																			cube(size = [3.5, 3.5, 0.3]);
																		}
																	}
																	union();
																}
															}
														}
														translate(v = [0, 0, -13.5]) {
															rotate(a = [0, 0, 0]) {
																difference() {
																	union() {
																		translate(v = [-1.75, -3.25, -0.3]) {
																			cube(size = [3.5, 6.5, 0.3]);
																		}
																		translate(v = [-1.75, -1.75, -0.6]) {
																			cube(size = [3.5, 3.5, 0.3]);
																		}
																		translate(v = [-1.75, -3.25, 2.5]) {
																			cube(size = [3.5, 6.5, 0.3]);
																		}
																		translate(v = [-1.75, -1.75, 2.8]) {
																			cube(size = [3.5, 3.5, 0.3]);
																		}
																		linear_extrude(height = 2.5) {
																			polygon(points = [[3.4619999999999997, 0.0], [1.7310000000000003, 2.9981799479017264], [-1.7309999999999992, 2.9981799479017264], [-3.4619999999999997, 4.2397272186481365e-16], [-1.7310000000000014, -2.998179947901726], [1.7309999999999977, -2.9981799479017277]]);
																		}
																		translate(v = [-1.75, -3.25, -0.3]) {
																			cube(size = [3.5, 6.5, 0.3]);
																		}
																		translate(v = [-1.75, -1.75, -0.6]) {
																			cube(size = [3.5, 3.5, 0.3]);
																		}
																		translate(v = [-1.75, -3.25, 2.5]) {
																			cube(size = [3.5, 6.5, 0.3]);
																		}
																		translate(v = [-1.75, -1.75, 2.8]) {
																			cube(size = [3.5, 3.5, 0.3]);
																		}
																		translate(v = [-1.75, -3.25, -0.3]) {
																			cube(size = [3.5, 6.5, 0.3]);
																		}
																		translate(v = [-1.75, -1.75, -0.6]) {
																			cube(size = [3.5, 3.5, 0.3]);
																		}
																		translate(v = [-1.75, -3.25, 2.5]) {
																			cube(size = [3.5, 6.5, 0.3]);
																		}
																		translate(v = [-1.75, -1.75, 2.8]) {
																			cube(size = [3.5, 3.5, 0.3]);
																		}
																	}
																	union();
																}
															}
														}
														translate(v = [0, 0, -13.5]) {
															rotate(a = [0, 0, 0]) {
																difference() {
																	union() {
																		translate(v = [-1.75, -3.25, -0.3]) {
																			cube(size = [3.5, 6.5, 0.3]);
																		}
																		translate(v = [-1.75, -1.75, -0.6]) {
																			cube(size = [3.5, 3.5, 0.3]);
																		}
																		translate(v = [-1.75, -3.25, 2.5]) {
																			cube(size = [3.5, 6.5, 0.3]);
																		}
																		translate(v = [-1.75, -1.75, 2.8]) {
																			cube(size = [3.5, 3.5, 0.3]);
																		}
																		linear_extrude(height = 2.5) {
																			polygon(points = [[3.4619999999999997, 0.0], [1.7310000000000003, 2.9981799479017264], [-1.7309999999999992, 2.9981799479017264], [-3.4619999999999997, 4.2397272186481365e-16], [-1.7310000000000014, -2.998179947901726], [1.7309999999999977, -2.9981799479017277]]);
																		}
																		translate(v = [-1.75, -3.25, -0.3]) {
																			cube(size = [3.5, 6.5, 0.3]);
																		}
																		translate(v = [-1.75, -1.75, -0.6]) {
																			cube(size = [3.5, 3.5, 0.3]);
																		}
																		translate(v = [-1.75, -3.25, 2.5]) {
																			cube(size = [3.5, 6.5, 0.3]);
																		}
																		translate(v = [-1.75, -1.75, 2.8]) {
																			cube(size = [3.5, 3.5, 0.3]);
																		}
																		translate(v = [-1.75, -3.25, -0.3]) {
																			cube(size = [3.5, 6.5, 0.3]);
																		}
																		translate(v = [-1.75, -1.75, -0.6]) {
																			cube(size = [3.5, 3.5, 0.3]);
																		}
																		translate(v = [-1.75, -3.25, 2.5]) {
																			cube(size = [3.5, 6.5, 0.3]);
																		}
																		translate(v = [-1.75, -1.75, 2.8]) {
																			cube(size = [3.5, 3.5, 0.3]);
																		}
																	}
																	union();
																}
															}
														}
														translate(v = [0, 0, -13.5]) {
															cylinder(h = 13.5, r = 1.5);
														}
														translate(v = [0, 0, -1.9]) {
															cylinder(h = 1.9, r1 = 1.8, r2 = 3.6);
														}
														translate(v = [0, 0, -13.5]) {
															cylinder(h = 13.5, r = 1.8);
														}
														translate(v = [0, 0, -13.5]) {
															cylinder(h = 13.5, r = 1.5);
														}
													}
													union();
												}
											}
										}
										translate(v = [-5.6568542494923815, -5.65685424949238, 4.25]) {
											rotate(a = [0, 0, 0]) {
												difference() {
													union() {
														translate(v = [0, 0, -13.5]) {
															rotate(a = [0, 0, 0]) {
																difference() {
																	union() {
																		translate(v = [-1.75, -3.25, -0.3]) {
																			cube(size = [3.5, 6.5, 0.3]);
																		}
																		translate(v = [-1.75, -1.75, -0.6]) {
																			cube(size = [3.5, 3.5, 0.3]);
																		}
																		translate(v = [-1.75, -3.25, 2.5]) {
																			cube(size = [3.5, 6.5, 0.3]);
																		}
																		translate(v = [-1.75, -1.75, 2.8]) {
																			cube(size = [3.5, 3.5, 0.3]);
																		}
																		linear_extrude(height = 2.5) {
																			polygon(points = [[3.4619999999999997, 0.0], [1.7310000000000003, 2.9981799479017264], [-1.7309999999999992, 2.9981799479017264], [-3.4619999999999997, 4.2397272186481365e-16], [-1.7310000000000014, -2.998179947901726], [1.7309999999999977, -2.9981799479017277]]);
																		}
																		translate(v = [-1.75, -3.25, -0.3]) {
																			cube(size = [3.5, 6.5, 0.3]);
																		}
																		translate(v = [-1.75, -1.75, -0.6]) {
																			cube(size = [3.5, 3.5, 0.3]);
																		}
																		translate(v = [-1.75, -3.25, 2.5]) {
																			cube(size = [3.5, 6.5, 0.3]);
																		}
																		translate(v = [-1.75, -1.75, 2.8]) {
																			cube(size = [3.5, 3.5, 0.3]);
																		}
																		translate(v = [-1.75, -3.25, -0.3]) {
																			cube(size = [3.5, 6.5, 0.3]);
																		}
																		translate(v = [-1.75, -1.75, -0.6]) {
																			cube(size = [3.5, 3.5, 0.3]);
																		}
																		translate(v = [-1.75, -3.25, 2.5]) {
																			cube(size = [3.5, 6.5, 0.3]);
																		}
																		translate(v = [-1.75, -1.75, 2.8]) {
																			cube(size = [3.5, 3.5, 0.3]);
																		}
																	}
																	union();
																}
															}
														}
														translate(v = [0, 0, -13.5]) {
															rotate(a = [0, 0, 0]) {
																difference() {
																	union() {
																		translate(v = [-1.75, -3.25, -0.3]) {
																			cube(size = [3.5, 6.5, 0.3]);
																		}
																		translate(v = [-1.75, -1.75, -0.6]) {
																			cube(size = [3.5, 3.5, 0.3]);
																		}
																		translate(v = [-1.75, -3.25, 2.5]) {
																			cube(size = [3.5, 6.5, 0.3]);
																		}
																		translate(v = [-1.75, -1.75, 2.8]) {
																			cube(size = [3.5, 3.5, 0.3]);
																		}
																		linear_extrude(height = 2.5) {
																			polygon(points = [[3.4619999999999997, 0.0], [1.7310000000000003, 2.9981799479017264], [-1.7309999999999992, 2.9981799479017264], [-3.4619999999999997, 4.2397272186481365e-16], [-1.7310000000000014, -2.998179947901726], [1.7309999999999977, -2.9981799479017277]]);
																		}
																		translate(v = [-1.75, -3.25, -0.3]) {
																			cube(size = [3.5, 6.5, 0.3]);
																		}
																		translate(v = [-1.75, -1.75, -0.6]) {
																			cube(size = [3.5, 3.5, 0.3]);
																		}
																		translate(v = [-1.75, -3.25, 2.5]) {
																			cube(size = [3.5, 6.5, 0.3]);
																		}
																		translate(v = [-1.75, -1.75, 2.8]) {
																			cube(size = [3.5, 3.5, 0.3]);
																		}
																		translate(v = [-1.75, -3.25, -0.3]) {
																			cube(size = [3.5, 6.5, 0.3]);
																		}
																		translate(v = [-1.75, -1.75, -0.6]) {
																			cube(size = [3.5, 3.5, 0.3]);
																		}
																		translate(v = [-1.75, -3.25, 2.5]) {
																			cube(size = [3.5, 6.5, 0.3]);
																		}
																		translate(v = [-1.75, -1.75, 2.8]) {
																			cube(size = [3.5, 3.5, 0.3]);
																		}
																	}
																	union();
																}
															}
														}
														translate(v = [0, 0, -13.5]) {
															rotate(a = [0, 0, 0]) {
																difference() {
																	union() {
																		translate(v = [-1.75, -3.25, -0.3]) {
																			cube(size = [3.5, 6.5, 0.3]);
																		}
																		translate(v = [-1.75, -1.75, -0.6]) {
																			cube(size = [3.5, 3.5, 0.3]);
																		}
																		translate(v = [-1.75, -3.25, 2.5]) {
																			cube(size = [3.5, 6.5, 0.3]);
																		}
																		translate(v = [-1.75, -1.75, 2.8]) {
																			cube(size = [3.5, 3.5, 0.3]);
																		}
																		linear_extrude(height = 2.5) {
																			polygon(points = [[3.4619999999999997, 0.0], [1.7310000000000003, 2.9981799479017264], [-1.7309999999999992, 2.9981799479017264], [-3.4619999999999997, 4.2397272186481365e-16], [-1.7310000000000014, -2.998179947901726], [1.7309999999999977, -2.9981799479017277]]);
																		}
																		translate(v = [-1.75, -3.25, -0.3]) {
																			cube(size = [3.5, 6.5, 0.3]);
																		}
																		translate(v = [-1.75, -1.75, -0.6]) {
																			cube(size = [3.5, 3.5, 0.3]);
																		}
																		translate(v = [-1.75, -3.25, 2.5]) {
																			cube(size = [3.5, 6.5, 0.3]);
																		}
																		translate(v = [-1.75, -1.75, 2.8]) {
																			cube(size = [3.5, 3.5, 0.3]);
																		}
																		translate(v = [-1.75, -3.25, -0.3]) {
																			cube(size = [3.5, 6.5, 0.3]);
																		}
																		translate(v = [-1.75, -1.75, -0.6]) {
																			cube(size = [3.5, 3.5, 0.3]);
																		}
																		translate(v = [-1.75, -3.25, 2.5]) {
																			cube(size = [3.5, 6.5, 0.3]);
																		}
																		translate(v = [-1.75, -1.75, 2.8]) {
																			cube(size = [3.5, 3.5, 0.3]);
																		}
																	}
																	union();
																}
															}
														}
														translate(v = [0, 0, -13.5]) {
															cylinder(h = 13.5, r = 1.5);
														}
														translate(v = [0, 0, -1.9]) {
															cylinder(h = 1.9, r1 = 1.8, r2 = 3.6);
														}
														translate(v = [0, 0, -13.5]) {
															cylinder(h = 13.5, r = 1.8);
														}
														translate(v = [0, 0, -13.5]) {
															cylinder(h = 13.5, r = 1.5);
														}
													}
													union();
												}
											}
										}
										translate(v = [5.656854249492379, -5.6568542494923815, 4.25]) {
											rotate(a = [0, 0, 0]) {
												difference() {
													union() {
														translate(v = [0, 0, -13.5]) {
															rotate(a = [0, 0, 0]) {
																difference() {
																	union() {
																		translate(v = [-1.75, -3.25, -0.3]) {
																			cube(size = [3.5, 6.5, 0.3]);
																		}
																		translate(v = [-1.75, -1.75, -0.6]) {
																			cube(size = [3.5, 3.5, 0.3]);
																		}
																		translate(v = [-1.75, -3.25, 2.5]) {
																			cube(size = [3.5, 6.5, 0.3]);
																		}
																		translate(v = [-1.75, -1.75, 2.8]) {
																			cube(size = [3.5, 3.5, 0.3]);
																		}
																		linear_extrude(height = 2.5) {
																			polygon(points = [[3.4619999999999997, 0.0], [1.7310000000000003, 2.9981799479017264], [-1.7309999999999992, 2.9981799479017264], [-3.4619999999999997, 4.2397272186481365e-16], [-1.7310000000000014, -2.998179947901726], [1.7309999999999977, -2.9981799479017277]]);
																		}
																		translate(v = [-1.75, -3.25, -0.3]) {
																			cube(size = [3.5, 6.5, 0.3]);
																		}
																		translate(v = [-1.75, -1.75, -0.6]) {
																			cube(size = [3.5, 3.5, 0.3]);
																		}
																		translate(v = [-1.75, -3.25, 2.5]) {
																			cube(size = [3.5, 6.5, 0.3]);
																		}
																		translate(v = [-1.75, -1.75, 2.8]) {
																			cube(size = [3.5, 3.5, 0.3]);
																		}
																		translate(v = [-1.75, -3.25, -0.3]) {
																			cube(size = [3.5, 6.5, 0.3]);
																		}
																		translate(v = [-1.75, -1.75, -0.6]) {
																			cube(size = [3.5, 3.5, 0.3]);
																		}
																		translate(v = [-1.75, -3.25, 2.5]) {
																			cube(size = [3.5, 6.5, 0.3]);
																		}
																		translate(v = [-1.75, -1.75, 2.8]) {
																			cube(size = [3.5, 3.5, 0.3]);
																		}
																	}
																	union();
																}
															}
														}
														translate(v = [0, 0, -13.5]) {
															rotate(a = [0, 0, 0]) {
																difference() {
																	union() {
																		translate(v = [-1.75, -3.25, -0.3]) {
																			cube(size = [3.5, 6.5, 0.3]);
																		}
																		translate(v = [-1.75, -1.75, -0.6]) {
																			cube(size = [3.5, 3.5, 0.3]);
																		}
																		translate(v = [-1.75, -3.25, 2.5]) {
																			cube(size = [3.5, 6.5, 0.3]);
																		}
																		translate(v = [-1.75, -1.75, 2.8]) {
																			cube(size = [3.5, 3.5, 0.3]);
																		}
																		linear_extrude(height = 2.5) {
																			polygon(points = [[3.4619999999999997, 0.0], [1.7310000000000003, 2.9981799479017264], [-1.7309999999999992, 2.9981799479017264], [-3.4619999999999997, 4.2397272186481365e-16], [-1.7310000000000014, -2.998179947901726], [1.7309999999999977, -2.9981799479017277]]);
																		}
																		translate(v = [-1.75, -3.25, -0.3]) {
																			cube(size = [3.5, 6.5, 0.3]);
																		}
																		translate(v = [-1.75, -1.75, -0.6]) {
																			cube(size = [3.5, 3.5, 0.3]);
																		}
																		translate(v = [-1.75, -3.25, 2.5]) {
																			cube(size = [3.5, 6.5, 0.3]);
																		}
																		translate(v = [-1.75, -1.75, 2.8]) {
																			cube(size = [3.5, 3.5, 0.3]);
																		}
																		translate(v = [-1.75, -3.25, -0.3]) {
																			cube(size = [3.5, 6.5, 0.3]);
																		}
																		translate(v = [-1.75, -1.75, -0.6]) {
																			cube(size = [3.5, 3.5, 0.3]);
																		}
																		translate(v = [-1.75, -3.25, 2.5]) {
																			cube(size = [3.5, 6.5, 0.3]);
																		}
																		translate(v = [-1.75, -1.75, 2.8]) {
																			cube(size = [3.5, 3.5, 0.3]);
																		}
																	}
																	union();
																}
															}
														}
														translate(v = [0, 0, -13.5]) {
															rotate(a = [0, 0, 0]) {
																difference() {
																	union() {
																		translate(v = [-1.75, -3.25, -0.3]) {
																			cube(size = [3.5, 6.5, 0.3]);
																		}
																		translate(v = [-1.75, -1.75, -0.6]) {
																			cube(size = [3.5, 3.5, 0.3]);
																		}
																		translate(v = [-1.75, -3.25, 2.5]) {
																			cube(size = [3.5, 6.5, 0.3]);
																		}
																		translate(v = [-1.75, -1.75, 2.8]) {
																			cube(size = [3.5, 3.5, 0.3]);
																		}
																		linear_extrude(height = 2.5) {
																			polygon(points = [[3.4619999999999997, 0.0], [1.7310000000000003, 2.9981799479017264], [-1.7309999999999992, 2.9981799479017264], [-3.4619999999999997, 4.2397272186481365e-16], [-1.7310000000000014, -2.998179947901726], [1.7309999999999977, -2.9981799479017277]]);
																		}
																		translate(v = [-1.75, -3.25, -0.3]) {
																			cube(size = [3.5, 6.5, 0.3]);
																		}
																		translate(v = [-1.75, -1.75, -0.6]) {
																			cube(size = [3.5, 3.5, 0.3]);
																		}
																		translate(v = [-1.75, -3.25, 2.5]) {
																			cube(size = [3.5, 6.5, 0.3]);
																		}
																		translate(v = [-1.75, -1.75, 2.8]) {
																			cube(size = [3.5, 3.5, 0.3]);
																		}
																		translate(v = [-1.75, -3.25, -0.3]) {
																			cube(size = [3.5, 6.5, 0.3]);
																		}
																		translate(v = [-1.75, -1.75, -0.6]) {
																			cube(size = [3.5, 3.5, 0.3]);
																		}
																		translate(v = [-1.75, -3.25, 2.5]) {
																			cube(size = [3.5, 6.5, 0.3]);
																		}
																		translate(v = [-1.75, -1.75, 2.8]) {
																			cube(size = [3.5, 3.5, 0.3]);
																		}
																	}
																	union();
																}
															}
														}
														translate(v = [0, 0, -13.5]) {
															cylinder(h = 13.5, r = 1.5);
														}
														translate(v = [0, 0, -1.9]) {
															cylinder(h = 1.9, r1 = 1.8, r2 = 3.6);
														}
														translate(v = [0, 0, -13.5]) {
															cylinder(h = 13.5, r = 1.8);
														}
														translate(v = [0, 0, -13.5]) {
															cylinder(h = 13.5, r = 1.5);
														}
													}
													union();
												}
											}
										}
										translate(v = [0, 0, 0.75]) {
											rotate(a = [0, 90, 0]) {
												cylinder(h = 48.58262361046586, r = 2.0);
											}
										}
										translate(v = [0, 0, 0.75]) {
											rotate(a = [-90, 0, 0]) {
												cylinder(h = 48.58262361046586, r = 2.0);
											}
										}
										translate(v = [0, 0, -5.25]) {
											cylinder(h = 10.5, r = 5.2);
										}
										translate(v = [-37.5, -15.0, -5.25]) {
											cylinder(h = 10.5, r = 1.8);
										}
										translate(v = [-37.5, -7.5, -5.25]) {
											cylinder(h = 10.5, r = 1.8);
										}
										translate(v = [-37.5, 0.0, -5.25]) {
											cylinder(h = 10.5, r = 1.8);
										}
										translate(v = [-37.5, 7.5, -5.25]) {
											cylinder(h = 10.5, r = 1.8);
										}
										translate(v = [-37.5, 15.0, -5.25]) {
											cylinder(h = 10.5, r = 1.8);
										}
										translate(v = [-30.0, -22.5, -5.25]) {
											cylinder(h = 10.5, r = 1.8);
										}
										translate(v = [-30.0, -15.0, -5.25]) {
											cylinder(h = 10.5, r = 3.25);
										}
										translate(v = [-30.0, -7.5, -5.25]) {
											cylinder(h = 10.5, r = 1.8);
										}
										translate(v = [-30.0, 0.0, -5.25]) {
											cylinder(h = 10.5, r = 3.25);
										}
										translate(v = [-30.0, 7.5, -5.25]) {
											cylinder(h = 10.5, r = 1.8);
										}
										translate(v = [-30.0, 15.0, -5.25]) {
											cylinder(h = 10.5, r = 3.25);
										}
										translate(v = [-30.0, 22.5, -5.25]) {
											cylinder(h = 10.5, r = 1.8);
										}
										translate(v = [-22.5, -30.0, -5.25]) {
											cylinder(h = 10.5, r = 1.8);
										}
										translate(v = [-22.5, -22.5, -5.25]) {
											cylinder(h = 10.5, r = 1.8);
										}
										translate(v = [-22.5, -15.0, -5.25]) {
											cylinder(h = 10.5, r = 1.8);
										}
										translate(v = [-22.5, -7.5, -5.25]) {
											cylinder(h = 10.5, r = 1.8);
										}
										translate(v = [-22.5, 0.0, -5.25]) {
											cylinder(h = 10.5, r = 1.8);
										}
										translate(v = [-22.5, 7.5, -5.25]) {
											cylinder(h = 10.5, r = 1.8);
										}
										translate(v = [-22.5, 15.0, -5.25]) {
											cylinder(h = 10.5, r = 1.8);
										}
										translate(v = [-22.5, 22.5, -5.25]) {
											cylinder(h = 10.5, r = 1.8);
										}
										translate(v = [-22.5, 30.0, -5.25]) {
											cylinder(h = 10.5, r = 1.8);
										}
										translate(v = [-15.0, -37.5, -5.25]) {
											cylinder(h = 10.5, r = 1.8);
										}
										translate(v = [-15.0, -30.0, -5.25]) {
											cylinder(h = 10.5, r = 3.25);
										}
										translate(v = [-15.0, -22.5, -5.25]) {
											cylinder(h = 10.5, r = 1.8);
										}
										translate(v = [-15.0, -15.0, -5.25]) {
											cylinder(h = 10.5, r = 3.25);
										}
										translate(v = [-15.0, -7.5, -5.25]) {
											cylinder(h = 10.5, r = 1.8);
										}
										translate(v = [-15.0, 0.0, -5.25]) {
											cylinder(h = 10.5, r = 3.25);
										}
										translate(v = [-15.0, 7.5, -5.25]) {
											cylinder(h = 10.5, r = 1.8);
										}
										translate(v = [-15.0, 15.0, -5.25]) {
											cylinder(h = 10.5, r = 3.25);
										}
										translate(v = [-15.0, 22.5, -5.25]) {
											cylinder(h = 10.5, r = 1.8);
										}
										translate(v = [-15.0, 30.0, -5.25]) {
											cylinder(h = 10.5, r = 3.25);
										}
										translate(v = [-15.0, 37.5, -5.25]) {
											cylinder(h = 10.5, r = 1.8);
										}
										translate(v = [-7.5, -37.5, -5.25]) {
											cylinder(h = 10.5, r = 1.8);
										}
										translate(v = [-7.5, -30.0, -5.25]) {
											cylinder(h = 10.5, r = 1.8);
										}
										translate(v = [-7.5, -22.5, -5.25]) {
											cylinder(h = 10.5, r = 1.8);
										}
										translate(v = [-7.5, -15.0, -5.25]) {
											cylinder(h = 10.5, r = 1.8);
										}
										translate(v = [-7.5, 15.0, -5.25]) {
											cylinder(h = 10.5, r = 1.8);
										}
										translate(v = [-7.5, 22.5, -5.25]) {
											cylinder(h = 10.5, r = 1.8);
										}
										translate(v = [-7.5, 30.0, -5.25]) {
											cylinder(h = 10.5, r = 1.8);
										}
										translate(v = [-7.5, 37.5, -5.25]) {
											cylinder(h = 10.5, r = 1.8);
										}
										translate(v = [0.0, -37.5, -5.25]) {
											cylinder(h = 10.5, r = 1.8);
										}
										translate(v = [0.0, -30.0, -5.25]) {
											cylinder(h = 10.5, r = 3.25);
										}
										translate(v = [0.0, -22.5, -5.25]) {
											cylinder(h = 10.5, r = 1.8);
										}
										translate(v = [0.0, -15.0, -5.25]) {
											cylinder(h = 10.5, r = 3.25);
										}
										translate(v = [7.5, -37.5, -5.25]) {
											cylinder(h = 10.5, r = 1.8);
										}
										translate(v = [7.5, -30.0, -5.25]) {
											cylinder(h = 10.5, r = 1.8);
										}
										translate(v = [7.5, -22.5, -5.25]) {
											cylinder(h = 10.5, r = 1.8);
										}
										translate(v = [7.5, -15.0, -5.25]) {
											cylinder(h = 10.5, r = 1.8);
										}
										translate(v = [7.5, 15.0, -5.25]) {
											cylinder(h = 10.5, r = 1.8);
										}
										translate(v = [7.5, 22.5, -5.25]) {
											cylinder(h = 10.5, r = 1.8);
										}
										translate(v = [7.5, 30.0, -5.25]) {
											cylinder(h = 10.5, r = 1.8);
										}
										translate(v = [7.5, 37.5, -5.25]) {
											cylinder(h = 10.5, r = 1.8);
										}
										translate(v = [15.0, -37.5, -5.25]) {
											cylinder(h = 10.5, r = 1.8);
										}
										translate(v = [15.0, -30.0, -5.25]) {
											cylinder(h = 10.5, r = 3.25);
										}
										translate(v = [15.0, -22.5, -5.25]) {
											cylinder(h = 10.5, r = 1.8);
										}
										translate(v = [15.0, -15.0, -5.25]) {
											cylinder(h = 10.5, r = 3.25);
										}
										translate(v = [15.0, -7.5, -5.25]) {
											cylinder(h = 10.5, r = 1.8);
										}
										translate(v = [15.0, 7.5, -5.25]) {
											cylinder(h = 10.5, r = 1.8);
										}
										translate(v = [15.0, 15.0, -5.25]) {
											cylinder(h = 10.5, r = 3.25);
										}
										translate(v = [15.0, 22.5, -5.25]) {
											cylinder(h = 10.5, r = 1.8);
										}
										translate(v = [15.0, 30.0, -5.25]) {
											cylinder(h = 10.5, r = 3.25);
										}
										translate(v = [15.0, 37.5, -5.25]) {
											cylinder(h = 10.5, r = 1.8);
										}
										translate(v = [22.5, -30.0, -5.25]) {
											cylinder(h = 10.5, r = 1.8);
										}
										translate(v = [22.5, -22.5, -5.25]) {
											cylinder(h = 10.5, r = 1.8);
										}
										translate(v = [22.5, -15.0, -5.25]) {
											cylinder(h = 10.5, r = 1.8);
										}
										translate(v = [22.5, -7.5, -5.25]) {
											cylinder(h = 10.5, r = 1.8);
										}
										translate(v = [22.5, 7.5, -5.25]) {
											cylinder(h = 10.5, r = 1.8);
										}
										translate(v = [22.5, 15.0, -5.25]) {
											cylinder(h = 10.5, r = 1.8);
										}
										translate(v = [22.5, 22.5, -5.25]) {
											cylinder(h = 10.5, r = 1.8);
										}
										translate(v = [22.5, 30.0, -5.25]) {
											cylinder(h = 10.5, r = 1.8);
										}
										translate(v = [30.0, -22.5, -5.25]) {
											cylinder(h = 10.5, r = 1.8);
										}
										translate(v = [30.0, -15.0, -5.25]) {
											cylinder(h = 10.5, r = 3.25);
										}
										translate(v = [30.0, -7.5, -5.25]) {
											cylinder(h = 10.5, r = 1.8);
										}
										translate(v = [30.0, 7.5, -5.25]) {
											cylinder(h = 10.5, r = 1.8);
										}
										translate(v = [30.0, 15.0, -5.25]) {
											cylinder(h = 10.5, r = 3.25);
										}
										translate(v = [30.0, 22.5, -5.25]) {
											cylinder(h = 10.5, r = 1.8);
										}
										translate(v = [37.5, -15.0, -5.25]) {
											cylinder(h = 10.5, r = 1.8);
										}
										translate(v = [37.5, -7.5, -5.25]) {
											cylinder(h = 10.5, r = 1.8);
										}
										translate(v = [37.5, 7.5, -5.25]) {
											cylinder(h = 10.5, r = 1.8);
										}
										translate(v = [37.5, 15.0, -5.25]) {
											cylinder(h = 10.5, r = 1.8);
										}
										translate(v = [-113.16524722093172, -113.16524722093172, -112.41524722093172]) {
											cube(size = [226.33049444186344, 226.33049444186344, 113.16524722093172]);
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
