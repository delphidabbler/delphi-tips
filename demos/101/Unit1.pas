unit Unit1;

interface

uses
  SysUtils, Forms, Classes, Controls, StdCtrls;

type
  TForm1 = class(TForm)
    ListBox1: TListBox;
    procedure FormCreate(Sender: TObject);
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

function IntToRoman(num: Cardinal): string;
const
  Nvals = 13;
  vals: array [1..Nvals] of word =
    (1, 4, 5, 9, 10, 40, 50, 90, 100, 400, 500, 900, 1000);
  roms: array [1..Nvals] of string[2] =
    ('I', 'IV', 'V', 'IX', 'X', 'XL', 'L', 'XC', 'C',
    'CD', 'D', 'CM', 'M');
var
  b: 1..Nvals;
begin
  result := '';
  b := Nvals;
  while num > 0 do
  begin
    while vals[b] > num do
      dec(b);
    dec (num, vals[b]);
    result := result + roms[b]
  end;
end;

{ TForm1 }

procedure TForm1.FormCreate(Sender: TObject);
var
  N: Cardinal;
  R: string;
begin
  for N := 1 to 3999 do
  begin
    R := IntToRoman(N);
    ListBox1.Items.Add(Format('%d'#9'%s', [N, R]));
  end;
end;

end.
