include <configuration.scad>
use <huxley_gears.scad>

use <belt-clamp.scad>
use <x-idler-bracket.scad>
use <x-motor-bracket.scad>
use <pla_coupling.scad>
use <y-brackets-split.scad>
use <z-endstop-holder.scad>
use <tongue.scad>


module upplate1(){
	translate([0,0,0]) rotate([0,0,0])
	union()
	{

		translate([61,-7,0]) rotate([0,0,90]) import_stl("../Print-Huxley/Individual-STLs/x-motor-bracket.stl");

		translate([91,66,0]) rotate([0,0,-90]) import_stl("../Print-Huxley/Individual-STLs/y-bar-clamp.stl");
		translate([74,70,0]) rotate([0,0,-90]) import_stl("../Print-Huxley/Individual-STLs/y-endstop-holder.stl");
	for(i=[0,1,2]){
		translate([91,20*i+7,0]) rotate([0,0,-90]) import_stl("../Print-Huxley/Individual-STLs/y-bar-clamp.stl");
		translate([77,20*i+9,0]) rotate([0,0,-90]) import_stl("../Print-Huxley/Individual-STLs/y-bar-clamp.stl");
	}//end for
	translate([0,90,0]) rotate([0,0,0]) coupling(1);
	translate([27,90,0]) rotate([0,0,0]) coupling(0);
	translate([54,90,0]) rotate([0,0,0]) coupling(1);
	translate([82,90,0]) rotate([0,0,0]) coupling(0);
	translate([38,16,0]) rotate([0,0,0]) import_stl("../Print-Huxley/Individual-STLs/idler-cover.stl");
	translate([-20,56,0]) rotate([0,0,0]) import_stl("../Print-Huxley/Individual-STLs/power-clip.stl");
	translate([5,5,0]) rotate([0,0,85]) idler_split2();
	}//end union
}

