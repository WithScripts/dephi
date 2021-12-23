unit AbstractClass;

interface
uses SysUtils, Dialogs, Classes;
type
  BaseClass = class
   public
   function Calculation(firstValue, secondValue:real):real; virtual; abstract;
 end;
 implementation
 end.
