with Shapes_Point; use Shapes_Point;
with Ada.Numerics; use Ada.Numerics;
package Shapes_Circle is

   -- type for circle radius
   type Radius is digits 7 range 0.00001 .. 1.0E35;

   type Angle is digits 7 range 0.00001 .. 2.0 * Pi;
   -- circle struct
   type Circle is record
      R: Radius;
      Pos: Point;
   end record;
   --
   -- compute square of circle
   --
   function Get_Area (c: Circle) return Float;
   --
   --
   --
   function Get_Circle_Point(c: Circle; a: Angle) return Point;

end Shapes_Circle;
