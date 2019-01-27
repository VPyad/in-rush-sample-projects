type
  TOneDigitNumber = 0..9;

procedure Test(OneDigitNumbers: TOneDigitNumber);
begin
  // Do something
end;

begin
  Test( 1);
  Test( 2);
  Test( 9);
  Test(12);   // compiler error '[DCC Error] MyStuffTest.pas(33): E1012 Constant expression violates subrange bounds
end.