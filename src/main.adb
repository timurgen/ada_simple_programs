with Ada.Numerics.Generic_Elementary_Functions;
with Ada.Text_IO;
with Ada.Float_Text_IO;
with Shapes_Circle;
with Shapes_Point; use Shapes_Point;
procedure Main is

   -- triangle struct
   type Triangle is record
      A : Point;
      B : Point;
      C : Point;
   end record;
   -- triangle var
   Triangle_A : Triangle := ((0, 0), (5, 5), (10, 0));

   --
   -- function to compute line length beyween 2 given points
   --
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

   --
   -- compute square of triangle by 3 sides
   --
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

   --
   -- ompute square of triangle by 3 angles
   --
   function Get_Triangle_Ara_By_Its_Angles (T: Triangle) return Float is
   begin
      return 0.0;
   end Get_Triangle_Ara_By_Its_Angles;


begin
   Ada.Text_IO.Put ("Square of given triangle is: ");
   Ada.Float_Text_IO.Put
     (Item => Get_Triangle_Area_By_Its_Sides (Triangle_A),
      Aft  => 5,
      Exp  => 0);
end Main;
