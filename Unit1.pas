(*
  Daniel Rodriguez Hernandez
  22/07/2025
  ZXingBridge and zxing-android-embedded port 4 Delphi.

  zxing-android-embedded link:
  https://github.com/journeyapps/zxing-android-embedded
*)

unit Unit1;

interface

uses
  Zxing.JNI, ZxingBridge, Androidapi.JNI.Hardware,
  Androidapi.JNIBridge, Androidapi.JNI.Widget,
  Androidapi.JNI.App, Androidapi.Helpers, Androidapi.JNI.GraphicsContentViewText,
  Androidapi.JNI.JavaTypes, Androidapi.JNI.Os,
  FMX.Helpers.Android, FMX.Platform.Android, System.Messaging,
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Controls.Presentation,
   FMX.StdCtrls, FMX.Objects, FMX.Edit;

type
  TForm1 = class(TForm)
    Button1: TButton;
    ImgQR: TImage;
    Button2: TButton;
    edt: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
    FMessageSubscriptionID: Integer;
    procedure HandleActivityMessage(const Sender: TObject; const M: TMessage);

    const
    ZXING_SCAN_REQUEST = 1001; // cualquier número único
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation
uses
  System.IOUtils;

{$R *.fmx}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
var
  Intent: JIntent;
begin
  Intent := TJIntent.JavaClass.init;
  Intent.setClassName(TAndroidHelper.Context,
  StringToJString('com.journeyapps.barcodescanner.CaptureActivity'));
  Intent.setAction(StringToJString('com.google.zxing.client.android.SCAN'));
  (*
    Visit for more info:
    https://github.com/journeyapps/zxing-android-embedded/blob/master/zxing-android-embedded/src/com/journeyapps/barcodescanner/ScanOptions.java
  *)
  Intent.putExtra(StringToJString('SCAN_FORMATS'), StringToJString('QR_CODE'));
  Intent.putExtra(StringToJString('PROMPT_MESSAGE'), StringToJString('Scan a QR Code'));
  Intent.putExtra(StringToJString('BARCODE_IMAGE_ENABLED'), True); //Scan generates a jpg image
  //Automatic screen orientation
  Intent.putExtra(StringToJString('SCAN_ORIENTATION_LOCKED'), False);
  Intent.putExtra(StringToJString('BEEP_ENABLED'), True); //Scanner sound
  Intent.putExtra(StringToJString('SCAN_CAMERA_ID'),
  TJCamera_CameraInfo.JavaClass.CAMERA_FACING_BACK); //Androidapi.JNI.Hardware
  Intent.putExtra(StringToJString('TORCH_ENABLED'), False); //Enable or disable FlashLight

  TAndroidHelper.Activity.startActivityForResult(Intent, ZXING_SCAN_REQUEST);
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  Writer: JMultiFormatWriter;
  Matrix: JBitMatrix;
  Encoder: JBarcodeEncoder;
  BitmapJava: JBitmap;
  Bitmap: TBitmap;
  Toast: JToast;
begin
  if edt.Text.Trim.IsEmpty then
  begin
    Toast:= TJToast.JavaClass.makeText(TAndroidHelper.Context,
    StrToJCharSequence('¡EditText is Empty!'), TJToast.JavaClass.LENGTH_SHORT);
    Toast.setGravity(TJGravity.JavaClass.CENTER, 0, 0);
    Toast.show;
    Exit;
  end;

  Writer:= TJMultiFormatWriter.JavaClass.init;
  Matrix:= Writer.encode(StringToJString(edt.Text),
  TJBarcodeFormat.JavaClass.QR_CODE, // you can change this for showing other encodings
  400, 400); //width, height
  Encoder:= TJBarcodeEncoder.JavaClass.init;
  BitmapJava:= Encoder.createBitmap(Matrix);
  Bitmap:= TBitmap.Create;
  try
    if JBitmapToBitmap(BitmapJava, Bitmap) then
      ImgQR.Bitmap.Assign(Bitmap);
  finally
    FreeAndNil(Bitmap);
    Matrix.clear;
    BitmapJava.recycle;
  end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  FMessageSubscriptionID:=
  TMessageManager.DefaultManager.SubscribeToMessage(TMessageResultNotification,
  HandleActivityMessage);
end;

procedure TForm1.FormDestroy(Sender: TObject);
begin
  TMessageManager.DefaultManager.Unsubscribe(TMessageResultNotification, FMessageSubscriptionID);
end;

procedure TForm1.HandleActivityMessage(const Sender: TObject;
  const M: TMessage);
var
  RequestCode, ResultCode: Integer;
  Intent: JIntent;
  Contents: JString;
  Path: JString;
begin
  if M.ClassType = TMessageResultNotification then
  begin
    RequestCode := TMessageResultNotification(M).RequestCode;
    ResultCode := TMessageResultNotification(M).ResultCode;
    Intent := TMessageResultNotification(M).Value;

    if RequestCode = ZXING_SCAN_REQUEST then
    begin
      if ResultCode = TJActivity.JavaClass.RESULT_OK then
      begin
        Contents := Intent.getStringExtra(StringToJString('SCAN_RESULT'));
        Path:= Intent.getStringExtra(StringToJString('SCAN_RESULT_IMAGE_PATH'));

        if TFile.Exists(JStringToString(Path)) then
        begin
          try
            ImgQR.Bitmap.LoadFromFile(JStringToString(Path));
          finally
            TFile.Delete(JStringToString(Path));
          end;
        end;

        ShowMessage('Result: ' + JStringToString(Contents) + ' FilePath: ' +
        JStringToString(Path));
      end
      else
        ShowMessage('Exit from Scanner...');
    end;
  end;
end;

end.
