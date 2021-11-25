unit Unit1;

interface

uses
  SysUtils, Forms, Classes, Controls, StdCtrls;

type
  TForm1 = class(TForm)
    ListBox1: TListBox;
    ListBox2: TListBox;
    procedure FormCreate(Sender: TObject);
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

// Routine from tip
procedure SortShell(var aSort: array of Word);
var
  iI, iJ, iK,
  iSize: Integer;
  wTemp: Word;
begin
  iSize := High(aSort);
  iK := iSize shr 1;
  while iK > 0 do begin
    for iI := 0 to iSize - iK do begin
      iJ := iI;
      while (iJ >= 0) and (aSort[iJ] > aSort[iJ + iK]) do begin
        wTemp := aSort[iJ];
        aSort[iJ] := aSort[iJ + iK];
        aSort[iJ + iK] := wTemp;
        if iJ > iK then
          Dec(iJ, iK)
        else
          iJ := 0
      end;
    end;
    iK := iK shr 1;
  end;
end;

procedure TForm1.FormCreate(Sender: TObject);

  procedure AddToLB(const Nums: array of Word; LB: TListBox);
  var
    I: Integer;
  begin
    for I := Low(Nums) to High(Nums) do
      LB.Items.Add(IntToStr(Nums[I]));
  end;

var
  I: Integer;
  Nums: array[1..50] of Word;
begin
  // Create list of random numbers and display it
  Randomize;
  for I := Low(Nums) to High(Nums) do
    Nums[I] := Random(1000);
  AddToLB(Nums, ListBox1);
  // Sort list and display sorted numbers
  SortShell(Nums);
  AddToLB(Nums, ListBox2);
end;

end.
