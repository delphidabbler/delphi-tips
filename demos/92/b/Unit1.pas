unit Unit1;

interface

uses
  Forms, SizeGripPanel;

type
  TForm1 = class(TForm)
    procedure FormCreate(Sender: TObject);
  private
    fPnl: TSizeGripPanel;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

{ TForm1 }

procedure TForm1.FormCreate(Sender: TObject);
begin
  fPnl := TSizeGripPanel.Create(Self);
  fPnl.Parent := Self;
  fPnl.Top := 20;
  fPnl.Left := 20;
  fPnl.Width := 300;
  fPnl.Height := 200;
  fPnl.Caption := fPnl.ClassName;
  // Change the following properties to see the effect
  fPnl.AllowMove := True;
  fPnl.AllowSize := True;
  fPnl.ShowSizeGrip := True;
end;

end.
