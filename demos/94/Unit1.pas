unit Unit1;

interface

uses
  Forms, Controls, StdCtrls, Classes, ShapedPanel;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    procedure FormCreate(Sender: TObject);
  private
    fPnl: TShapedPanel;
  end;

var
  Form1: TForm1;

implementation

uses
  Graphics;

{$R *.dfm}

{ TForm1 }

procedure TForm1.FormCreate(Sender: TObject);
begin
  fPnl := TShapedPanel.Create(Self);
  fPnl.Parent := Self;
  fPnl.Left := 40;
  fPnl.Top := 40;
  fPnl.Width := 200;
  fPnl.Height := 200;
  // Add label & edit box to panel
  Edit1.Parent := fPnl;
  Edit1.Top := 80;
  Edit1.Left := (fPnl.ClientWidth - Edit1.Width) div 2;
  Label1.Parent := fPnl;
  Label1.Top := Edit1.Top - Label1.Height - 8;
  Label1.Left := Edit1.Left;
  // The following properties can be changed to see the effect
  // on TShapedPanel
  fPnl.BorderColor := clRed;
  fPnl.BorderWidth := 4;
  fPnl.FillColor := clBtnFace;
end;

end.
