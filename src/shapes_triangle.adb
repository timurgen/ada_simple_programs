with Ada.Numerics.Generic_Elementary_Functions;
with Shapes_Line; use Shapes_Line;
package body Shapes_Triangle is

   ------------------------------------
   -- Get_Triangle_Area_By_Its_Sides --
   ------------------------------------

   function Get_Triangle_Area_By_Its_Sides (T : Triangle) return Float is
      package Float_Func is new Ada.Numerics.Generic_Elementary_Functions
        (Float_Type => Float);
      use Float_Func;
      P      : Float; -- perimeter
      P_Half : Float; -- half perimeter
      AB     : Float; -- AB line length
      BC     : Float; -- BC line length
      CA     : Float; -- CA line length
      S      : Float; -- triangle area
   begin
      AB := Get_Line_Length(T.A, T.B);
      -- Ada.Float_Text_IO.Put(Item => AB, Aft => 2, Exp => 0);

      BC := Get_Line_Length(T.B, T.C);
      -- Ada.Float_Text_IO.Put(Item => BC, Aft => 2, Exp => 0);

      CA := Get_Line_Length(T.C, T.A);
      -- Ada.Float_Text_IO.Put(Item => CA, Aft => 2, Exp => 0);

      P      := AB + BC + CA;
      P_Half := P / 2.0;
      S      := Sqrt (P_Half * (P_Half - AB) * (P_Half - BC) * (P_Half - CA));
      return S;
   end Get_Triangle_Area_By_Its_Sides;

end Shapes_Triangle;
