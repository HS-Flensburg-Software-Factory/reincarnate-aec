difference() {
  translate([32.5000000000, 15.0000000000, 2.5000000000]) {
    scale([65.0000000000, 30.0000000000, 5.0000000000]) {
      translate([-0.5000000000, -0.5000000000, -0.5000000000]) {
        cube([1, 1, 1]);
      }
    }
  }
  union() {
    union() {
      union() {
        union() {
          union() {
            union() {
              difference() {
                translate([12.0000000000, 8.0000000000, 2.5000000000]) {
                  scale([14.0000000000, 12.1240000000, 5.0000000000]) {
                    rotate([0.0000000000, 0.0000000000, -0.0000000000]) {
                      scale([0.5, 0.577, 1]) cylinder($fn = 6, center = true);
                    }
                  }
                }
                /* EMPTY */ sphere(r = 0);
              }
              difference() {
                translate([10.0000000000, 23.0000000000, 2.5000000000]) {
                  scale([6.0000000000, 5.1960000000, 5.0000000000]) {
                    rotate([0.0000000000, 0.0000000000, -0.0000000000]) {
                      scale([0.5, 0.577, 1]) cylinder($fn = 6, center = true);
                    }
                  }
                }
                /* EMPTY */ sphere(r = 0);
              }
            }
            difference() {
              translate([40.0000000000, 23.0000000000, 2.5000000000]) {
                scale([8.0000000000, 6.9280000000, 5.0000000000]) {
                  rotate([0.0000000000, 0.0000000000, -0.0000000000]) {
                    scale([0.5, 0.577, 1]) cylinder($fn = 6, center = true);
                  }
                }
              }
              /* EMPTY */ sphere(r = 0);
            }
          }
          difference() {
            translate([25.0000000000, 23.0000000000, 2.5000000000]) {
              scale([7.0000000000, 6.0620000000, 5.0000000000]) {
                rotate([0.0000000000, 0.0000000000, -0.0000000000]) {
                  scale([0.5, 0.577, 1]) cylinder($fn = 6, center = true);
                }
              }
            }
            /* EMPTY */ sphere(r = 0);
          }
        }
        difference() {
          translate([33.0000000000, 8.0000000000, 2.5000000000]) {
            scale([13.0000000000, 11.2580000000, 5.0000000000]) {
              rotate([0.0000000000, 0.0000000000, -0.0000000000]) {
                scale([0.5, 0.577, 1]) cylinder($fn = 6, center = true);
              }
            }
          }
          /* EMPTY */ sphere(r = 0);
        }
      }
      difference() {
        translate([55.0000000000, 23.0000000000, 2.5000000000]) {
          scale([10.0000000000, 8.6600000000, 5.0000000000]) {
            rotate([0.0000000000, 0.0000000000, -0.0000000000]) {
              scale([0.5, 0.577, 1]) cylinder($fn = 6, center = true);
            }
          }
        }
        /* EMPTY */ sphere(r = 0);
      }
    }
    difference() {
      translate([52.9999680000, 7.9999874480, 2.5000000000]) {
        scale([11.4000000000, 9.8720000000, 5.0000000000]) {
          rotate([0.0000000000, 0.0000000000, -0.0000000000]) {
            scale([0.5, 0.577, 1]) cylinder($fn = 6, center = true);
          }
        }
      }
      /* EMPTY */ sphere(r = 0);
    }
  }
}