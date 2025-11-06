use <smartphone.scad>
echo ("Работа Макарова Павла");
$fn=200;


//ocular();
//translate([0,0,35/2+5/2])
//top();
smartphone();
color("red")
translate([-60,23,-4])
camera();

module camera(){
cylinder(d=11.9,center=true);
translate([12.8,0,0])
cylinder(d=11.9,center=true);
translate([6,0,0])
cube([13,11.9,1],center=true);
}

module top (){
    difference(){
        cylinder(d=30,h=5,center=true);
        cylinder(d=23-0.5-3,h=15,center=true);
}
}


module ocular(){
    difference(){
        cylinder(d=23-0.5, h=35, center=true);
        cylinder(d=23-0.5-3, h=40, center=true);
}
}
