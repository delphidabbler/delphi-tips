unit SizeablePanel;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls;

type
  TSizeablePanel = class(TPanel)
  private
    FDragging: Boolean;
    FLastPos: TPoint;
  protected
    procedure Paint; override;
    procedure MouseDown(Button: TMouseButton; Shift:
      TShiftState; X, Y: Integer); override;
    procedure MouseMove(Shift: TShiftState; X, Y: Integer); override;
    procedure MouseUp(Button: TMouseButton; Shift: TShiftState;
      X, Y: Integer); override;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('PBGoodies', [TSizeablePanel]);
end;

procedure TSizeablePanel.MouseDown(Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if (Button = mbLeft) and ((Width - x ) < 10) and
    ((Height - y ) < 10) then
  begin
    FDragging := TRue;
    FLastPos := Point(x, y);
    MouseCapture := true;
    Screen.cursor := crSizeNWSE;
  end
  else
    inherited;
end;

procedure TSizeablePanel.MouseMove(Shift: TShiftState; X, Y: Integer);
var
  r: TRect;
begin
  if FDragging then
  begin
    r := BoundsRect;
    SetBounds( r.left, r.top, r.right - r.left + X - FlastPos.X,
    r.bottom - r.top + Y - Flastpos.Y );
    FLastPos := Point( x, y );
  end
  else
  begin
    inherited;
    if ((Width - x ) < 10) and ((Height - y ) < 10) then
      Cursor := crSizeNWSE
    else
      Cursor := crDefault;  
  end;
end;

procedure TSizeablePanel.MouseUp(Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if FDragging then
  begin
    FDragging := False;
    MouseCapture := false;
    Screen.Cursor := crDefault;
  end
  else
    inherited;
end;

procedure TSizeablePanel.Paint;
var
  x, y: Integer;
begin
  inherited;
  Canvas.Font.Name := 'Marlett';
  Canvas.Font.Size := 10;
  Canvas.Brush.Style := bsClear;
  x := clientwidth - canvas.textwidth('o');
  y := clientheight - canvas.textheight('o');
  canvas.textout( x, y, 'o' );
end;

end.
