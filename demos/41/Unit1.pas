unit Unit1;

interface

uses
  Windows, Forms, Dialogs, StdCtrls, Classes, Controls;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    Edit1: TEdit;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

function search(pat: string; text: string): integer;
var
  i, j, k, m, n: integer;
  skip: array [0..MAXCHAR] of integer;
  found: boolean;
begin
  found := FALSE;
  search := 0;
  m := length(pat);
  if m=0 then
  begin
    search := 1;
    found := TRUE;
  end;
  for k:=0 to MAXCHAR do
    skip[k] := m;   {*** Preprocessing ***}
  for k:=1 to m-1 do
    skip[ord(pat[k])] := m-k;
  k := m;
  n := length(text);            {*** Search ***}
  while not found and (k <= n) do
  begin
    i := k; j := m;
    while (j >= 1) do
    begin
      if text[i] <> pat[j] then
        j := -1
      else
      begin
        j := j-1;
        i := i-1;
      end;
      if j = 0 then
      begin
        search := i+1;
        found := TRUE;
      end;
      k := k + skip[ord(text[k])];
    end;
  end;
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  FoundIdx: Integer;
begin
  // search() returns 0 if the text isn't found or the index of the
  // start of the string if the text is found
  FoundIdx := search(Edit1.Text, Memo1.Text);
  if FoundIdx > 0 then
  begin
    // Found text: highlight it in memo (TMemo.HideSelection must be
    // false for this to work). Since memo selections are 0 based, we
    // subtract 1 from the found index, which is 1 based.
    Memo1.SelStart := FoundIdx - 1;
    Memo1.SelLength := Length(Edit1.Text);
  end
  else
    ShowMessage('Text not found');
end;

end.
