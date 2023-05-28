function mm(inch) = inch * 25.4;

plateThickness = 1.75;
plateDiameter = mm(5.75);

holeDiameter = mm(3.75);

difference() {

    cylinder(h = plateThickness, d = plateDiameter, center = true);
    cylinder(h = plateThickness * 2, d = holeDiameter, center = true);

}