with Shapes_Line; use Shapes_Line;

package body Shapes_Rectangle is

   -------------------
   -- Get_Perimeter --
   -------------------

   function Get_Perimeter (Plane : Rectangle) return Float is
      P : Float;
   begin
      P :=
        Get_Line_Length (A => Plane.A, B => Plane.B) +
        Get_Line_Length (A => Plane.B, B => Plane.C) +
        Get_Line_Length (A => Plane.C, B => Plane.D) +
        Get_Line_Length (A => Plane.D, B => Plane.A);
      return P;
   end Get_Perimeter;

   --------------
   -- Get_Area --
   --------------

   function Get_Area (Plane : Rectangle) return Float is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Area unimplemented");
      raise Program_Error with "Unimplemented function Get_Area";
      return Get_Area (Plane);
   end Get_Area;

   ----------------------
   -- Get_Inner_Circle --
   ----------------------

   function Get_Inner_Circle (Plane : Square) return Circle is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning
        (Standard.True,
         "Get_Inner_Circle unimplemented");
      raise Program_Error with "Unimplemented function Get_Inner_Circle";
      return Get_Inner_Circle (Plane);
   end Get_Inner_Circle;

   ----------------------
   -- Get_Outer_Circle --
   ----------------------

   function Get_Outer_Circle (Plane : Square) return Circle is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning
        (Standard.True,
         "Get_Outer_Circle unimplemented");
      raise Program_Error with "Unimplemented function Get_Outer_Circle";
      return Get_Outer_Circle (Plane);
   end Get_Outer_Circle;

end Shapes_Rectangle;
