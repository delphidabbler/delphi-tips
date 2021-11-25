unit Unit1;

interface

uses
  ExtCtrls, Controls, Forms;

type

  TMyNewPanel = class(TPanel)
  protected
    procedure CreateParams(var Params: TCreateParams); override;
  end;

  TForm1 = class(TForm)
    procedure FormCreate(Sender: TObject);
  private
    fPnl: TMyNewPanel;
  end;

var
  Form1: TForm1;

implementation

uses
  Windows;

{$R *.dfm}

{ TMyNewPanel }

procedure TMyNewPanel.CreateParams(var Params: TCreateParams);
begin
  inherited;
  Params.Style := Params.Style or WS_SIZEBOX;
end;

{ TForm1 }

procedure TForm1.FormCreate(Sender: TObject);
begin
  fPnl := TMyNewPanel.Create(Self);
  fPnl.Parent  := Self;
  fPnl.Top := 20;
  fPnl.Left := 20;
  fPnl.Caption := fPnl.ClassName;
end;

end.
