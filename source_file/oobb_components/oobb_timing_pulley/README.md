# OOBB GT2 timing pulley

`oobb.oobb_easy(shape="oobb_timing_pulley", number_of_teeth=60, depth=6)`
returns a printable pair of clamshell halves. `layout="assembled"` returns the
assembled model. `lower`, `upper`, `exploded`, and `section` support inspection.
The origin is the belt centre; `split_z` records the mating plane. Both split mating faces rest on Z=0 in
the print layout; the lower half is flipped about X. Whole-part `rot` and `pos`
are applied after the layout.

Styles: `basic`, `idler_bearing_606`, `mechanical_coupling_underneath`, and
`mechanical_coupling_recessed`. Small basic pulleys below 40 teeth are one piece.
Invalid hardware combinations raise `ValueError` before drawing.

The primitive uses `pulley_gt2` for the teeth, `oobb_cylinder` for flanges and
pockets, `oobb_hole` for bores, and `screw_countersunk` with `nut=True` and
`overhang=True` for joining hardware. Coupler dimensions are provided in a
`coupler` dictionary; the part repository copies these from the OOMP flange CSV.
606 dimensions come from the OOBB bearing CSV (6 x 17 x 6 mm).

`dimensions(**kwargs)` returns validated dimensions, hardware positions,
clearances, assembled bounds, and print spacing. Use the same function for
catalogue metadata and geometry checks.

OOBB mounting holes are enabled by default: M6 at centred 15 mm grid positions,
M3 at intervening 7.5 mm positions. The central bore is retained. A hole is added
only when its full mode-aware envelope clears the tooth roots, centre pocket or
metal flange, joining and coupling hardware, and Allen-key windows. The minimum
web is `oobb_hole_minimum_web=0.3` mm. `joining_rotation=45` explicitly offsets
the four joining fasteners from the grid axes. Set `oobb_holes=False` to omit the
additional pattern. `dimensions()` records accepted positions and exclusions.

The populated coupling style has the same belt-width-based body thickness as
basic: 6.5/9.5 mm channels for 6/9 mm belts, plus two 1 mm flanges. The 10.4 mm
central through hole clears the metal barrel. The four diagonal coupler screws
are also the four clamshell joining screws; there is no separate joining ring.
Nuts sit below the metal flange.

`coupler_grub_screw_from_flange=5` places the grub screw halfway along the
10 mm barrel. The flange top sits flush against the normal lower pulley face.
The split and round 4 mm radial tool holes follow the grub axis: Z=+0.75 mm
for the 6 mm belt option and Z=-0.75 mm for the 9 mm option. This gives lower /
upper half thicknesses of 5 / 3.5 mm and 5 / 6.5 mm respectively, without changing
belt clearance or total thickness. Both mating faces remain on the print bed.
No spacer rings or flange recess are needed.

`coupler_reference(**kwargs)` provides the measured metal flange/barrel/bore/
mount geometry and the specified mid-barrel grub screws for review layouts.
Production `action()` never includes that non-printing metal reference.
