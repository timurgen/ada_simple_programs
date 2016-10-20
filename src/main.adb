pragma Assertion_Policy (Check);

with Shapes_Triangle; use Shapes_Triangle;
with Shapes_Point;    use Shapes_Point;
with Shapes_Line;     use Shapes_Line;
with Shapes_Circle; use Shapes_Circle;
with Ada.Text_IO;
with Ada.Float_Text_IO;
procedure Main is
   package FIO renames Ada.Float_Text_IO;
   A  : Point    := (1.0, 1.0, 0.0);
   B  : Point    := (4.0, 2.0, 0.0);
   C  : Point    := (8.0, 1.0, 0.0);
   T  : Triangle := (A, B, C);
   AB : Float;
   BC : Float;
   CA : Float;
   OK : Boolean;
begin

   AB := Get_Line_Length (A => A, B => B);
   BC := Get_Line_Length (A => B, B => C);
   CA := Get_Line_Length (A => C, B => A);
   FIO.Put (AB, Aft => 2, Exp => 0);
   Ada.Text_IO.New_Line;
   FIO.Put (BC, Aft => 2, Exp => 0);
   Ada.Text_IO.New_Line;
   FIO.Put (CA, Aft => 2, Exp => 0);
   Ada.Text_IO.Put_Line (Float'Image (T.A.X));
   OK :=
     (Get_Line_Length (T.A, T.B) + Get_Line_Length (T.B, T.C)) >
     Get_Line_Length (T.A, T.C);
   Ada.Text_IO.Put_Line (Boolean'Image (OK));
end Main;
