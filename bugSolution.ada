```ada
function Uncommon_Error_Example (Input : Integer) return Integer is
   Result : Integer := 0;
begin
   if Input = 0 then
      raise Constraint_Error with "Division by zero"; -- Standard exception
   else
      begin
         Result := 10 / Input;  -- Potential for Numeric_Error
      exception
         when Numeric_Error =>
            Put_Line("Numeric Error: Overflow or other numeric issue. Input: " & Integer'Image(Input));
            return -1; -- Or handle appropriately
      end;
   end if;
   return Result;
end Uncommon_Error_Example;

procedure Main is
   X : Integer := 0;
   Y : Integer;
begin
   begin
      Y := Uncommon_Error_Example(X); -- Could raise Constraint_Error or Numeric_Error
      Put_Line("Result: " & Integer'Image(Y));
   exception
      when Constraint_Error =>
         Put_Line("Constraint Error: Division by zero");
      when others =>
         Put_Line("Unhandled exception");
   end;
   X := 5;
   Y := Uncommon_Error_Example(X);
   Put_Line("Result: " & Integer'Image(Y));
   X := -1000000000; -- A very large number to potentially trigger overflow
   Y := Uncommon_Error_Example(X);
   Put_Line("Result: " & Integer'Image(Y));
end Main;
```