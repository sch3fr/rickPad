//square([19,35]); //approx pro micro dimensions

//OG rickpadd dimensions: 30*40*(2+13)

/*M3 screw dimesions: 
Head diameter = 5.5mm
Head height = 3mm
Screw diameter = 3mm
*/


plateThickness=2;
CaseThickness=13;
width=30;
length=40;
cornerRadius=6;

module Plate(){
    difference(){
        linear_extrude(2){
        hull(){
                translate([cornerRadius,cornerRadius,0])circle(r=cornerRadius);
                translate([width-cornerRadius,cornerRadius,0])circle(r=cornerRadius);
                translate([cornerRadius,length-cornerRadius,0])circle(r=cornerRadius);
                translate([width-cornerRadius,length-cornerRadius,0])circle(r=cornerRadius);
            }
        }
        screwHoles();
    }
}

module Case(){
    difference(){
        
        linear_extrude(13){
            hull(){
                translate([cornerRadius,cornerRadius,0])circle(r=cornerRadius);
                translate([width-cornerRadius,cornerRadius,0])circle(r=cornerRadius);
                translate([cornerRadius,length-cornerRadius,0])circle(r=cornerRadius);
                translate([width-cornerRadius,length-cornerRadius,0])circle(r=cornerRadius);
            }
        }
        translate([width/2,length/2,9])linear_extrude(5)square(14, center = true); //switch hole
        translate([width/2-(8.5/2),-1,0])cube([8.5,10,4.5]);//usb port hole
        translate([width/2-(19/2),1,0])cube([19,36,10]);//hollow inside
        screwHoles();
    }
}

module screwHoles(){
    translate([3,5,0])cylinder(6,1.5,1.5,$fn=60);
    translate([27,5,0])cylinder(6,1.5,1.5,$fn=60);
    translate([3,35,0])cylinder(6,1.5,1.5,$fn=60);
    translate([27,35,0])cylinder(6,1.5,1.5,$fn=60);
}

Plate();
//Case();

