difference() {
  translate([2.5000000000, 2.5000000000, 2.5000000000]) {
    scale([5.0000000000, 5.0000000000, 5.0000000000]) {
      translate([-0.5000000000, -0.5000000000, -0.5000000000]) {
        cube([1, 1, 1]);
      }
    }
  }
  translate([1.5000000000, 2.5000000000, 1.5000000000]) {
    scale([1.0000000000, 5.0000000000, 1.0000000000]) {
      translate([-0.5000000000, -0.5000000000, -0.5000000000]) {
        cube([1, 1, 1]);
      }
    }
  }
}
