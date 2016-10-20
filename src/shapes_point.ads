
package Shapes_Point is

   -- point struct
   type Point is record
      X : Float; -- x coordinate
      Y : Float; -- y coordinate
      Z : Float := 0.0; -- z cooridinate
   end record;
   -- point with x => 0 y => 0
   Origin: Point := (0.0,0.0,0.0);


end Shapes_Point;
