{$mode objfpc}{$H+}

unit Converter;

interface

type
  TConverter = class
  public
    function Convert(Number: Integer): Integer;
  end;
  
implementation

function TConverter.Convert(Number: Integer): Integer;
begin
  Result:= 0;
end;

end.
  
