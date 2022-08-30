pipediameter=26;
minthickness=1;
holediameter=6.4;
cubey=pipediameter+minthickness+minthickness;

difference(){
    cube([32,cubey,80],center = true);
    cylinder(h=82,d=pipediameter,center = true);
    group(){ 
        translate([0,0,0])  rotate([0,90,90]) cylinder(h=40,d=holediameter,center = true);
        translate([0,0,20]) rotate([0,90,90]) cylinder(h=40,d=holediameter,center = true);
        translate([0,0,-20])rotate([0,90,90]) cylinder(h=40,d=holediameter,center = true);
    }
    translate([0,(cubey+.1)/2,0])cube([32.1,cubey+.1,80.1],center = true);
}
    

