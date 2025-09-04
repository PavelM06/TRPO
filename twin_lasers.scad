$fn = 100;
plate_depth = 2.8;
plate_length = 120;
plate_width = 33;

module base(){
    color("red")
    cube([plate_width,plate_length,plate_depth],center=true);
    color("red")
    
    translate([0,-plate_length/2,0])
    cylinder (h=plate_depth,d=plate_width,center=true);
    color("red")
    translate([0,plate_length/2,0])
    cylinder (h=plate_depth,d=plate_width,center=true);
}


module rez(){
    color("red")
    cube([plate_width,plate_length,plate_depth],center=true);
    color("red")
    translate([0,-plate_length/2,0])
    cylinder (h=plate_depth,d=plate_width,center=true);
    color("red")
    translate([0,plate_length/2,0])
    cylinder (h=plate_depth,d=plate_width,center=true);
}


module holes(){
    translate([0,-plate_length/2,0])
    cylinder(h=40,d=6.5,center=true);
    translate([0,plate_length/2,0])
    cylinder(h=40,d=6.5,center=true);
}
module rib(){
    module plate(){
    difference(){
        scale([1,1,3])
    base();
    holes();
    }
}
difference(){
    scale([1,1,2])
    translate([0,0,-2.8])
    plate();
    translate([0,0,-6])
    scale([0.8,0.95,10])
    rez();
}
}
rib();
