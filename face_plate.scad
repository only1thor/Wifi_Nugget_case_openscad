height = 10;

center_square_length = 41;
center_square_width = 43;

bottom_trapozoid_long_width = center_square_width;
top_trapozoid_long_width = 26;
trapozoid_height = 8.5;


$fn=30;

hull(){
    box(center_square_width,center_square_length,height);
    translate([0,-((center_square_length/2)+(trapozoid_height/2)),0])
    trapozoid(bottom_trapozoid_long_width,top_trapozoid_long_width,trapozoid_height,height);
}

module box(width,length,height){
    translate([width/2,length/2,0])
    cylinder(h=height,r=0.01,center=true);
    translate([-width/2,length/2,0])
    cylinder(h=height,r=0.01,center=true);
    translate([width/2,-length/2,0])
    cylinder(h=height,r=0.01,center=true);
    translate([-width/2,-length/2,0])
    cylinder(h=height,r=0.01,center=true);
}

module trapozoid(btm_with,top_width,trp_height,height) {
    translate([btm_with/2,trp_height/2,0])
    cylinder(h=height,r=0.01,center=true);
    translate([-btm_with/2,trp_height/2,0])
    cylinder(h=height,r=0.01,center=true);

    translate([top_width/2,-trp_height/2,0])
    cylinder(h=height,r=0.01,center=true);
    translate([-top_width/2,-trp_height/2,0])
    cylinder(h=height,r=0.01,center=true);
}