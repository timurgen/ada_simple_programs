with Shapes_Point; use Shapes_Point;

package Shapes_Circle is

   -- type for circle radius
   type Radius is digits 7 range 0.00001 .. 1.0E35;

   -- circle struct
   type Circle is record
      R: Radius;
   end record;
   --
   --
   --
   function Get_Area (c: Circle) return Float;
   --
   --
   --
   function Get_Circle_Point(c: Circle; a: Angle) return Point;

end Shapes_Circle;
