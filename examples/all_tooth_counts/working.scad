$fn = 50;

use <pulley_gt2.scad>;

difference() {
	union() {
		translate(v = [5.838958178940651, 0, 0]) {
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
		translate(v = [30.790114081557114, 0, 0]) {
			rotate(a = [0, 0, 0]) {
				difference() {
					union() {
						translate(v = [0, 0, -3.25]) {
							pulley_gt2(depth = 6.5, number_of_teeth = 20, tooth_depth_clearance = 0.0, tooth_width_clearance = 0.2);
						}
						translate(v = [0, 0, -4.25]) {
							cylinder(h = 1.0, r = 7.1121977236758145);
						}
						translate(v = [0, 0, 3.25]) {
							cylinder(h = 1.0, r = 7.1121977236758145);
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
		translate(v = [58.2877490736439, 0, 0]) {
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
		translate(v = [88.9684829275686, 0, 0]) {
			rotate(a = [0, 0, 0]) {
				difference() {
					union() {
						translate(v = [0, 0, -3.25]) {
							pulley_gt2(depth = 6.5, number_of_teeth = 30, tooth_depth_clearance = 0.0, tooth_width_clearance = 0.2);
						}
						translate(v = [0, 0, -4.25]) {
							cylinder(h = 1.0, r = 10.295296585513722);
						}
						translate(v = [0, 0, 3.25]) {
							cylinder(h = 1.0, r = 10.295296585513722);
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
		translate(v = [123.4689354156988, 0, 0]) {
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
							cylinder(h = 10.5, r = 1.8);
						}
						translate(v = [0.0, -7.5, -5.25]) {
							cylinder(h = 10.5, r = 1.8);
						}
						translate(v = [0.0, 7.5, -5.25]) {
							cylinder(h = 10.5, r = 1.8);
						}
						translate(v = [7.5, 0.0, -5.25]) {
							cylinder(h = 10.5, r = 1.8);
						}
					}
				}
			}
		}
		translate(v = [161.15248676566688, 0, 0]) {
			rotate(a = [0, 0, 0]) {
				difference() {
					union() {
						translate(v = [0, 0, -3.25]) {
							pulley_gt2(depth = 6.5, number_of_teeth = 40, tooth_depth_clearance = 0.0, tooth_width_clearance = 0.2);
						}
						translate(v = [0, 0, -4.25]) {
							cylinder(h = 1.0, r = 13.478395447351629);
						}
						translate(v = [0, 0, 3.25]) {
							cylinder(h = 1.0, r = 13.478395447351629);
						}
					}
					union() {
						translate(v = [5.303300858899107, 5.303300858899107, 4.25]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [0, 0, -8.5]) {
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
										translate(v = [0, 0, -8.5]) {
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
										translate(v = [0, 0, -8.5]) {
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
										translate(v = [0, 0, -8.5]) {
											cylinder(h = 8.5, r = 1.5);
										}
										translate(v = [0, 0, -1.9]) {
											cylinder(h = 1.9, r1 = 1.8, r2 = 3.6);
										}
										translate(v = [0, 0, -8.5]) {
											cylinder(h = 8.5, r = 1.8);
										}
										translate(v = [0, 0, -8.5]) {
											cylinder(h = 8.5, r = 1.5);
										}
									}
									union();
								}
							}
						}
						translate(v = [-5.303300858899106, 5.303300858899107, -4.25]) {
							rotate(a = [180, 0, 0]) {
								difference() {
									union() {
										translate(v = [0, 0, -8.5]) {
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
										translate(v = [0, 0, -8.5]) {
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
										translate(v = [0, 0, -8.5]) {
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
										translate(v = [0, 0, -8.5]) {
											cylinder(h = 8.5, r = 1.5);
										}
										translate(v = [0, 0, -1.9]) {
											cylinder(h = 1.9, r1 = 1.8, r2 = 3.6);
										}
										translate(v = [0, 0, -8.5]) {
											cylinder(h = 8.5, r = 1.8);
										}
										translate(v = [0, 0, -8.5]) {
											cylinder(h = 8.5, r = 1.5);
										}
									}
									union();
								}
							}
						}
						translate(v = [-5.3033008588991075, -5.303300858899106, 4.25]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [0, 0, -8.5]) {
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
										translate(v = [0, 0, -8.5]) {
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
										translate(v = [0, 0, -8.5]) {
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
										translate(v = [0, 0, -8.5]) {
											cylinder(h = 8.5, r = 1.5);
										}
										translate(v = [0, 0, -1.9]) {
											cylinder(h = 1.9, r1 = 1.8, r2 = 3.6);
										}
										translate(v = [0, 0, -8.5]) {
											cylinder(h = 8.5, r = 1.8);
										}
										translate(v = [0, 0, -8.5]) {
											cylinder(h = 8.5, r = 1.5);
										}
									}
									union();
								}
							}
						}
						translate(v = [5.303300858899105, -5.3033008588991075, -4.25]) {
							rotate(a = [180, 0, 0]) {
								difference() {
									union() {
										translate(v = [0, 0, -8.5]) {
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
										translate(v = [0, 0, -8.5]) {
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
										translate(v = [0, 0, -8.5]) {
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
										translate(v = [0, 0, -8.5]) {
											cylinder(h = 8.5, r = 1.5);
										}
										translate(v = [0, 0, -1.9]) {
											cylinder(h = 1.9, r1 = 1.8, r2 = 3.6);
										}
										translate(v = [0, 0, -8.5]) {
											cylinder(h = 8.5, r = 1.8);
										}
										translate(v = [0, 0, -8.5]) {
											cylinder(h = 8.5, r = 1.5);
										}
									}
									union();
								}
							}
						}
						translate(v = [0, 0, -5.25]) {
							cylinder(h = 10.5, r = 3.25);
						}
						translate(v = [-7.5, 0.0, -5.25]) {
							cylinder(h = 10.5, r = 1.8);
						}
						translate(v = [0.0, -7.5, -5.25]) {
							cylinder(h = 10.5, r = 1.8);
						}
						translate(v = [0.0, 7.5, -5.25]) {
							cylinder(h = 10.5, r = 1.8);
						}
						translate(v = [7.5, 0.0, -5.25]) {
							cylinder(h = 10.5, r = 1.8);
						}
					}
				}
			}
		}
		translate(v = [202.65575674984046, 0, 0]) {
			rotate(a = [0, 0, 0]) {
				difference() {
					union() {
						translate(v = [0, 0, -3.25]) {
							pulley_gt2(depth = 6.5, number_of_teeth = 48, tooth_depth_clearance = 0.0, tooth_width_clearance = 0.2);
						}
						translate(v = [0, 0, -4.25]) {
							cylinder(h = 1.0, r = 16.024874536821955);
						}
						translate(v = [0, 0, 3.25]) {
							cylinder(h = 1.0, r = 16.024874536821955);
						}
					}
					union() {
						translate(v = [5.550788232314398, 5.550788232314398, 4.25]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [0, 0, -8.5]) {
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
										translate(v = [0, 0, -8.5]) {
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
										translate(v = [0, 0, -8.5]) {
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
										translate(v = [0, 0, -8.5]) {
											cylinder(h = 8.5, r = 1.5);
										}
										translate(v = [0, 0, -1.9]) {
											cylinder(h = 1.9, r1 = 1.8, r2 = 3.6);
										}
										translate(v = [0, 0, -8.5]) {
											cylinder(h = 8.5, r = 1.8);
										}
										translate(v = [0, 0, -8.5]) {
											cylinder(h = 8.5, r = 1.5);
										}
									}
									union();
								}
							}
						}
						translate(v = [-5.550788232314397, 5.550788232314398, -4.25]) {
							rotate(a = [180, 0, 0]) {
								difference() {
									union() {
										translate(v = [0, 0, -8.5]) {
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
										translate(v = [0, 0, -8.5]) {
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
										translate(v = [0, 0, -8.5]) {
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
										translate(v = [0, 0, -8.5]) {
											cylinder(h = 8.5, r = 1.5);
										}
										translate(v = [0, 0, -1.9]) {
											cylinder(h = 1.9, r1 = 1.8, r2 = 3.6);
										}
										translate(v = [0, 0, -8.5]) {
											cylinder(h = 8.5, r = 1.8);
										}
										translate(v = [0, 0, -8.5]) {
											cylinder(h = 8.5, r = 1.5);
										}
									}
									union();
								}
							}
						}
						translate(v = [-5.550788232314399, -5.550788232314397, 4.25]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [0, 0, -8.5]) {
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
										translate(v = [0, 0, -8.5]) {
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
										translate(v = [0, 0, -8.5]) {
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
										translate(v = [0, 0, -8.5]) {
											cylinder(h = 8.5, r = 1.5);
										}
										translate(v = [0, 0, -1.9]) {
											cylinder(h = 1.9, r1 = 1.8, r2 = 3.6);
										}
										translate(v = [0, 0, -8.5]) {
											cylinder(h = 8.5, r = 1.8);
										}
										translate(v = [0, 0, -8.5]) {
											cylinder(h = 8.5, r = 1.5);
										}
									}
									union();
								}
							}
						}
						translate(v = [5.550788232314397, -5.550788232314399, -4.25]) {
							rotate(a = [180, 0, 0]) {
								difference() {
									union() {
										translate(v = [0, 0, -8.5]) {
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
										translate(v = [0, 0, -8.5]) {
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
										translate(v = [0, 0, -8.5]) {
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
										translate(v = [0, 0, -8.5]) {
											cylinder(h = 8.5, r = 1.5);
										}
										translate(v = [0, 0, -1.9]) {
											cylinder(h = 1.9, r1 = 1.8, r2 = 3.6);
										}
										translate(v = [0, 0, -8.5]) {
											cylinder(h = 8.5, r = 1.8);
										}
										translate(v = [0, 0, -8.5]) {
											cylinder(h = 8.5, r = 1.5);
										}
									}
									union();
								}
							}
						}
						translate(v = [0, 0, -5.25]) {
							cylinder(h = 10.5, r = 3.25);
						}
						translate(v = [-7.5, 0.0, -5.25]) {
							cylinder(h = 10.5, r = 1.8);
						}
						translate(v = [0.0, -7.5, -5.25]) {
							cylinder(h = 10.5, r = 1.8);
						}
						translate(v = [0.0, 7.5, -5.25]) {
							cylinder(h = 10.5, r = 1.8);
						}
						translate(v = [7.5, 0.0, -5.25]) {
							cylinder(h = 10.5, r = 1.8);
						}
					}
				}
			}
		}
		translate(v = [250.52522445768986, 0, 0]) {
			rotate(a = [0, 0, 0]) {
				difference() {
					union() {
						translate(v = [0, 0, -3.25]) {
							pulley_gt2(depth = 6.5, number_of_teeth = 60, tooth_depth_clearance = 0.0, tooth_width_clearance = 0.2);
						}
						translate(v = [0, 0, -4.25]) {
							cylinder(h = 1.0, r = 19.84459317102744);
						}
						translate(v = [0, 0, 3.25]) {
							cylinder(h = 1.0, r = 19.84459317102744);
						}
					}
					union() {
						translate(v = [5.550788232314398, 5.550788232314398, 4.25]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [0, 0, -8.5]) {
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
										translate(v = [0, 0, -8.5]) {
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
										translate(v = [0, 0, -8.5]) {
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
										translate(v = [0, 0, -8.5]) {
											cylinder(h = 8.5, r = 1.5);
										}
										translate(v = [0, 0, -1.9]) {
											cylinder(h = 1.9, r1 = 1.8, r2 = 3.6);
										}
										translate(v = [0, 0, -8.5]) {
											cylinder(h = 8.5, r = 1.8);
										}
										translate(v = [0, 0, -8.5]) {
											cylinder(h = 8.5, r = 1.5);
										}
									}
									union();
								}
							}
						}
						translate(v = [-5.550788232314397, 5.550788232314398, -4.25]) {
							rotate(a = [180, 0, 0]) {
								difference() {
									union() {
										translate(v = [0, 0, -8.5]) {
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
										translate(v = [0, 0, -8.5]) {
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
										translate(v = [0, 0, -8.5]) {
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
										translate(v = [0, 0, -8.5]) {
											cylinder(h = 8.5, r = 1.5);
										}
										translate(v = [0, 0, -1.9]) {
											cylinder(h = 1.9, r1 = 1.8, r2 = 3.6);
										}
										translate(v = [0, 0, -8.5]) {
											cylinder(h = 8.5, r = 1.8);
										}
										translate(v = [0, 0, -8.5]) {
											cylinder(h = 8.5, r = 1.5);
										}
									}
									union();
								}
							}
						}
						translate(v = [-5.550788232314399, -5.550788232314397, 4.25]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [0, 0, -8.5]) {
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
										translate(v = [0, 0, -8.5]) {
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
										translate(v = [0, 0, -8.5]) {
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
										translate(v = [0, 0, -8.5]) {
											cylinder(h = 8.5, r = 1.5);
										}
										translate(v = [0, 0, -1.9]) {
											cylinder(h = 1.9, r1 = 1.8, r2 = 3.6);
										}
										translate(v = [0, 0, -8.5]) {
											cylinder(h = 8.5, r = 1.8);
										}
										translate(v = [0, 0, -8.5]) {
											cylinder(h = 8.5, r = 1.5);
										}
									}
									union();
								}
							}
						}
						translate(v = [5.550788232314397, -5.550788232314399, -4.25]) {
							rotate(a = [180, 0, 0]) {
								difference() {
									union() {
										translate(v = [0, 0, -8.5]) {
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
										translate(v = [0, 0, -8.5]) {
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
										translate(v = [0, 0, -8.5]) {
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
										translate(v = [0, 0, -8.5]) {
											cylinder(h = 8.5, r = 1.5);
										}
										translate(v = [0, 0, -1.9]) {
											cylinder(h = 1.9, r1 = 1.8, r2 = 3.6);
										}
										translate(v = [0, 0, -8.5]) {
											cylinder(h = 8.5, r = 1.8);
										}
										translate(v = [0, 0, -8.5]) {
											cylinder(h = 8.5, r = 1.5);
										}
									}
									union();
								}
							}
						}
						translate(v = [0, 0, -5.25]) {
							cylinder(h = 10.5, r = 3.25);
						}
						translate(v = [-7.5, 0.0, -5.25]) {
							cylinder(h = 10.5, r = 1.8);
						}
						translate(v = [0.0, -7.5, -5.25]) {
							cylinder(h = 10.5, r = 1.8);
						}
						translate(v = [0.0, 7.5, -5.25]) {
							cylinder(h = 10.5, r = 1.8);
						}
						translate(v = [7.5, 0.0, -5.25]) {
							cylinder(h = 10.5, r = 1.8);
						}
					}
				}
			}
		}
		translate(v = [306.0341294339503, 0, 0]) {
			rotate(a = [0, 0, 0]) {
				difference() {
					union() {
						translate(v = [0, 0, -3.25]) {
							pulley_gt2(depth = 6.5, number_of_teeth = 72, tooth_depth_clearance = 0.0, tooth_width_clearance = 0.2);
						}
						translate(v = [0, 0, -4.25]) {
							cylinder(h = 1.0, r = 23.664311805232927);
						}
						translate(v = [0, 0, 3.25]) {
							cylinder(h = 1.0, r = 23.664311805232927);
						}
					}
					union() {
						translate(v = [5.550788232314398, 5.550788232314398, 4.25]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [0, 0, -8.5]) {
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
										translate(v = [0, 0, -8.5]) {
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
										translate(v = [0, 0, -8.5]) {
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
										translate(v = [0, 0, -8.5]) {
											cylinder(h = 8.5, r = 1.5);
										}
										translate(v = [0, 0, -1.9]) {
											cylinder(h = 1.9, r1 = 1.8, r2 = 3.6);
										}
										translate(v = [0, 0, -8.5]) {
											cylinder(h = 8.5, r = 1.8);
										}
										translate(v = [0, 0, -8.5]) {
											cylinder(h = 8.5, r = 1.5);
										}
									}
									union();
								}
							}
						}
						translate(v = [-5.550788232314397, 5.550788232314398, -4.25]) {
							rotate(a = [180, 0, 0]) {
								difference() {
									union() {
										translate(v = [0, 0, -8.5]) {
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
										translate(v = [0, 0, -8.5]) {
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
										translate(v = [0, 0, -8.5]) {
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
										translate(v = [0, 0, -8.5]) {
											cylinder(h = 8.5, r = 1.5);
										}
										translate(v = [0, 0, -1.9]) {
											cylinder(h = 1.9, r1 = 1.8, r2 = 3.6);
										}
										translate(v = [0, 0, -8.5]) {
											cylinder(h = 8.5, r = 1.8);
										}
										translate(v = [0, 0, -8.5]) {
											cylinder(h = 8.5, r = 1.5);
										}
									}
									union();
								}
							}
						}
						translate(v = [-5.550788232314399, -5.550788232314397, 4.25]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [0, 0, -8.5]) {
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
										translate(v = [0, 0, -8.5]) {
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
										translate(v = [0, 0, -8.5]) {
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
										translate(v = [0, 0, -8.5]) {
											cylinder(h = 8.5, r = 1.5);
										}
										translate(v = [0, 0, -1.9]) {
											cylinder(h = 1.9, r1 = 1.8, r2 = 3.6);
										}
										translate(v = [0, 0, -8.5]) {
											cylinder(h = 8.5, r = 1.8);
										}
										translate(v = [0, 0, -8.5]) {
											cylinder(h = 8.5, r = 1.5);
										}
									}
									union();
								}
							}
						}
						translate(v = [5.550788232314397, -5.550788232314399, -4.25]) {
							rotate(a = [180, 0, 0]) {
								difference() {
									union() {
										translate(v = [0, 0, -8.5]) {
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
										translate(v = [0, 0, -8.5]) {
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
										translate(v = [0, 0, -8.5]) {
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
										translate(v = [0, 0, -8.5]) {
											cylinder(h = 8.5, r = 1.5);
										}
										translate(v = [0, 0, -1.9]) {
											cylinder(h = 1.9, r1 = 1.8, r2 = 3.6);
										}
										translate(v = [0, 0, -8.5]) {
											cylinder(h = 8.5, r = 1.8);
										}
										translate(v = [0, 0, -8.5]) {
											cylinder(h = 8.5, r = 1.5);
										}
									}
									union();
								}
							}
						}
						translate(v = [0, 0, -5.25]) {
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
						translate(v = [-7.5, -15.0, -5.25]) {
							cylinder(h = 10.5, r = 1.8);
						}
						translate(v = [-7.5, 0.0, -5.25]) {
							cylinder(h = 10.5, r = 1.8);
						}
						translate(v = [-7.5, 15.0, -5.25]) {
							cylinder(h = 10.5, r = 1.8);
						}
						translate(v = [0.0, -15.0, -5.25]) {
							cylinder(h = 10.5, r = 3.25);
						}
						translate(v = [0.0, -7.5, -5.25]) {
							cylinder(h = 10.5, r = 1.8);
						}
						translate(v = [0.0, 7.5, -5.25]) {
							cylinder(h = 10.5, r = 1.8);
						}
						translate(v = [0.0, 15.0, -5.25]) {
							cylinder(h = 10.5, r = 3.25);
						}
						translate(v = [7.5, -15.0, -5.25]) {
							cylinder(h = 10.5, r = 1.8);
						}
						translate(v = [7.5, 0.0, -5.25]) {
							cylinder(h = 10.5, r = 1.8);
						}
						translate(v = [7.5, 15.0, -5.25]) {
							cylinder(h = 10.5, r = 1.8);
						}
						translate(v = [15.0, -7.5, -5.25]) {
							cylinder(h = 10.5, r = 1.8);
						}
						translate(v = [15.0, 0.0, -5.25]) {
							cylinder(h = 10.5, r = 3.25);
						}
						translate(v = [15.0, 7.5, -5.25]) {
							cylinder(h = 10.5, r = 1.8);
						}
					}
				}
			}
		}
		translate(v = [388.2810648496491, 0, 0]) {
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
						translate(v = [5.550788232314398, 5.550788232314398, 4.25]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [0, 0, -8.5]) {
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
										translate(v = [0, 0, -8.5]) {
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
										translate(v = [0, 0, -8.5]) {
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
										translate(v = [0, 0, -8.5]) {
											cylinder(h = 8.5, r = 1.5);
										}
										translate(v = [0, 0, -1.9]) {
											cylinder(h = 1.9, r1 = 1.8, r2 = 3.6);
										}
										translate(v = [0, 0, -8.5]) {
											cylinder(h = 8.5, r = 1.8);
										}
										translate(v = [0, 0, -8.5]) {
											cylinder(h = 8.5, r = 1.5);
										}
									}
									union();
								}
							}
						}
						translate(v = [-5.550788232314397, 5.550788232314398, -4.25]) {
							rotate(a = [180, 0, 0]) {
								difference() {
									union() {
										translate(v = [0, 0, -8.5]) {
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
										translate(v = [0, 0, -8.5]) {
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
										translate(v = [0, 0, -8.5]) {
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
										translate(v = [0, 0, -8.5]) {
											cylinder(h = 8.5, r = 1.5);
										}
										translate(v = [0, 0, -1.9]) {
											cylinder(h = 1.9, r1 = 1.8, r2 = 3.6);
										}
										translate(v = [0, 0, -8.5]) {
											cylinder(h = 8.5, r = 1.8);
										}
										translate(v = [0, 0, -8.5]) {
											cylinder(h = 8.5, r = 1.5);
										}
									}
									union();
								}
							}
						}
						translate(v = [-5.550788232314399, -5.550788232314397, 4.25]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [0, 0, -8.5]) {
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
										translate(v = [0, 0, -8.5]) {
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
										translate(v = [0, 0, -8.5]) {
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
										translate(v = [0, 0, -8.5]) {
											cylinder(h = 8.5, r = 1.5);
										}
										translate(v = [0, 0, -1.9]) {
											cylinder(h = 1.9, r1 = 1.8, r2 = 3.6);
										}
										translate(v = [0, 0, -8.5]) {
											cylinder(h = 8.5, r = 1.8);
										}
										translate(v = [0, 0, -8.5]) {
											cylinder(h = 8.5, r = 1.5);
										}
									}
									union();
								}
							}
						}
						translate(v = [5.550788232314397, -5.550788232314399, -4.25]) {
							rotate(a = [180, 0, 0]) {
								difference() {
									union() {
										translate(v = [0, 0, -8.5]) {
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
										translate(v = [0, 0, -8.5]) {
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
										translate(v = [0, 0, -8.5]) {
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
										translate(v = [0, 0, -8.5]) {
											cylinder(h = 8.5, r = 1.5);
										}
										translate(v = [0, 0, -1.9]) {
											cylinder(h = 1.9, r1 = 1.8, r2 = 3.6);
										}
										translate(v = [0, 0, -8.5]) {
											cylinder(h = 8.5, r = 1.8);
										}
										translate(v = [0, 0, -8.5]) {
											cylinder(h = 8.5, r = 1.5);
										}
									}
									union();
								}
							}
						}
						translate(v = [0, 0, -5.25]) {
							cylinder(h = 10.5, r = 3.25);
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
						translate(v = [-7.5, 0.0, -5.25]) {
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
						translate(v = [0.0, -7.5, -5.25]) {
							cylinder(h = 10.5, r = 1.8);
						}
						translate(v = [0.0, 7.5, -5.25]) {
							cylinder(h = 10.5, r = 1.8);
						}
						translate(v = [0.0, 15.0, -5.25]) {
							cylinder(h = 10.5, r = 3.25);
						}
						translate(v = [0.0, 22.5, -5.25]) {
							cylinder(h = 10.5, r = 1.8);
						}
						translate(v = [0.0, 30.0, -5.25]) {
							cylinder(h = 10.5, r = 3.25);
						}
						translate(v = [0.0, 37.5, -5.25]) {
							cylinder(h = 10.5, r = 1.8);
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
						translate(v = [7.5, 0.0, -5.25]) {
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
						translate(v = [15.0, 0.0, -5.25]) {
							cylinder(h = 10.5, r = 3.25);
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
						translate(v = [22.5, 0.0, -5.25]) {
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
						translate(v = [30.0, 0.0, -5.25]) {
							cylinder(h = 10.5, r = 3.25);
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
						translate(v = [37.5, 0.0, -5.25]) {
							cylinder(h = 10.5, r = 1.8);
						}
						translate(v = [37.5, 7.5, -5.25]) {
							cylinder(h = 10.5, r = 1.8);
						}
						translate(v = [37.5, 15.0, -5.25]) {
							cylinder(h = 10.5, r = 1.8);
						}
					}
				}
			}
		}
		translate(v = [5.838958178940651, -14.83895817894065, 0]) {
			linear_extrude(height = 0.6) {
				text(halign = "center", size = 3, text = "16 teeth");
			}
		}
		translate(v = [30.790114081557114, -16.112197723675813, 0]) {
			linear_extrude(height = 0.6) {
				text(halign = "center", size = 3, text = "20 teeth");
			}
		}
		translate(v = [58.2877490736439, -17.385437268410975, 0]) {
			linear_extrude(height = 0.6) {
				text(halign = "center", size = 3, text = "24 teeth");
			}
		}
		translate(v = [88.9684829275686, -19.29529658551372, 0]) {
			linear_extrude(height = 0.6) {
				text(halign = "center", size = 3, text = "30 teeth");
			}
		}
		translate(v = [123.4689354156988, -21.205155902616465, 0]) {
			linear_extrude(height = 0.6) {
				text(halign = "center", size = 3, text = "36 teeth");
			}
		}
		translate(v = [161.15248676566688, -22.47839544735163, 0]) {
			linear_extrude(height = 0.6) {
				text(halign = "center", size = 3, text = "40 teeth");
			}
		}
		translate(v = [202.65575674984046, -25.024874536821955, 0]) {
			linear_extrude(height = 0.6) {
				text(halign = "center", size = 3, text = "48 teeth");
			}
		}
		translate(v = [250.52522445768986, -28.84459317102744, 0]) {
			linear_extrude(height = 0.6) {
				text(halign = "center", size = 3, text = "60 teeth");
			}
		}
		translate(v = [306.0341294339503, -32.66431180523293, 0]) {
			linear_extrude(height = 0.6) {
				text(halign = "center", size = 3, text = "72 teeth");
			}
		}
		translate(v = [388.2810648496491, -55.58262361046586, 0]) {
			linear_extrude(height = 0.6) {
				text(halign = "center", size = 3, text = "144 teeth");
			}
		}
	}
	union();
}
