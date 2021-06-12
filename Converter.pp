{$mode objfpc}{$H+}

unit Converter;

interface

uses SysUtils, StrUtils;

type
  TConverter = class
  public
    function Convert(Number: Integer): Integer;
  end;
  
implementation

function TConverter.Convert(Number: Integer): Integer;
var
	ReversedString: String;
	DivisionResult: Integer;
	CurrentRemainder: Integer;
begin
  if (Number = 0) then
    ReversedString:= '0'
  else
	ReversedString:= '';

  DivisionResult:= Number;
   
  while DivisionResult > 0 do
  begin
	CurrentRemainder:= DivisionResult mod 8;
	ReversedString:= ReversedString + IntToStr(CurrentRemainder);
	DivisionResult:= DivisionResult div 8;
  end;
   
  ReversedString := ReverseString(ReversedString);
  Result:= StrToInt(ReversedString);
end;

end.
  
