unit Division;

interface
uses SysUtils, Dialogs, Classes, AbstractClass;

type
TDiv = class(BaseClass)
public
  function Calculation(firstValue, secondValue:real):real;override;
end;


implementation
  function TDiv.Calculation(firstValue, secondValue: Real): Real;
  var resultValue:real;
  begin
    resultValue := firstValue / secondValue;
    Exit(resultValue);
  end;

end.

