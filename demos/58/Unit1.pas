unit Unit1;

interface

uses
  SHDocVw, StdCtrls, Classes, Controls, OleCtrls, Forms;

type
  TForm1 = class(TForm)
    WebBrowser1: TWebBrowser;
    Edit1: TEdit;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  end;

var
  Form1: TForm1;

implementation

uses
  SysUtils, Variants, Windows, MSHTML;

{$R *.dfm}

procedure HandleStyleSheets(const Document: IDispatch);
var
  Doc: IHTMLDocument2;
  StyleSheets: IHTMLStyleSheetsCollection;
  SheetIdx: Integer;
  OVSheetIdx: OleVariant;
  StyleSheet: IHTMLStyleSheet;
  OVStyleSheet: OleVariant;
  RuleIdx: Integer;
  Style: IHTMLRuleStyle;
begin
  if not Supports(Document, IHTMLDocument2, Doc) then
    Exit;
  StyleSheets := Doc.styleSheets;
  for SheetIdx := 0 to Pred(StyleSheets.length) do
  begin
    OVSheetIdx := SheetIdx;
    OVStyleSheet := StyleSheets.item(OVSheetIdx);
    if VarSupports(OVStyleSheet, IHTMLStyleSheet, StyleSheet) then
    begin
      for RuleIdx := 0 to Pred(StyleSheet.rules.length) do
      begin
        Style := StyleSheet.rules.item(RuleIdx).style;
        Style.backgroundImage := '';
        Style.backgroundColor := '';
      end;
    end;
  end;
end;

procedure HandleBodyStyleAttrs(const Document: IDispatch);
var
  Doc: IHTMLDocument2;
  BodyElem: IHTMLElement;
  Style: IHTMLStyle;
begin
  if not Supports(Document, IHTMLDocument2, Doc) then
    Exit;
  if not Supports(Doc.body, IHTMLElement, BodyElem) then
    Exit;
  Style := BodyElem.style;
  Style.backgroundImage := '';
  Style.backgroundColor := '';
end;

procedure HandleBodyAttrs(const Document: IDispatch);
var
  Doc: IHTMLDocument2;
  BodyElem: IHTMLBodyElement;
begin
  if not Supports(Document, IHTMLDocument2, Doc) then
    Exit;
  if not Supports(Doc.body, IHTMLBodyElement, BodyElem) then
    Exit;
  BodyElem.background := '';
  BodyElem.bgColor := '';
end;

procedure TForm1.Button1Click(Sender: TObject);

  // from http://www.delphidabbler.com/tips/72
  procedure Pause(ADelay: Cardinal);
  var
    StartTC: Cardinal;
  begin
    StartTC := GetTickCount;
    repeat
      Application.ProcessMessages;
    until Int64(GetTickCount) - Int64(StartTC) >= ADelay;
  end;

begin
  WebBrowser1.Navigate(Edit1.Text);
  while WebBrowser1.ReadyState <> READYSTATE_COMPLETE do
    Pause(5);
  HandleStyleSheets(WebBrowser1.Document);
  HandleBodyStyleAttrs(WebBrowser1.Document);
  HandleBodyAttrs(WebBrowser1.Document);
end;

end.
