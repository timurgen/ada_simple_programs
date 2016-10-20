with Shapes_Point; use Shapes_Point;
with Shapes_Line;  use Shapes_Line;
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

end Shapes_Rectangle;
