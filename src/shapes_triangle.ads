with Shapes_Point; use Shapes_Point;
with Shapes_Line;  use Shapes_Line;

package Shapes_Triangle is

   -- triangle struct
   --
   type Triangle is record
      A : Point;
      B : Point;
      C : Point;
   end record with
      Predicate =>
      (Get_Line_Length (Triangle.A, Triangle.B) +
       Get_Line_Length (Triangle.B, Triangle.C)) >
      Get_Line_Length (Triangle.C, Triangle.A)
      and then
        (Get_Line_Length (Triangle.B, Triangle.C) +
         Get_Line_Length (Triangle.C, Triangle.A)) >
        Get_Line_Length (Triangle.A, Triangle.B)
      and then
        (Get_Line_Length (Triangle.C, Triangle.A) +
         Get_Line_Length (Triangle.A, Triangle.B)) >
        Get_Line_Length (Triangle.B, Triangle.C);

   function Get_Triangle_Area_By_Its_Sides (T : Triangle) return Float with
      Post => Get_Triangle_Area_By_Its_Sides'Result > 0.0;
end Shapes_Triangle;
