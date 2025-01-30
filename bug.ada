```ada
function Uncommon_Error_Example (Input : Integer) return Integer is
   Result : Integer := 0;
begin
   if Input = 0 then
      raise Constraint_Error with "Division by zero"; -- Standard exception
   else
      Result := 10 / Input;  -- Potential for Numeric_Error
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
      when Numeric_Error =>
         Put_Line("Numeric Error: Overflow or other numeric issue");
      when others =>
         Put_Line("Unhandled exception");
   end;
end Main;
```