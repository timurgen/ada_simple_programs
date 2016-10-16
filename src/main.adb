with Ada.Numerics.Generic_Elementary_Functions;
with Ada.Text_IO;
with Ada.Float_Text_IO;
with Shapes_Point; use Shapes_Point;
with Shapes_Triangle; use Shapes_Triangle;
with Shapes_Line;
with Shapes_Line; use Shapes_Line;
with Shapes_Circle; use Shapes_Circle;
procedure Main is

   -- triangle var
   Triangle_A : Triangle := ((0.0, 0.0), (5.0, 5.0), (10.0, 0.00));



   --
   -- compute square of triangle by 3 sides
   --


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
