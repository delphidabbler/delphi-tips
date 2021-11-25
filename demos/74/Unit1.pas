unit Unit1;

interface

uses
  Forms, Classes, Controls, StdCtrls, Messages;

type
  // Example of a TWinControl derived control
  TGroupBoxEx = class(TGroupBox)
  protected
    procedure CreateParams(var params: TCreateParams); override;
    procedure WMEraseBkGnd(var msg: TWMEraseBkGnd);
      message WM_ERASEBKGND;
  end;

  // Example of a TGraphicControl derived control
  TLabelEx = class(TLabel)
  public
    constructor Create(AOwner: TComponent); override;
  end;

type
  TForm1 = class(TForm)
    procedure FormCreate(Sender: TObject);
    procedure swe3(Sender: TObject);
  private
    fGB: TGroupBox;     // standard group box
    fGBX: TGroupBoxEx;  // transparent group box
    fLbl: TLabel;       // standard label
    fLblX: TLabelEx;    // transparent label
  end;

var
  Form1: TForm1;

implementation

uses
  Windows, Graphics;

{$R *.dfm}

{ TForm1 }

procedure TForm1.FormCreate(Sender: TObject);
begin
  // Normal group box
  fGB := TGroupBox.Create(Self);
  fGB.Parent := Self;
  fGB.Caption := 'TGroupBox';
  fGB.Top := 20;
  fGB.Left := 20;
  // Special group box
  fGBX := TGroupBoxEx.Create(Self);
  fGBX.Parent := Self;
  fGBX.Caption := 'TGroupBoxEx';
  fGBX.Top := 20;
  fGBX.Left := fGB.Left + fGB.Width + 20;
  // Normal label
  fLbl := TLabel.Create(Self);
  fLbl.Parent := Self;
  fLbl.Caption := 'TLabel';
  fLbl.Top := fGB.Top + fGB.Height + 20;
  fLbl.Left := fGB.Left;
  // Special label
  fLblX := TLabelEx.Create(Self);
  fLblX.Parent := Self;
  fLblX.Caption := 'TLabelEx';
  fLblX.Top := fGBX.Top + fGBX.Height + 20;
  fLblX.Left := fGBX.Left;
end;

// Paint form in yellow / white candy stripes
procedure TForm1.swe3(Sender: TObject);
var
  Idx: Integer;
begin
  for Idx := 0 to ClientHeight div 8 do
  begin
    if Odd(Idx) then
      Canvas.Brush.Color := clWhite
    else
      Canvas.Brush.Color := $aaffff;  // pale yellow
    Canvas.FillRect(Rect(0, Idx * 8, ClientWidth, Idx * 8 + 8));
  end;
end;

{ TGroupBoxEx: implemented per tip #87 for TWinControls }

procedure TGroupBoxEx.CreateParams(var params: TCreateParams);
begin
  inherited;
  params.ExStyle := params.ExStyle or WS_EX_TRANSPARENT;
end;

procedure TGroupBoxEx.WMEraseBkGnd(var msg: TWMEraseBkGnd);
begin
  SetBkMode (msg.DC, TRANSPARENT);
  msg.result := 1;
end;

{ TLabelEx: implemented per tip #87 for TGraphicControls }

constructor TLabelEx.Create(AOwner: TComponent);
begin
  inherited;
  ControlStyle := ControlStyle - [csOpaque];
end;

end.
