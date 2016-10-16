with Ada.Numerics.Generic_Elementary_Functions;
package body Shapes_Line is

   ---------------------
   -- Get_Line_Length --
   ---------------------

   function Get_Line_Length (A : Point; B : Point) return Float is
      package Float_Func is new Ada.Numerics.Generic_Elementary_Functions
        (Float_Type => Float);
      use Float_Func;
   begin
      -- AB = √(xb - xa)**2 + (yb - ya)**2
      return Sqrt ((Float (B.X) - Float (A.X))**2) +
        ((Float (B.Y) - Float (A.Y))**2);
   end Get_Line_Length;
   pragma Inline(Get_Line_Length);

   function Intersect(A: Line_Straight; B: Line_Straight) return Boolean is
   begin
      --find linear equation for both lines
      -- use it
      -- TODO
      return True;
   end Intersect;

   function Get_X_Projection_Length (Line: Line_Straight) return Float is
   begin
      return Line.B.X - Line.A.X;
   end Get_X_Projection_Length;

   function Get_Y_Projection_Length (Line: Line_Straight) return Float is
   begin
      return Line.B.Y - Line.A.Y;
   end Get_Y_Projection_Length;



end Shapes_Line;
