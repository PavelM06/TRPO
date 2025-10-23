include <plate_twin_lasers.scad>

// rib(rib_depth=3, rib_height=15.5);
rib_center_set();

module rib_center_set(){
difference() {
    rib_center(rib_depth=3, rib_height=25);
    holes();
}
}

module holes() {
    //center
    cylinder(d1=55, d2=5, h=25+1, center=true);
    
    translate([0, -plate_len/2, 0])
    cylinder(d1=55, d2=5, h=25+1, center=true);
    translate([0, plate_len/2, 0])
    cylinder(d1=55, d2=5, h=25+1, center=true);
}

module rib_center(rib_depth, rib_height) {
    cube([rib_depth, 150, rib_height], center=true);
}

module rib(rib_depth, rib_height) {
    difference() {
        plate(plate_depth=rib_height);
        translate([0, 0, 0])
            cube([plate_width-rib_depth, plate_len, rib_height+1], center=true);
        color("red")
            translate([0, -plate_len/2, 0])
                cylinder(h=rib_height+1, d=plate_width-rib_depth, center=true);
        color("green")
            translate([0, plate_len/2, 0])
                cylinder(h=rib_height+1, d=plate_width-rib_depth, center=true);
    }
}
