$fn = 64;
plate_depth = 10;
plate_length = 120;
plate_width = 30;

module base(){
    cube([plate_width,plate_length,plate_depth],center=true);
    color("red")
    
    translate([0,-plate_length/2,0])
    cylinder (h=plate_depth,d=plate_width,center=true);
    color("green")
    translate([0,plate_length/2,0])
    cylinder (h=plate_depth,d=plate_width,center=true);
}

base();

cylinder(h=40,d=6.5,center=true);
