unit Todrmemo;

interface

uses
  SysUtils, WinTypes, WinProcs, Messages, Classes, Graphics, Controls,
  Forms, Dialogs, StdCtrls;

type
  TOwnerDrawMemo = class(TMemo)
  private
    procedure WMPaint(var Message: TWMPaint); message WM_PAINT;
  end;

procedure Register;

implementation

procedure TOwnerDrawMemo.WMPaint(var Message: TWMPaint);
var
  Buffer: Array[0..255] of Char;
  PS: TPaintStruct;
  DC: HDC;
  i: Integer;
  X, Y, Z: Word;
  OldColor: LongInt;
begin
  DC := Message.DC;
  if DC = 0 then
    DC := BeginPaint(Handle, PS);
  try
    X := 1;
    Y := 1;
    SetBkColor(DC, Color);
    SetBkMode(DC, Transparent);
    OldColor := Font.Color;
    for i:=0 to Pred(Lines.Count) do
    begin
      { this is your place to set/reset the font... }
      if odd(i) then
        SetTextColor(DC, clRed)
      else
        SetTextColor(DC, OldColor);
      Z := Length(Lines[i]);
      StrPCopy(Buffer, Lines[i]);
      Buffer[Z] := #0;  { not really needed }
      TextOut(DC, X, Y, Buffer, Z);
      Inc(Y, abs(Font.Height));
    end;
  finally
    if Message.DC = 0 then
      EndPaint(Handle, PS);
  end;
end;

procedure Register;
begin
  RegisterComponents('Samples', [TOwnerDrawMemo]);
end;

end.
