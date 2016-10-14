package Shapes_Circle is
   -- type for circle radius
   type Radius is digits 7 range 0.00001 .. 1.0E35;
   -- circle struct
   type Circle is record
      R: Radius;
   end record;

end Shapes_Circle;
