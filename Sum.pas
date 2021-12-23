unit Sum;

interface
uses SysUtils, Dialogs, Classes, AbstractClass;

type
TSum = class(BaseClass)
public
  function Calculation(firstValue, secondValue:real):real;override;
end;


implementation
  function TSum.Calculation(firstValue, secondValue: Real): Real;
  var resultValue:real;
  begin
    resultValue := firstValue + secondValue;
    Exit(resultValue);
  end;

end.
