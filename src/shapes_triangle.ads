with Shapes_Point; use Shapes_Point;

package Shapes_Triangle is

      -- triangle struct
   type Triangle is record
      A : Point;
      B : Point;
      C : Point;
   end record;

   function Get_Triangle_Area_By_Its_Sides (T : Triangle) return Float;
end Shapes_Triangle;
