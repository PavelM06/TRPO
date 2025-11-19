use <smartphone.scad>
use <ocular.scad>

echo ("Работа Макарова Павла");
$fn=200;


translate([-61, 23, -29])
color("blue")
ocular();

module btn_on(){
translate([-35,35,0])
cube([22,10,8],center=true);
}

module btn_sound(){
translate([-43,-35,0])
cube([38,10,8],center=true);
}

module power(){
translate([65,0,0])
cube([38,40,8],center=true);
}

difference(){
smartphone();
scale([1,1,2])
translate([-60,23,-3])
camera();
btn_on();
btn_sound();    
power();
}

