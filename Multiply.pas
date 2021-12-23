unit Multiply;

interface
uses SysUtils, Dialogs, Classes, AbstractClass;

type
TMul = class(BaseClass)
public
  function Calculation(firstValue, secondValue:real):real;override;
end;


implementation
  function TMul.Calculation(firstValue, secondValue: Real): Real;
  var resultValue:real;
  begin
    resultValue := firstValue * secondValue;
    Exit(resultValue);
  end;

end.

