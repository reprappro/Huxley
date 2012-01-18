use <y-brackets-split.scad>
module plate7(){
		translate([-10,0,0]) rotate([0,0,0]) import_stl("../Print-Huxley/Individual-STLs/x-motor-bracket.stl");
		translate([-34,50,0]) rotate([0,0,0]) import_stl("../Print-Huxley/Individual-STLs/x-idler-bracket.stl");
		translate([70,57,0]) rotate([0,0,90]) import_stl("../Print-Huxley/Individual-STLs/x-carriage.stl");
}

module plate8(){
		translate([40,0,9.5]) rotate([0,0,0]) import_stl("../Print-Huxley/Individual-STLs/bearing-holder-fixed.stl");
		translate([0,24,9.5]) rotate([0,0,0]) import_stl("../Print-Huxley/Individual-STLs/bearing-holder-float.stl");
		translate([-45,18,0]) rotate([0,0,0]) import_stl("../Print-Huxley/Individual-STLs/y-endstop-holder.stl");
		translate([-20,-20,0]) rotate([0,0,30]) idler_split1();
		translate([0,-20,0]) rotate([0,0,-30]) idler_split2();
}

plate8();
