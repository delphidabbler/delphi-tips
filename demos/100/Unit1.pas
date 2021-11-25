unit Unit1;

interface

uses
  SysUtils, Forms, Controls, StdCtrls, Graphics, Classes, ExtCtrls;

type
  TForm1 = class(TForm)
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

const
  // test file name: change and/or provide a path if required
  cFileName = 'test';

procedure SaveBitmapToStream( aBitmap: TBitmap; aStream: TStream );
var
  ms: TMemoryStream;
  size: Integer;
begin
  Assert( Assigned(aBitmap));
  Assert( Assigned(aStream));
  ms:= TMemoryStream.Create;
  try
    aBitmap.SaveToStream(ms);
    ms.position := 0;
    size := ms.Size;
    aStream.WriteBuffer( size, Sizeof(size));
    aStream.CopyFrom(ms, size );
  finally
    ms.free
  end;
end;

procedure LoadBitmapFromStream(aBitmap: TBitmap; aStream: TStream );
var
  ms: TMemoryStream;
  size: Integer;
begin
  Assert( Assigned(aBitmap));
  Assert( Assigned(aStream));
  ms:= TMemoryStream.Create;
  try
    aStream.ReadBuffer( size, Sizeof(size));
    ms.CopyFrom(aStream, size );
    ms.position := 0;
    aBitmap.LoadfromStream(ms);
  finally
    ms.free
  end;
end;

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
var
  FS: TFileStream;
begin
  // Save Image1 and Image2 to single file
  FS := TFileStream.Create(cFileName, fmCreate);
  try
    SaveBitmapToStream(Image1.Picture.Bitmap, FS);
    SaveBitmapToStream(Image2.Picture.Bitmap, FS);
  finally
    FS.Free;
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  FS: TFileStream;
begin
  // Load file, split up bitmaps and load into Image3 and Image4
  FS := TFileStream.Create(cFileName, fmOpenRead or fmShareDenyNone);
  try
    LoadBitmapFromStream(Image3.Picture.Bitmap, FS);
    LoadBitmapFromStream(Image4.Picture.Bitmap, FS);
  finally
    FS.Free;
  end;
end;

end.
