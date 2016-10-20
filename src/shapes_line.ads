with Shapes_Point; use Shapes_Point;

package Shapes_Line is

   type Line_Straight is record
      A: Point;
      B: Point;
   end record with Dynamic_Predicate => Get_Line_Length(Line_Straight.A, Line_Straight.B) > 0.0;

   --
   -- function to compute line length beyween 2 given points
   --
   function Get_Line_Length (A : Point; B : Point) return Float with Post => Get_Line_Length'Result > 0.0;
   --
   -- function that test if two lines intersect each other
   --
   function Intersect(A: Line_Straight; B: Line_Straight) return Boolean;

   function Get_X_Projection_Length(Line: Line_Straight) return Float;

   function Get_Y_Projection_Length(Line: Line_Straight) return Float;

end Shapes_Line;
