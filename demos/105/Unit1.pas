unit Unit1;

interface

uses
  SysUtils, Forms, StdCtrls, Controls, Classes, Messages, Windows;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    CheckBox1: TCheckBox;
    procedure Button1Click(Sender: TObject);
  private
    function SendMessageToCtrl(const Name: string;
      const Msg: Cardinal; WParam, LParam: Integer): Boolean;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

function TForm1.SendMessageToCtrl(const Name: string;
  const Msg: Cardinal; WParam, LParam: Integer): Boolean;
var
  Idx: Integer;
  Ctrl: TControl;
begin
  Result := False;
  // scan all components owned by the form
  for Idx := 0 to Pred(ComponentCount) do
  begin
    if Components[Idx] is TControl then
    begin
      // we have a TControl: check its name (case insensitive)
      Ctrl := Components[Idx] as TControl;
      if AnsiSameText(Ctrl.Name, Name) then
      begin
        // found it: send message and bail out
        Ctrl.Perform(Msg, WParam, LParam);
        Result := True;
        Exit;
      end;
    end;
  end;
end;

procedure TForm1.Button1Click(Sender: TObject);
const
  AText: PChar = 'I got a message';
begin
  // send a click to the checkbox: this will check it
  SendMessageToCtrl('CheckBox1', WM_LBUTTONDOWN, MK_LBUTTON, 0);
  SendMessageToCtrl('CheckBox1', WM_LBUTTONUP, MK_LBUTTON, 0);
  // set the text of the label
  SendMessageToCtrl('Label1', WM_SETTEXT, 0, Integer(AText));
  SendMessageToCtrl('Label1', CM_TEXTCHANGED, 0, 0);
  // set the text of the edit control
  SendMessageToCtrl('Edit1', WM_SETTEXT, 0, Integer(AText));
end;

end.
