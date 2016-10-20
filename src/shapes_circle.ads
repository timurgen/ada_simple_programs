with Shapes_Point; use Shapes_Point;
with Ada.Numerics;

package Shapes_Circle is

   -- type for circle radius
   type Radius is digits 7 range 0.00001 .. 1.0E35;

   subtype Angle is Float range 0.0 .. Ada.Numerics.Pi;

   -- circle struct
   type Circle is record
      Pos: Point;
      R: Radius;
   end record;
   --
   --
   --
   function Get_Area (c: Circle) return Float with Post => Get_Area'Result > 0.0 ;
   --
   --
   --
   function Get_Circle_Point(c: Circle; a: Angle) return Point;

end Shapes_Circle;
