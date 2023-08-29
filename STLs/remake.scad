//square([19,35]); //approx pro micro dimensions

//OG rickpadd dimensions: 30*40*(2+13)

plateThickness=2;
CaseThickness=13;
width=30;
length=40;
cornerRadius=6;

module Plate(){
    linear_extrude(2){
    hull(){
            translate([cornerRadius,cornerRadius,0])circle(r=cornerRadius);
            translate([width-cornerRadius,cornerRadius,0])circle(r=cornerRadius);
            translate([cornerRadius,length-cornerRadius,0])circle(r=cornerRadius);
            translate([width-cornerRadius,length-cornerRadius,0])circle(r=cornerRadius);
        }
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
        translate([width/2,length/2,9])linear_extrude(5)square(14, center = true);
    }
}


//Plate();
//translate([0,0,2])
Case();