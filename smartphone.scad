
$fn=200;
smartphone();

module smartphone(){
difference(){
    scale([1.05,1.05,1])
case();
scale([1,1,2])
    translate([0,0,1])
body();
}
}

module body(){
hull(){

cube([130, 60, 7], center=true);

mirror([1,0,0])
translate([142/2-8,69/2-8,0])
color("red")
cylinder(d=15,h=7,center=true);

mirror([0,1,0])
translate([142/2-8,69/2-8,0])
color("red")
cylinder(d=15,h=7,center=true);

mirror([0,0,1])
translate([142/2-8,69/2-8,0])
color("red")
cylinder(d=15,h=7,center=true);

mirror([1,0,0])
mirror([0,1,0])
translate([142/2-8,69/2-8,0])
color("red")
cylinder(d=15,h=7,center=true);
}
}


module case(){
hull(){

cube([135, 65, 13], center=true);

mirror([1,0,0])
translate([142/2-8,69/2-8,0])
color("red")
cylinder(d=20,h=13,center=true);

mirror([0,1,0])
translate([142/2-8,69/2-8,0])
color("red")
cylinder(d=20,h=13,center=true);

mirror([0,0,1])
translate([142/2-8,69/2-8,0])
color("red")
cylinder(d=20,h=13,center=true);

mirror([1,0,0])
mirror([0,1,0])
translate([142/2-8,69/2-8,0])
color("red")
cylinder(d=20,h=13,center=true);
}
}


module camera(){
cylinder(h=2,d=11.9,center=true);
translate([12.8,0,0])
cylinder(h=2,d=11.9,center=true);
translate([6,0,0])
cube([13,11.9,2],center=true);
}
