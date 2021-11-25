unit Unit1;

interface

uses
  SysUtils, Forms, StdCtrls, Graphics, Classes, Controls, ExtCtrls;

type
  TForm1 = class(TForm)
    Image: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure ImageMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure GetRGB(Col: TColor; var R, G, B: Byte);
var
  Color: $0..$FFFFFFFF;
begin
  Color := ColorToRGB(Col);
  R := ($000000FF and Color);
  G := ($0000FF00 and Color) Shr 8;
  B := ($00FF0000 and Color) Shr 16;
end;

procedure TForm1.ImageMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
var
  ColNumb: TColor;
  R, G, B: Byte;
begin
  ColNumb := Image.Canvas.Pixels[X, Y]; {The image can't be a JPG}
  GetRGB(ColNumb, R, G, B);
  {Here are the RGB values you need}
  Label1.Caption := Format('Red: %d', [R]);
  Label2.Caption := Format('Green: %d', [G]);
  Label3.Caption := Format('Blue: %d', [B]);
end;

end.
