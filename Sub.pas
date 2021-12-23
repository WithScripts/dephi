unit Sub;

interface
uses SysUtils, Dialogs, Classes, AbstractClass;

type
TSub = class(BaseClass)
public
  function Calculation(firstValue, secondValue:real):real;override;
end;


implementation
  function TSub.Calculation(firstValue, secondValue: Real): Real;
  var resultValue:real;
  begin
    resultValue := firstValue - secondValue;
    Exit(resultValue);
  end;

end.

