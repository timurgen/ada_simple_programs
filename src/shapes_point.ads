
package Shapes_Point is

   -- point struct
   type Point is record
      X : Float; -- x coordinate
      Y : Float; -- y coordinate
   end record;
   -- point with x => 0 y => 0
   Null_Point: Point := (0.0,0.0);

end Shapes_Point;
