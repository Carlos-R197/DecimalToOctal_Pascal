{$mode objfpc}{$H+}

unit TestCase1;

interface

uses FPCUnit, TestUtils, TestRegistry, Converter;

type
  TTestCase1 = class(TTestCase)
  private
    FConverter: TConverter;
  protected
    procedure SetUp; override;
	procedure TearDown; override;
  published
	procedure ZeroTest;
    procedure OneDigitTest;
    procedure TwoDigitTest;	
	procedure ThreeDigitTest;
	procedure FiveDigitTest;
  end;
  
implementation

procedure TTestCase1.SetUp;
begin
  FConverter:= TConverter.Create;
end;

procedure TTestCase1.TearDown;
begin
  FConverter.Free;
end;

procedure TTestCase1.ZeroTest;
begin
  AssertEquals(0, FConverter.Convert(0));
end;

procedure TTestCase1.OneDigitTest;
begin
  AssertEquals(10, FConverter.Convert(8));
end;

procedure TTestCase1.TwoDigitTest;
begin
  AssertEquals(50, FConverter.Convert(40));
end;

procedure TTestCase1.ThreeDigitTest;
begin
  AssertEquals(207, FConverter.Convert(135));
end;

procedure TTestCase1.FiveDigitTest;
begin
  AssertEquals(40214, FConverter.Convert(16524));
end;

initialization 
	RegisterTest(TTestCase1);
end.
  
