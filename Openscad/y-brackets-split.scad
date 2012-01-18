include <configuration.scad>


module idler_split1()
{
	difference()
	{
		translate([0,-215,0]) rotate([0,-90,0]) import_stl("../Print-Huxley/Individual-STLs/y-idler-bracket.stl");
		//translate([-50,-50,11.6]) cube([100,100,20]);
		//translate([-22.33,6.2,5]) cylinder(r=7.5,h=14);
		//translate([-33,18,5]) cylinder(r=13,h=8);
		#translate([-50,-10,7.6]) cube([60,40,10]);
	}
}
module idler_split2()
{
	translate([0,0,0]) difference()
	{
		translate([0,-215,15.2]) rotate([0,90,0]) import_stl("../Print-Huxley/Individual-STLs/y-idler-bracket.stl");
		difference(){
			//translate([-50,-50,3.6]) cube([100,100,20]);
			//translate([22.3,6.3,3.6]) cylinder(r=7.5,h=4);
			//translate([33,18,3.6]) cylinder(r=12,h=3);
			#translate([-10,-10,7.6]) cube([60,40,10]);
		}
	}
}
module motor_split1()
{
	difference()
	{
		translate([0,0,14]) rotate([0,0,0]) rotate([180,0,0])  import_stl("../Print-Huxley/Individual-STLs/y-motor-bracket.stl");
		difference(){
			translate([-50,-50,3.5]) cube([100,100,20]);
			#translate([37.05,12,3.5]) cylinder(r=11,h=3);
		}
	}
}
module motor_split2()
{
	translate([0,0,0]) difference()
	{
		translate([0,0,0]) rotate([0,0,180]) import_stl("../Print-Huxley/Individual-STLs/y-motor-bracket.stl");
		translate([-37.05,12,9]) cylinder(r=11,h=3);
		difference(){
			translate([-50,-50,14-3.5]) cube([100,100,10.5]);
			#translate([-37.05,12,3.5]) cylinder(r=11,h=3);
		}
	}
}

//translate([-10,15,0]) rotate([0,0,-120])
//	idler_split1();
//idler_split2();

//translate([-50,55,0])
//	motor_split1();
//translate([30,77,0])
	motor_split2();
