unit Unit1;

interface

uses
  // XPMan,
  Forms, Controls, StdCtrls, Classes, ExtCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Image1: TImage;
    procedure Button1Click(Sender: TObject);
  end;

var
  Form1: TForm1;

implementation

uses
  Windows, Graphics;

{$R *.dfm}

function Control2Bitmap(Control_: TWinControl): TBitmap;
begin
  Result := TBitmap.Create;
  with Result do begin
    Height := Control_.Height;
    Width  := Control_.Width;
    Canvas.Handle := CreateDC(nil, nil, nil, nil);
    Canvas.Lock;
    Control_.PaintTo(Canvas.Handle, 0, 0);
    Canvas.Unlock;
    DeleteDC(Canvas.Handle);
  end;
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  Bmp: TBitmap;
begin
  Bmp := Control2Bitmap(Button1);
  try
    Image1.Picture.Bitmap := Bmp;
  finally
    Bmp.Free;
  end;
end;

end.
