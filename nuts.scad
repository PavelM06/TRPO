$fn = 150;

d_small_nut=15;
d_big_nut=24;
h_nut=4;

translate([d_big_nut, 0, 0])
small_nut();
big_nut();

module small_nut(){
    difference(){
    cylinder(d=d_small_nut, h = h_nut, center=true);
    cylinder(h=40,d=6.5,center=true);
    }
}

module big_nut(){
    difference(){
cylinder(d=d_big_nut, h = h_nut, center=true);
cylinder(h=40,d=6.5,center=true);    
    }
}