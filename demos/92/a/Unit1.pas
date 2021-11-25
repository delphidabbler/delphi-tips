unit Unit1;

interface

uses
  Forms, SizeablePanel;

type
  TForm1 = class(TForm)
    procedure FormCreate(Sender: TObject);
  private
    fPnl: TSizeablePanel;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

{ TForm1 }

procedure TForm1.FormCreate(Sender: TObject);
begin
  fPnl := TSizeablePanel.Create(Self);
  fPnl.Parent := Self;
  fPnl.Top := 20;
  fPnl.Left := 20;
  fPnl.Caption := fPnl.ClassName;
end;

end.
