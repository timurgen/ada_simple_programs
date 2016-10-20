with Shapes_Point;  use Shapes_Point;
with Shapes_Line;   use Shapes_Line;
with Shapes_Circle; use Shapes_Circle;
package Shapes_Rectangle is

   type Rectangle is record
      A : Point;
      B : Point;
      C : Point;
      D : Point;
   end record;

   subtype Square is Rectangle with
        Predicate => Get_Line_Length (Square.A, Square.B) =
        Get_Line_Length (Square.B, Square.C)
        and then
          Get_Line_Length (Square.B, Square.C) =
          Get_Line_Length (Square.C, Square.D)
        and then
          Get_Line_Length (Square.C, Square.D) =
          Get_Line_Length (Square.D, Square.A);

   function Get_Perimeter (Plane : Rectangle) return Float with
      Post => Get_Perimeter'Result > 0.0;

   function Get_Area (Plane : Rectangle) return Float with
      Post => Get_Area'Result > 0.0;

   function Get_Inner_Circle (Plane : Square) return Circle;

   function Get_Outer_Circle (Plane : Square) return Circle;

end Shapes_Rectangle;
