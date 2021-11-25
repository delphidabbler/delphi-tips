unit Unit1;

interface

uses
  Forms, Todrmemo;

type
  TForm1 = class(TForm)
    procedure FormCreate(Sender: TObject);
  private
    fODM: TOwnerDrawMemo;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

{ TForm1 }

procedure TForm1.FormCreate(Sender: TObject);
begin
  fODM := TOwnerDrawMemo.Create(Self);
  fODM.Parent := Self;
  fODM.Top := 20;
  fODM.Left := 20;
  fODM.Lines.Text :=
    'Line 1'#13#10'Line 2'#13#10'Line 3'#13#10'Line 4';
end;

end.
