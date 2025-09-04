$fn = 64;
plate_depth = 2.8;
plate_length = 120;
plate_width = 33;

module base(){
    cube([plate_width,plate_length,plate_depth],center=true);
    color("pink")
    
    translate([0,-plate_length/2,0])
    cylinder (h=plate_depth,d=plate_width,center=true);
    color("violet")
    translate([0,plate_length/2,0])
    cylinder (h=plate_depth,d=plate_width,center=true);
}



module holes(){
    translate([0,-plate_length/2,0])
    cylinder(h=40,d=6.5,center=true);
    translate([0,plate_length/2,0])
    cylinder(h=40,d=6.5,center=true);
}
base();
holes();