module upplate2(){
translate([0,0,0]) rotate([0,0,0]) union()
	{
		translate([85,100,9.5]) rotate([0,0,90]) import_stl("../Print-Huxley/Individual-STLs/bearing-holder-fixed.stl");
		translate([21,48,9.5]) rotate([0,0,0]) import_stl("../Print-Huxley/Individual-STLs/bearing-holder-float.stl");
		translate([-5,17,0]) rotate([0,0,-120]) import_stl("../Print-Huxley/Individual-STLs/frame-vertex-foot.stl");
		translate([-5,35,0]) rotate([0,0,-120]) import_stl("../Print-Huxley/Individual-STLs/frame-vertex-foot.stl");
		translate([57,46,0]) rotate([0,0,150]) import_stl("../Print-Huxley/Individual-STLs/frame-vertex.stl");
		translate([57,100,0]) rotate([0,0,150]) import_stl("../Print-Huxley/Individual-STLs/frame-vertex.stl");
		translate([-5,73,0]) mirror([0,1,0]) rotate([0,0,240]) import_stl("../Print-Huxley/Individual-STLs/frame-vertex-foot.stl");
		translate([-5,90,0]) mirror([0,1,0]) rotate([0,0,240]) import_stl("../Print-Huxley/Individual-STLs/frame-vertex-foot.stl");
		translate([72,0,0]) rotate([0,0,0]) endstop();
	}
}
module upplate3(){
	translate([0,0,0]) rotate([0,0,0]) union()
	{
		//translate([58,60,0]) rotate([0,0,-90]) import_stl("../Print-Huxley/Individual-STLs/nozzle-mounting.stl");
		translate([-20,70,0]) rotate([0,0,0]) large_gear();
		translate([51,10,0]) rotate([0,0,0])
			union(){
				import_stl("../Print-Huxley/Individual-STLs/M6-Block.stl");
				translate([-5,-5,5]) cube([10,10,0.3]);
				translate([22.5,-23.6,0]) cube([12,5,12]);
				translate([13.25,-15,11.3]) cylinder(h=0.3, r=1.8, $fn=20);
			}
		//translate([75,19,6]) rotate([0,0,0]) import_stl("../Print-Huxley/Individual-STLs/idler.stl");
		//translate([100,40,0]) rotate([0,0,90]) beltclamp();
		//translate([60,83,0]) rotate([0,0,0]) beltclamp();
		//translate([0,20,0]) rotate([0,0,-90]) endstop();
		translate([22,9,0]) rotate([0,0,-15]) idler_split1();
		translate([70,57,0]) rotate([0,0,100]) motor_split1();
		translate([88,42,0]) rotate([0,0,15]) motor_split2();
		translate([36,35.5,0]) rotate([0,0,90]) tongue();
		translate([-12,-6,0]) rotate([0,0,90]) import_stl("../Print-Huxley/Individual-STLs/pcb-clip-left.stl");
		translate([73,90,0]) rotate([0,0,45]) import_stl("../Print-Huxley/Individual-STLs/pcb-clip-left.stl");
		translate([87,-1,0]) rotate([0,0,180]) import_stl("../Print-Huxley/Individual-STLs/pcb-clip-right.stl");
		translate([96,43,0]) rotate([0,0,225]) import_stl("../Print-Huxley/Individual-STLs/pcb-clip-right.stl");
	}
}
module upplate4(){
	translate([0,0,0]) rotate([0,0,0]) union()
	{
		translate([86,52,0]) rotate([0,0,90]) import_stl("../Print-Huxley/Individual-STLs/x-carriage.stl");

		translate([40,4,0]) rotate([0,0,90]) import_stl("../Print-Huxley/Individual-STLs/z-motor-bracket.stl");
		translate([97,0,0]) rotate([0,0,90]) import_stl("../Print-Huxley/Individual-STLs/z-motor-bracket.stl");
		translate([12,22,14]) rotate([180,0,0]) small_gear();
		translate([-10,116,0]) rotate([0,0,-90]) import_stl("../Print-Huxley/Individual-STLs/x-idler-bracket.stl");
		translate([75,-26,6]) rotate([0,0,90]) import_stl("../Print-Huxley/Individual-STLs/idler.stl");
		translate([8,-26,0]) rotate([0,0,0]) import_stl("../Print-Huxley/Individual-STLs/nozzle-mounting.stl");
		#translate([30,-12,0]) rotate([0,0,0]) beltclamp();
		translate([30,-23,0]) rotate([0,0,0]) beltclamp();
	}
}
module upplate5(){
//use this for y brackets with no support material
translate([0,0,0]) rotate([0,0,0]) union()
	{
//translate([0,50,0])
//	idler_split1();
//idler_split2();

//translate([30,75,0])
//	motor_split2();
	}
}
module upplate7(){
		translate([-10,0,0]) rotate([0,0,0]) import_stl("../Print-Huxley/Individual-STLs/x-motor-bracket.stl");
		translate([-30,50,0]) rotate([0,0,0]) import_stl("../Print-Huxley/Individual-STLs/x-idler-bracket.stl");
		translate([80,67,0]) rotate([0,0,90]) import_stl("../Print-Huxley/Individual-STLs/x-carriage.stl");
		translate([90,67,0]) rotate([0,0,90]) import_stl("../Print-Huxley/Individual-STLs/bearing-holder-fixed.stl");
		translate([80,67,0]) rotate([0,0,90]) import_stl("../Print-Huxley/Individual-STLs/bearing-holder-float.stl");
}
platenum=4;
%cube(size=[130,130,0.01],center=true);
if(platenum==1)
	translate([-43,-49,0]) upplate1();
if(platenum==2)
	translate([-44,-49,0]) upplate2();
if(platenum==3)
	translate([-44,-49,0]) upplate3();
if(platenum==4)
	translate([-44,-49,0]) upplate4();
if(platenum==5)
	translate([-44,-49,0]) upplate5();
if(platenum==6)
	translate([-44,-49,0]) upplate6();
if(platenum==7)
	translate([-44,-49,0]) upplate7();
if(platenum==99){
%translate([140,0,0]) cube(size=[130,130,0.01],center=true);
%translate([0,140,0]) cube(size=[130,130,0.01],center=true);
%translate([140,140,0]) cube(size=[130,130,0.01],center=true);
	translate([-43,-49,0]) upplate1();
	translate([104,-49,0]) upplate2();
	translate([-43,94,0]) upplate3();
	translate([104,104,0]) upplate4();
	translate([244,-49,0]) upplate5();
}
