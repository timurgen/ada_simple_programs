with Ada.Numerics;
with Ada.Numerics.Generic_Elementary_Functions;

package body Shapes_Circle is

   --------------
   -- Get_Area --
   --------------
   function Get_Area (c : Circle) return Float is
   begin
      return Ada.Numerics.Pi * Float (c.R)**2;
   end Get_Area;
   ----------------------
   -- Get_Circle_Point --
   ----------------------
   function Get_Circle_Point (c : Circle; a : Angle) return Point is
      package Float_Func is new Ada.Numerics.Generic_Elementary_Functions
        (Float_Type => Float);
      X : Float; -- x = a +rcos t
      Y : Float; -- y = b+ rsin t
   begin
      X := c.Pos.X * Float (c.R) * Float_Func.Cos (X => Float (a));
      Y := c.Pos.Y * Float (c.R) * Float_Func.Sin (X => Float (a));
      return (X, Y, 0.0);
   end Get_Circle_Point;

end Shapes_Circle;
