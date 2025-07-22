unit ZxingBridge;

interface

uses
  Zxing.JNI,
  Androidapi.JNIBridge, Androidapi.JNI.JavaTypes, Androidapi.JNI.GraphicsContentViewText, Androidapi.JNI.Hardware, Androidapi.JNI.Os, Androidapi.JNI.Util, Androidapi.JNI.Support, Androidapi.JNI.Widget, Androidapi.JNI.App, Androidapi.JNI.Media;

type
  JAmbientLightManager = interface;
  JAutoFocusManager = interface;
  JBarcodeCallback = interface;
  JBarcodeEncoder = interface;
  JBarcodeResult = interface;
  JBarcodeView = interface;
  JBeepManager = interface;
  JCameraConfigurationUtils = interface;
  JCameraInstance = interface;
  JCameraManager = interface;
  JCameraParametersCallback = interface;
  JCameraPreview = interface;
  JCameraPreview_StateListener = interface;
  JCameraSettings = interface;
  JCameraSettings_FocusMode = interface;
  JCameraSurface = interface;
  JCaptureActivity = interface;
  JCaptureManager = interface;
  JCenterCropStrategy = interface;
  JCompoundBarcodeView = interface;
  JDecodeFormatManager = interface;
  JDecodeHintManager = interface;
  JDecoder = interface;
  JDecoderFactory = interface;
  JDecoderResultPointCallback = interface;
  JDecoderThread = interface;
  JDecoratedBarcodeView = interface;
  JDecoratedBarcodeView_TorchListener = interface;
  JDefaultDecoderFactory = interface;
  JDisplayConfiguration = interface;
  JFitCenterStrategy = interface;
  JFitXYStrategy = interface;
  JInactivityTimer = interface;
  JIntentIntegrator = interface;
  JIntentResult = interface;
  JIntents = interface;
  JIntents_Scan = interface;
  JInvertedDecoder = interface;
  JLegacyPreviewScalingStrategy = interface;
  JMixedDecoder = interface;
  JOpenCameraInterface = interface;
  JPreviewCallback = interface;
  JPreviewScalingStrategy = interface;
  JRawImageData = interface;
  JRotationCallback = interface;
  JRotationListener = interface;
  JScanContract = interface;
  JScanIntentResult = interface;
  JScanOptions = interface;
  JSize = interface;
  JSourceData = interface;
  JUtil = interface;
  JViewfinderView = interface;

  JPreviewScalingStrategyClass = interface(JObjectClass)
    ['{D2D9C7EA-B319-45E4-AAC6-C7B4DC1E7C69}']
    {class} function init: JPreviewScalingStrategy; cdecl;
  end;

  [JavaSignature('com/journeyapps/barcodescanner/camera/PreviewScalingStrategy')]
  JPreviewScalingStrategy = interface(JObject)
    ['{E4BF0C10-B626-4A31-A6F7-A6F41E672084}']
    function getBestPreviewOrder(list: JList; size: JSize): JList; cdecl;
    function getBestPreviewSize(list: JList; size: JSize): JSize; cdecl;
    function scalePreview(size: JSize; size_1: JSize): JRect; cdecl;
  end;
  TJPreviewScalingStrategy = class(TJavaGenericImport<JPreviewScalingStrategyClass, JPreviewScalingStrategy>) end;

  JPreviewCallbackClass = interface(IJavaClass)
    ['{16A99058-8C64-4264-9C07-B8D70B53C09A}']
  end;

  [JavaSignature('com/journeyapps/barcodescanner/camera/PreviewCallback')]
  JPreviewCallback = interface(IJavaInstance)
    ['{3DD0684F-5D20-4504-9B14-D9435381FD82}']
    procedure onPreview(sourceData: JSourceData); cdecl;
    procedure onPreviewError(exception: JException); cdecl;
  end;
  TJPreviewCallback = class(TJavaGenericImport<JPreviewCallbackClass, JPreviewCallback>) end;

  JLegacyPreviewScalingStrategyClass = interface(JPreviewScalingStrategyClass)
    ['{3DF85B60-E45A-4EF1-B4B5-F0C02C8E3654}']
    {class} function init: JLegacyPreviewScalingStrategy; cdecl;
    {class} function scale(size: JSize; size_1: JSize): JSize; cdecl;
  end;

  [JavaSignature('com/journeyapps/barcodescanner/camera/LegacyPreviewScalingStrategy')]
  JLegacyPreviewScalingStrategy = interface(JPreviewScalingStrategy)
    ['{81433D1E-BDF3-4C59-8EDB-D5707A650B50}']
    function getBestPreviewSize(list: JList; size: JSize): JSize; cdecl;
    function scalePreview(size: JSize; size_1: JSize): JRect; cdecl;
  end;
  TJLegacyPreviewScalingStrategy = class(TJavaGenericImport<JLegacyPreviewScalingStrategyClass, JLegacyPreviewScalingStrategy>) end;

  JFitXYStrategyClass = interface(JPreviewScalingStrategyClass)
    ['{E08418BF-1E81-456F-A830-0FAA96A8F6D0}']
    {class} function init: JFitXYStrategy; cdecl;
  end;

  [JavaSignature('com/journeyapps/barcodescanner/camera/FitXYStrategy')]
  JFitXYStrategy = interface(JPreviewScalingStrategy)
    ['{403653E2-70CC-4812-8AA3-80E497DBB321}']
    function scalePreview(size: JSize; size_1: JSize): JRect; cdecl;
  end;
  TJFitXYStrategy = class(TJavaGenericImport<JFitXYStrategyClass, JFitXYStrategy>) end;

  JFitCenterStrategyClass = interface(JPreviewScalingStrategyClass)
    ['{958F3A69-55A2-4B2F-A19F-6C80827FFC46}']
    {class} function init: JFitCenterStrategy; cdecl;
  end;

  [JavaSignature('com/journeyapps/barcodescanner/camera/FitCenterStrategy')]
  JFitCenterStrategy = interface(JPreviewScalingStrategy)
    ['{2E2ED05B-E38B-4B64-AF83-66281B5EFAEE}']
    function scalePreview(size: JSize; size_1: JSize): JRect; cdecl;
  end;
  TJFitCenterStrategy = class(TJavaGenericImport<JFitCenterStrategyClass, JFitCenterStrategy>) end;

  JDisplayConfigurationClass = interface(JObjectClass)
    ['{3B1ACA32-E31C-4E59-B3C2-51A7CA5C9ECF}']
    {class} function init(int: Integer; size: JSize): JDisplayConfiguration; overload; cdecl;
    {class} function init(int: Integer): JDisplayConfiguration; overload; cdecl;
  end;

  [JavaSignature('com/journeyapps/barcodescanner/camera/DisplayConfiguration')]
  JDisplayConfiguration = interface(JObject)
    ['{4E477070-14D0-4E34-B9A2-C8B2BD007944}']
    function getBestPreviewSize(list: JList; boolean: Boolean): JSize; cdecl;
    function getDesiredPreviewSize(boolean: Boolean): JSize; cdecl;
    function getPreviewScalingStrategy: JPreviewScalingStrategy; cdecl;
    function getRotation: Integer; cdecl;
    function getViewfinderSize: JSize; cdecl;
    function scalePreview(size: JSize): JRect; cdecl;
    procedure setPreviewScalingStrategy(previewScalingStrategy: JPreviewScalingStrategy); cdecl;
  end;
  TJDisplayConfiguration = class(TJavaGenericImport<JDisplayConfigurationClass, JDisplayConfiguration>) end;

  JCenterCropStrategyClass = interface(JPreviewScalingStrategyClass)
    ['{66452677-9C34-4C1D-9C8E-6B12018FFF0D}']
    {class} function init: JCenterCropStrategy; cdecl;
  end;

  [JavaSignature('com/journeyapps/barcodescanner/camera/CenterCropStrategy')]
  JCenterCropStrategy = interface(JPreviewScalingStrategy)
    ['{78A8A688-934E-490D-8A9B-69D4695CF670}']
    function scalePreview(size: JSize; size_1: JSize): JRect; cdecl;
  end;
  TJCenterCropStrategy = class(TJavaGenericImport<JCenterCropStrategyClass, JCenterCropStrategy>) end;

  JCameraSurfaceClass = interface(JObjectClass)
    ['{B04C3405-31B2-4541-9F85-5E9E457E6A18}']
    {class} function init(surfaceHolder: JSurfaceHolder): JCameraSurface; overload; cdecl;
    {class} function init(surfaceTexture: JSurfaceTexture): JCameraSurface; overload; cdecl;
  end;

  [JavaSignature('com/journeyapps/barcodescanner/camera/CameraSurface')]
  JCameraSurface = interface(JObject)
    ['{9B6A6571-A7D4-480E-BD58-E2B86968716F}']
    function getSurfaceHolder: JSurfaceHolder; cdecl;
    function getSurfaceTexture: JSurfaceTexture; cdecl;
    procedure setPreview(camera: JCamera); cdecl;
  end;
  TJCameraSurface = class(TJavaGenericImport<JCameraSurfaceClass, JCameraSurface>) end;

  JCameraSettingsClass = interface(JObjectClass)
    ['{33E26F1F-8F49-42B8-BF54-F09CB819E5B8}']
    {class} function init: JCameraSettings; cdecl;
  end;

  [JavaSignature('com/journeyapps/barcodescanner/camera/CameraSettings')]
  JCameraSettings = interface(JObject)
    ['{E6AD4D29-ADA6-4726-8506-992AFC8B0196}']
    function getFocusMode: JCameraSettings_FocusMode; cdecl;
    function getRequestedCameraId: Integer; cdecl;
    function isAutoFocusEnabled: Boolean; cdecl;
    function isAutoTorchEnabled: Boolean; cdecl;
    function isBarcodeSceneModeEnabled: Boolean; cdecl;
    function isContinuousFocusEnabled: Boolean; cdecl;
    function isExposureEnabled: Boolean; cdecl;
    function isMeteringEnabled: Boolean; cdecl;
    function isScanInverted: Boolean; cdecl;
    procedure setAutoFocusEnabled(boolean: Boolean); cdecl;
    procedure setAutoTorchEnabled(boolean: Boolean); cdecl;
    procedure setBarcodeSceneModeEnabled(boolean: Boolean); cdecl;
    procedure setContinuousFocusEnabled(boolean: Boolean); cdecl;
    procedure setExposureEnabled(boolean: Boolean); cdecl;
    procedure setFocusMode(focusMode: JCameraSettings_FocusMode); cdecl;
    procedure setMeteringEnabled(boolean: Boolean); cdecl;
    procedure setRequestedCameraId(int: Integer); cdecl;
    procedure setScanInverted(boolean: Boolean); cdecl;
  end;
  TJCameraSettings = class(TJavaGenericImport<JCameraSettingsClass, JCameraSettings>) end;

  JCameraSettings_FocusModeClass = interface(JEnumClass)
    ['{4E6BB4E8-0ECC-4AC1-A037-F5004686529E}']
    {class} function _GetAUTO: JCameraSettings_FocusMode; cdecl;
    {class} function _GetCONTINUOUS: JCameraSettings_FocusMode; cdecl;
    {class} function _GetINFINITY: JCameraSettings_FocusMode; cdecl;
    {class} function _GetMACRO: JCameraSettings_FocusMode; cdecl;
    {class} function valueOf(string_1: JString): JCameraSettings_FocusMode; cdecl;
    {class} function values: TJavaObjectArray<JCameraSettings_FocusMode>; cdecl;
    {class} property AUTO: JCameraSettings_FocusMode read _GetAUTO;
    {class} property CONTINUOUS: JCameraSettings_FocusMode read _GetCONTINUOUS;
    {class} property INFINITY: JCameraSettings_FocusMode read _GetINFINITY;
    {class} property MACRO: JCameraSettings_FocusMode read _GetMACRO;
  end;

  [JavaSignature('com/journeyapps/barcodescanner/camera/CameraSettings$FocusMode')]
  JCameraSettings_FocusMode = interface(JEnum)
    ['{BB93B896-B89C-42F6-8240-19F9513CDE38}']
  end;
  TJCameraSettings_FocusMode = class(TJavaGenericImport<JCameraSettings_FocusModeClass, JCameraSettings_FocusMode>) end;

  JCameraParametersCallbackClass = interface(IJavaClass)
    ['{3C6579E9-ECA3-44D0-8F4D-99892099B21A}']
  end;

  [JavaSignature('com/journeyapps/barcodescanner/camera/CameraParametersCallback')]
  JCameraParametersCallback = interface(IJavaInstance)
    ['{91DDD6D5-F112-4E40-8ECA-CA2373306713}']
    function changeCameraParameters(parameters: JCamera_Parameters): JCamera_Parameters; cdecl;
  end;
  TJCameraParametersCallback = class(TJavaGenericImport<JCameraParametersCallbackClass, JCameraParametersCallback>) end;

  JCameraManagerClass = interface(JObjectClass)
    ['{A67A4ABD-A7B7-4096-8C8A-953B8F29FF54}']
    {class} function init(context: JContext): JCameraManager; cdecl;
  end;

  [JavaSignature('com/journeyapps/barcodescanner/camera/CameraManager')]
  JCameraManager = interface(JObject)
    ['{8F01F691-C2C2-4AA6-B23B-D22554C6B827}']
    procedure changeCameraParameters(cameraParametersCallback: JCameraParametersCallback); cdecl;
    procedure close; cdecl;
    procedure configure; cdecl;
    function getCamera: JCamera; cdecl;
    function getCameraRotation: Integer; cdecl;
    function getCameraSettings: JCameraSettings; cdecl;
    function getDisplayConfiguration: JDisplayConfiguration; cdecl;
    function getNaturalPreviewSize: JSize; cdecl;
    function getPreviewSize: JSize; cdecl;
    function isCameraRotated: Boolean; cdecl;
    function isOpen: Boolean; cdecl;
    function isTorchOn: Boolean; cdecl;
    procedure open; cdecl;
    procedure requestPreviewFrame(previewCallback: JPreviewCallback); cdecl;
    procedure setCameraSettings(cameraSettings: JCameraSettings); cdecl;
    procedure setDisplayConfiguration(displayConfiguration: JDisplayConfiguration); cdecl;
    procedure setPreviewDisplay(surfaceHolder: JSurfaceHolder); overload; cdecl;
    procedure setPreviewDisplay(cameraSurface: JCameraSurface); overload; cdecl;
    procedure setTorch(boolean: Boolean); cdecl;
    procedure startPreview; cdecl;
    procedure stopPreview; cdecl;
  end;
  TJCameraManager = class(TJavaGenericImport<JCameraManagerClass, JCameraManager>) end;

  JCameraInstanceClass = interface(JObjectClass)
    ['{3B3E28DE-95FA-41E5-A7BF-3FD3827718F9}']
    {class} function init(context: JContext): JCameraInstance; overload; cdecl;
    {class} function init(cameraManager: JCameraManager): JCameraInstance; overload; cdecl;
  end;

  [JavaSignature('com/journeyapps/barcodescanner/camera/CameraInstance')]
  JCameraInstance = interface(JObject)
    ['{29D5EC98-BDCB-42AA-B9C2-C1B5134D3F52}']
    procedure changeCameraParameters(cameraParametersCallback: JCameraParametersCallback); cdecl;
    procedure close; cdecl;
    procedure configureCamera; cdecl;
    function getCameraRotation: Integer; cdecl;
    function getCameraSettings: JCameraSettings; cdecl;
    function getDisplayConfiguration: JDisplayConfiguration; cdecl;
    function isCameraClosed: Boolean; cdecl;
    function isOpen: Boolean; cdecl;
    procedure open; cdecl;
    procedure requestPreview(previewCallback: JPreviewCallback); cdecl;
    procedure setCameraSettings(cameraSettings: JCameraSettings); cdecl;
    procedure setDisplayConfiguration(displayConfiguration: JDisplayConfiguration); cdecl;
    procedure setReadyHandler(handler: JHandler); cdecl;
    procedure setSurface(cameraSurface: JCameraSurface); cdecl;
    procedure setSurfaceHolder(surfaceHolder: JSurfaceHolder); cdecl;
    procedure setTorch(boolean: Boolean); cdecl;
    procedure startPreview; cdecl;
  end;
  TJCameraInstance = class(TJavaGenericImport<JCameraInstanceClass, JCameraInstance>) end;

  JCameraConfigurationUtilsClass = interface(JObjectClass)
    ['{5EF95CCD-AE23-4A3A-872A-59CA0B5C64CC}']
    {class} function collectStats(parameters: JCamera_Parameters): JString; overload; cdecl;
    {class} function collectStats(charSequence: JCharSequence): JString; overload; cdecl;
    {class} procedure setBarcodeSceneMode(parameters: JCamera_Parameters); cdecl;
    {class} procedure setBestExposure(parameters: JCamera_Parameters; boolean: Boolean); cdecl;
    {class} procedure setBestPreviewFPS(parameters: JCamera_Parameters; int: Integer; int_1: Integer); overload; cdecl;
    {class} procedure setBestPreviewFPS(parameters: JCamera_Parameters); overload; cdecl;
    {class} procedure setFocus(parameters: JCamera_Parameters; focusMode: JCameraSettings_FocusMode; boolean: Boolean); cdecl;
    {class} procedure setFocusArea(parameters: JCamera_Parameters); cdecl;
    {class} procedure setInvertColor(parameters: JCamera_Parameters); cdecl;
    {class} procedure setMetering(parameters: JCamera_Parameters); cdecl;
    {class} procedure setTorch(parameters: JCamera_Parameters; boolean: Boolean); cdecl;
    {class} procedure setVideoStabilization(parameters: JCamera_Parameters); cdecl;
    {class} procedure setZoom(parameters: JCamera_Parameters; double: Double); cdecl;
  end;

  [JavaSignature('com/journeyapps/barcodescanner/camera/CameraConfigurationUtils')]
  JCameraConfigurationUtils = interface(JObject)
    ['{44286B49-34F7-4431-BFEB-D59880D0A8C8}']
  end;
  TJCameraConfigurationUtils = class(TJavaGenericImport<JCameraConfigurationUtilsClass, JCameraConfigurationUtils>) end;

  JAutoFocusManagerClass = interface(JObjectClass)
    ['{2F08E0FA-1C20-4EC8-A545-2FD3FC95FB50}']
    {class} function init(camera: JCamera; cameraSettings: JCameraSettings): JAutoFocusManager; cdecl;
  end;

  [JavaSignature('com/journeyapps/barcodescanner/camera/AutoFocusManager')]
  JAutoFocusManager = interface(JObject)
    ['{CE4E60BA-6BF5-4A32-BDF9-5392B711B8BD}']
    procedure start; cdecl;
    procedure stop; cdecl;
  end;
  TJAutoFocusManager = class(TJavaGenericImport<JAutoFocusManagerClass, JAutoFocusManager>) end;

  JViewfinderViewClass = interface(JViewClass)
    ['{E52F9FD8-FEF5-484E-82F1-15F2F6CCEB54}']
    {class} function init(context: JContext; attributeSet: JAttributeSet): JViewfinderView; cdecl;
  end;

  [JavaSignature('com/journeyapps/barcodescanner/ViewfinderView')]
  JViewfinderView = interface(JView)
    ['{9E8A123B-6DD1-4681-9202-328DF9AA7068}']
    procedure addPossibleResultPoint(resultPoint: JResultPoint); cdecl;
    procedure drawResultBitmap(bitmap: JBitmap); cdecl;
    procedure drawViewfinder; cdecl;
    procedure onDraw(canvas: JCanvas); cdecl;
    procedure setCameraPreview(cameraPreview: JCameraPreview); cdecl;
    procedure setLaserVisibility(boolean: Boolean); cdecl;
    procedure setMaskColor(int: Integer); cdecl;
  end;
  TJViewfinderView = class(TJavaGenericImport<JViewfinderViewClass, JViewfinderView>) end;

  JUtilClass = interface(JObjectClass)
    ['{42012037-A3D2-476F-83FC-6160AAC3BDEB}']
    {class} function init: JUtil; cdecl;
    {class} procedure validateMainThread; cdecl;
  end;

  [JavaSignature('com/journeyapps/barcodescanner/Util')]
  JUtil = interface(JObject)
    ['{518D6D2B-5F52-4E66-BB18-CBB79EFA9646}']
  end;
  TJUtil = class(TJavaGenericImport<JUtilClass, JUtil>) end;

  JSourceDataClass = interface(JObjectClass)
    ['{5C21247B-3E7A-4C16-AA28-D4B250A6095F}']
    {class} function init(bytes: TJavaArray<Byte>; int: Integer; int_1: Integer; int_2: Integer; int_3: Integer): JSourceData; cdecl;
  end;

  [JavaSignature('com/journeyapps/barcodescanner/SourceData')]
  JSourceData = interface(JObject)
    ['{C016EA75-8626-4CFE-81D3-4EE913526543}']
    function createSource: JPlanarYUVLuminanceSource; cdecl;
    function getBitmap: JBitmap; overload; cdecl;
    function getBitmap(int: Integer): JBitmap; overload; cdecl;
    function getBitmap(rect: JRect; int: Integer): JBitmap; overload; cdecl;
    function getCropRect: JRect; cdecl;
    function getData: TJavaArray<Byte>; cdecl;
    function getDataHeight: Integer; cdecl;
    function getDataWidth: Integer; cdecl;
    function getImageFormat: Integer; cdecl;
    function getScalingFactor: Integer; cdecl;
    function isPreviewMirrored: Boolean; cdecl;
    function isRotated: Boolean; cdecl;
    procedure setCropRect(rect: JRect); cdecl;
    procedure setPreviewMirrored(boolean: Boolean); cdecl;
    procedure setScalingFactor(int: Integer); cdecl;
    function translateResultPoint(resultPoint: JResultPoint): JResultPoint; cdecl;
  end;
  TJSourceData = class(TJavaGenericImport<JSourceDataClass, JSourceData>) end;

  JSizeClass = interface(JObjectClass)
    ['{C27CE434-8A02-4304-8B12-167339BE3044}']
    {class} function init(int: Integer; int_1: Integer): JSize; cdecl;
  end;

  [JavaSignature('com/journeyapps/barcodescanner/Size')]
  JSize = interface(JObject)
    ['{540F6EB4-6589-4621-BF1F-72184C6A557E}']
    function _Getheight: Integer; cdecl;
    function _Getwidth: Integer; cdecl;
    function compareTo(object_1: JObject): Integer; overload; cdecl;
    function compareTo(size: JSize): Integer; overload; cdecl;
    function equals(object_1: JObject): Boolean; cdecl;
    function fitsIn(size: JSize): Boolean; cdecl;
    function hashCode: Integer; cdecl;
    function rotate: JSize; cdecl;
    function scale(int: Integer; int_1: Integer): JSize; cdecl;
    function scaleCrop(size: JSize): JSize; cdecl;
    function scaleFit(size: JSize): JSize; cdecl;
    function toString: JString; cdecl;
    property height: Integer read _Getheight;
    property width: Integer read _Getwidth;
  end;
  TJSize = class(TJavaGenericImport<JSizeClass, JSize>) end;

  JScanOptionsClass = interface(JObjectClass)
    ['{26224445-2A20-4861-85A4-DF2E6C7678F4}']
    {class} function _GetALL_CODE_TYPES: JCollection; cdecl;
    {class} function _GetCODE_128: JString; cdecl;
    {class} function _GetCODE_39: JString; cdecl;
    {class} function _GetCODE_93: JString; cdecl;
    {class} function _GetDATA_MATRIX: JString; cdecl;
    {class} function _GetEAN_13: JString; cdecl;
    {class} function _GetEAN_8: JString; cdecl;
    {class} function _GetITF: JString; cdecl;
    {class} function _GetONE_D_CODE_TYPES: JCollection; cdecl;
    {class} function _GetPDF_417: JString; cdecl;
    {class} function _GetPRODUCT_CODE_TYPES: JCollection; cdecl;
    {class} function _GetQR_CODE: JString; cdecl;
    {class} function _GetRSS_14: JString; cdecl;
    {class} function _GetRSS_EXPANDED: JString; cdecl;
    {class} function _GetUPC_A: JString; cdecl;
    {class} function _GetUPC_E: JString; cdecl;
    {class} function init: JScanOptions; cdecl;
    {class} property ALL_CODE_TYPES: JCollection read _GetALL_CODE_TYPES;
    {class} property CODE_128: JString read _GetCODE_128;
    {class} property CODE_39: JString read _GetCODE_39;
    {class} property CODE_93: JString read _GetCODE_93;
    {class} property DATA_MATRIX: JString read _GetDATA_MATRIX;
    {class} property EAN_13: JString read _GetEAN_13;
    {class} property EAN_8: JString read _GetEAN_8;
    {class} property ITF: JString read _GetITF;
    {class} property ONE_D_CODE_TYPES: JCollection read _GetONE_D_CODE_TYPES;
    {class} property PDF_417: JString read _GetPDF_417;
    {class} property PRODUCT_CODE_TYPES: JCollection read _GetPRODUCT_CODE_TYPES;
    {class} property QR_CODE: JString read _GetQR_CODE;
    {class} property RSS_14: JString read _GetRSS_14;
    {class} property RSS_EXPANDED: JString read _GetRSS_EXPANDED;
    {class} property UPC_A: JString read _GetUPC_A;
    {class} property UPC_E: JString read _GetUPC_E;
  end;

  [JavaSignature('com/journeyapps/barcodescanner/ScanOptions')]
  JScanOptions = interface(JObject)
    ['{6A4D58BA-A2BA-49A0-A140-46B62AEE5222}']
    function addExtra(string_1: JString; object_1: JObject): JScanOptions; cdecl;
    function createScanIntent(context: JContext): JIntent; cdecl;
    function getCaptureActivity: Jlang_Class; cdecl;
    function getMoreExtras: JMap; cdecl;
    function setBarcodeImageEnabled(boolean: Boolean): JScanOptions; cdecl;
    function setBeepEnabled(boolean: Boolean): JScanOptions; cdecl;
    function setCameraId(int: Integer): JScanOptions; cdecl;
    function setCaptureActivity(class_1: Jlang_Class): JScanOptions; cdecl;
    function setDesiredBarcodeFormats(collection: JCollection): JScanOptions; overload; cdecl;
    function setDesiredBarcodeFormats(strings: TJavaObjectArray<JString>): JScanOptions; overload; cdecl;
    function setOrientationLocked(boolean: Boolean): JScanOptions; cdecl;
    function setPrompt(string_1: JString): JScanOptions; cdecl;
    function setTimeout(long: Int64): JScanOptions; cdecl;
    function setTorchEnabled(boolean: Boolean): JScanOptions; cdecl;
  end;
  TJScanOptions = class(TJavaGenericImport<JScanOptionsClass, JScanOptions>) end;

  JScanIntentResultClass = interface(JObjectClass)
    ['{D59FB9D2-689A-4537-9C37-35FF0D644AD7}']
    {class} function parseActivityResult(int: Integer; intent: JIntent): JScanIntentResult; cdecl;
  end;

  [JavaSignature('com/journeyapps/barcodescanner/ScanIntentResult')]
  JScanIntentResult = interface(JObject)
    ['{CFAEC999-C845-4B75-801E-E728790C5CDA}']
    function getBarcodeImagePath: JString; cdecl;
    function getContents: JString; cdecl;
    function getErrorCorrectionLevel: JString; cdecl;
    function getFormatName: JString; cdecl;
    function getOrientation: JInteger; cdecl;
    function getOriginalIntent: JIntent; cdecl;
    function getRawBytes: TJavaArray<Byte>; cdecl;
    function toString: JString; cdecl;
  end;
  TJScanIntentResult = class(TJavaGenericImport<JScanIntentResultClass, JScanIntentResult>) end;

  JScanContractClass = interface(JActivityResultContractClass)
    ['{295EF500-F4E6-41FA-9C4B-FE12AFB2C55D}']
    {class} function init: JScanContract; cdecl;
  end;

  [JavaSignature('com/journeyapps/barcodescanner/ScanContract')]
  JScanContract = interface(JActivityResultContract)
    ['{65CE3D54-1A5D-458E-A855-6FC533F37F26}']
    function createIntent(context: JContext; object_1: JObject): JIntent; overload; cdecl;
    function createIntent(context: JContext; scanOptions: JScanOptions): JIntent; overload; cdecl;
    //function parseResult(int: Integer; intent: JIntent): JObject; overload; cdecl;
    function parseResult(int: Integer; intent: JIntent): JScanIntentResult; overload; cdecl;
  end;
  TJScanContract = class(TJavaGenericImport<JScanContractClass, JScanContract>) end;

  JRotationListenerClass = interface(JObjectClass)
    ['{A09F0C51-FE43-4A11-8846-DF7DF15CAFF5}']
    {class} function init: JRotationListener; cdecl;
  end;

  [JavaSignature('com/journeyapps/barcodescanner/RotationListener')]
  JRotationListener = interface(JObject)
    ['{87694453-C96D-4757-8B9A-604FD9292965}']
    procedure listen(context: JContext; rotationCallback: JRotationCallback); cdecl;
    procedure stop; cdecl;
  end;
  TJRotationListener = class(TJavaGenericImport<JRotationListenerClass, JRotationListener>) end;

  JRotationCallbackClass = interface(IJavaClass)
    ['{E86C4394-CF58-426F-9EE4-8A067DC3B57B}']
  end;

  [JavaSignature('com/journeyapps/barcodescanner/RotationCallback')]
  JRotationCallback = interface(IJavaInstance)
    ['{666A3D69-F2CA-4B9B-9E09-239578CBA716}']
    procedure onRotationChanged(int: Integer); cdecl;
  end;
  TJRotationCallback = class(TJavaGenericImport<JRotationCallbackClass, JRotationCallback>) end;

  JRawImageDataClass = interface(JObjectClass)
    ['{D5B881B1-9198-4260-A584-06D89D2C60F0}']
    {class} function init(bytes: TJavaArray<Byte>; int: Integer; int_1: Integer): JRawImageData; cdecl;
    {class} function rotate180(bytes: TJavaArray<Byte>; int: Integer; int_1: Integer): TJavaArray<Byte>; cdecl;
    {class} function rotateCCW(bytes: TJavaArray<Byte>; int: Integer; int_1: Integer): TJavaArray<Byte>; cdecl;
    {class} function rotateCW(bytes: TJavaArray<Byte>; int: Integer; int_1: Integer): TJavaArray<Byte>; cdecl;
  end;

  [JavaSignature('com/journeyapps/barcodescanner/RawImageData')]
  JRawImageData = interface(JObject)
    ['{3AB80E69-37BA-4AAA-94B5-24B0A5B6A0CA}']
    function cropAndScale(rect: JRect; int: Integer): JRawImageData; cdecl;
    function getData: TJavaArray<Byte>; cdecl;
    function getHeight: Integer; cdecl;
    function getWidth: Integer; cdecl;
    function rotateCameraPreview(int: Integer): JRawImageData; cdecl;
  end;
  TJRawImageData = class(TJavaGenericImport<JRawImageDataClass, JRawImageData>) end;

  JDefaultDecoderFactoryClass = interface(JObjectClass)
    ['{649634CF-1BD6-44FC-A0D9-58D906DA0C7B}']
    {class} function init(collection: JCollection; map: JMap; string_1: JString; int: Integer): JDefaultDecoderFactory; overload; cdecl;
    {class} function init(collection: JCollection): JDefaultDecoderFactory; overload; cdecl;
    {class} function init: JDefaultDecoderFactory; overload; cdecl;
  end;

  [JavaSignature('com/journeyapps/barcodescanner/DefaultDecoderFactory')]
  JDefaultDecoderFactory = interface(JObject)
    ['{2285AA04-6035-4D00-8750-D7672D917582}']
    function createDecoder(map: JMap): JDecoder; cdecl;
  end;
  TJDefaultDecoderFactory = class(TJavaGenericImport<JDefaultDecoderFactoryClass, JDefaultDecoderFactory>) end;

  JDecoratedBarcodeViewClass = interface(JFrameLayoutClass)
    ['{EF630AE6-E676-4E48-9E62-934688A5C0D7}']
    {class} function init(context: JContext): JDecoratedBarcodeView; overload; cdecl;
    {class} function init(context: JContext; attributeSet: JAttributeSet): JDecoratedBarcodeView; overload; cdecl;
    {class} function init(context: JContext; attributeSet: JAttributeSet; int: Integer): JDecoratedBarcodeView; overload; cdecl;
  end;

  [JavaSignature('com/journeyapps/barcodescanner/DecoratedBarcodeView')]
  JDecoratedBarcodeView = interface(JFrameLayout)
    ['{2254F834-6FEA-4790-AE17-EBE60A20C9F7}']
    procedure changeCameraParameters(cameraParametersCallback: JCameraParametersCallback); cdecl;
    procedure decodeContinuous(barcodeCallback: JBarcodeCallback); cdecl;
    procedure decodeSingle(barcodeCallback: JBarcodeCallback); cdecl;
    function getBarcodeView: JBarcodeView; cdecl;
    function getCameraSettings: JCameraSettings; cdecl;
    function getDecoderFactory: JDecoderFactory; cdecl;
    function getStatusView: JTextView; cdecl;
    function getViewFinder: JViewfinderView; cdecl;
    procedure initializeFromIntent(intent: JIntent); cdecl;
    function onKeyDown(int: Integer; keyEvent: JKeyEvent): Boolean; cdecl;
    procedure pause; cdecl;
    procedure pauseAndWait; cdecl;
    procedure resume; cdecl;
    procedure setCameraSettings(cameraSettings: JCameraSettings); cdecl;
    procedure setDecoderFactory(decoderFactory: JDecoderFactory); cdecl;
    procedure setStatusText(string_1: JString); cdecl;
    procedure setTorchListener(torchListener: JDecoratedBarcodeView_TorchListener); cdecl;
    procedure setTorchOff; cdecl;
    procedure setTorchOn; cdecl;
  end;
  TJDecoratedBarcodeView = class(TJavaGenericImport<JDecoratedBarcodeViewClass, JDecoratedBarcodeView>) end;

  JDecoratedBarcodeView_TorchListenerClass = interface(IJavaClass)
    ['{12D8A984-46B4-4E99-B6B3-9572E75C6AEC}']
  end;

  [JavaSignature('com/journeyapps/barcodescanner/DecoratedBarcodeView$TorchListener')]
  JDecoratedBarcodeView_TorchListener = interface(IJavaInstance)
    ['{A4654044-4C00-44E2-8294-93BC192E8E47}']
    procedure onTorchOff; cdecl;
    procedure onTorchOn; cdecl;
  end;
  TJDecoratedBarcodeView_TorchListener = class(TJavaGenericImport<JDecoratedBarcodeView_TorchListenerClass, JDecoratedBarcodeView_TorchListener>) end;

  JDecoderThreadClass = interface(JObjectClass)
    ['{A5C88848-D918-44BC-AB0B-5388D1140AA8}']
    {class} function init(cameraInstance: JCameraInstance; decoder: JDecoder; handler: JHandler): JDecoderThread; cdecl;
  end;

  [JavaSignature('com/journeyapps/barcodescanner/DecoderThread')]
  JDecoderThread = interface(JObject)
    ['{47C3BEDD-DF7A-494D-8AD1-A48E71E49466}']
    function getCropRect: JRect; cdecl;
    function getDecoder: JDecoder; cdecl;
    procedure setCropRect(rect: JRect); cdecl;
    procedure setDecoder(decoder: JDecoder); cdecl;
    procedure start; cdecl;
    procedure stop; cdecl;
  end;
  TJDecoderThread = class(TJavaGenericImport<JDecoderThreadClass, JDecoderThread>) end;

  JDecoderResultPointCallbackClass = interface(JObjectClass)
    ['{53A3B11F-8EF2-4DD8-BE0A-967A9F53D1AC}']
    {class} function init: JDecoderResultPointCallback; overload; cdecl;
    {class} function init(decoder: JDecoder): JDecoderResultPointCallback; overload; cdecl;
  end;

  [JavaSignature('com/journeyapps/barcodescanner/DecoderResultPointCallback')]
  JDecoderResultPointCallback = interface(JObject)
    ['{249FAEAF-78F0-420D-933C-3E654BD61F0A}']
    procedure foundPossibleResultPoint(resultPoint: JResultPoint); cdecl;
    function getDecoder: JDecoder; cdecl;
    procedure setDecoder(decoder: JDecoder); cdecl;
  end;
  TJDecoderResultPointCallback = class(TJavaGenericImport<JDecoderResultPointCallbackClass, JDecoderResultPointCallback>) end;

  JDecoderFactoryClass = interface(IJavaClass)
    ['{EDAD39B1-E431-49CB-9787-1B12BA77FBA0}']
  end;

  [JavaSignature('com/journeyapps/barcodescanner/DecoderFactory')]
  JDecoderFactory = interface(IJavaInstance)
    ['{40987F71-54CC-4762-B9CE-47904FF8D04E}']
    function createDecoder(map: JMap): JDecoder; cdecl;
  end;
  TJDecoderFactory = class(TJavaGenericImport<JDecoderFactoryClass, JDecoderFactory>) end;

  JDecoderClass = interface(JObjectClass)
    ['{7F354AA1-5068-4E37-B03B-2D63DBE575C7}']
    {class} function init(reader: JReader): JDecoder; cdecl;
  end;

  [JavaSignature('com/journeyapps/barcodescanner/Decoder')]
  JDecoder = interface(JObject)
    ['{A73D08E5-6652-4751-AF83-F11C8DF3E51D}']
    function decode(luminanceSource: JLuminanceSource): JResult; cdecl;
    procedure foundPossibleResultPoint(resultPoint: JResultPoint); cdecl;
    function getPossibleResultPoints: JList; cdecl;
  end;
  TJDecoder = class(TJavaGenericImport<JDecoderClass, JDecoder>) end;

  JCompoundBarcodeViewClass = interface(JDecoratedBarcodeViewClass)
    ['{C43D3C42-C507-465B-B8ED-C9756023C8D3}']
    {class} function init(context: JContext; attributeSet: JAttributeSet; int: Integer): JCompoundBarcodeView; overload; cdecl;
    {class} function init(context: JContext; attributeSet: JAttributeSet): JCompoundBarcodeView; overload; cdecl;
    {class} function init(context: JContext): JCompoundBarcodeView; overload; cdecl;
  end;

  [JavaSignature('com/journeyapps/barcodescanner/CompoundBarcodeView')]
  JCompoundBarcodeView = interface(JDecoratedBarcodeView)
    ['{5B2F355F-FF00-4F45-A0E6-A6B74EC88F93}']
  end;
  TJCompoundBarcodeView = class(TJavaGenericImport<JCompoundBarcodeViewClass, JCompoundBarcodeView>) end;

  JCaptureManagerClass = interface(JObjectClass)
    ['{250A614F-F0DF-43E0-BC23-03C6EA6C5300}']
    {class} function getCameraPermissionReqCode: Integer; cdecl;
    {class} function init(activity: JActivity; decoratedBarcodeView: JDecoratedBarcodeView): JCaptureManager; cdecl;
    {class} function resultIntent(barcodeResult: JBarcodeResult; string_1: JString): JIntent; cdecl;
    {class} procedure setCameraPermissionReqCode(int: Integer); cdecl;
  end;

  [JavaSignature('com/journeyapps/barcodescanner/CaptureManager')]
  JCaptureManager = interface(JObject)
    ['{31398B61-583C-4DAD-84D8-52B37C4B38E6}']
    procedure decode; cdecl;
    procedure initializeFromIntent(intent: JIntent; bundle: JBundle); cdecl;
    procedure onDestroy; cdecl;
    procedure onPause; cdecl;
    procedure onRequestPermissionsResult(int: Integer; strings: TJavaObjectArray<JString>; ints: TJavaArray<Integer>); cdecl;
    procedure onResume; cdecl;
    procedure onSaveInstanceState(bundle: JBundle); cdecl;
    procedure setShowMissingCameraPermissionDialog(boolean: Boolean); overload; cdecl;
    procedure setShowMissingCameraPermissionDialog(boolean: Boolean; string_1: JString); overload; cdecl;
  end;
  TJCaptureManager = class(TJavaGenericImport<JCaptureManagerClass, JCaptureManager>) end;

  JCaptureActivityClass = interface(JActivityClass)
    ['{B181E284-852F-40E7-A3A9-9848EFFDDA7E}']
    {class} function init: JCaptureActivity; cdecl;
  end;

  [JavaSignature('com/journeyapps/barcodescanner/CaptureActivity')]
  JCaptureActivity = interface(JActivity)
    ['{83519A15-5796-462C-87DC-C47835D80EE1}']
    function onKeyDown(int: Integer; keyEvent: JKeyEvent): Boolean; cdecl;
    procedure onRequestPermissionsResult(int: Integer; strings: TJavaObjectArray<JString>; ints: TJavaArray<Integer>); cdecl;
  end;
  TJCaptureActivity = class(TJavaGenericImport<JCaptureActivityClass, JCaptureActivity>) end;

  JCameraPreviewClass = interface(JViewGroupClass)
    ['{B3FDA928-EED4-4C1E-B3D7-502346EB648D}']
    {class} function init(context: JContext): JCameraPreview; overload; cdecl;
    {class} function init(context: JContext; attributeSet: JAttributeSet): JCameraPreview; overload; cdecl;
    {class} function init(context: JContext; attributeSet: JAttributeSet; int: Integer): JCameraPreview; overload; cdecl;
  end;

  [JavaSignature('com/journeyapps/barcodescanner/CameraPreview')]
  JCameraPreview = interface(JViewGroup)
    ['{C23582C5-D1EE-4C06-9257-69735042F04B}']
    procedure addStateListener(stateListener: JCameraPreview_StateListener); cdecl;
    procedure changeCameraParameters(cameraParametersCallback: JCameraParametersCallback); cdecl;
    function getCameraInstance: JCameraInstance; cdecl;
    function getCameraSettings: JCameraSettings; cdecl;
    function getFramingRect: JRect; cdecl;
    function getFramingRectSize: JSize; cdecl;
    function getMarginFraction: Double; cdecl;
    function getPreviewFramingRect: JRect; cdecl;
    function getPreviewScalingStrategy: JPreviewScalingStrategy; cdecl;
    function getPreviewSize: JSize; cdecl;
    procedure initializeAttributes(attributeSet: JAttributeSet); cdecl;
    function isCameraClosed: Boolean; cdecl;
    function isPreviewActive: Boolean; cdecl;
    function isUseTextureView: Boolean; cdecl;
    procedure pause; cdecl;
    procedure pauseAndWait; cdecl;
    procedure resume; cdecl;
    procedure setCameraSettings(cameraSettings: JCameraSettings); cdecl;
    procedure setFramingRectSize(size: JSize); cdecl;
    procedure setMarginFraction(double: Double); cdecl;
    procedure setPreviewScalingStrategy(previewScalingStrategy: JPreviewScalingStrategy); cdecl;
    procedure setTorch(boolean: Boolean); cdecl;
    procedure setUseTextureView(boolean: Boolean); cdecl;
  end;
  TJCameraPreview = class(TJavaGenericImport<JCameraPreviewClass, JCameraPreview>) end;

  JCameraPreview_StateListenerClass = interface(IJavaClass)
    ['{8C0F1E87-81C5-48BF-BD9E-9B631C026742}']
  end;

  [JavaSignature('com/journeyapps/barcodescanner/CameraPreview$StateListener')]
  JCameraPreview_StateListener = interface(IJavaInstance)
    ['{1A4D7B4F-3CC5-42DC-88DE-3BF67286EF6B}']
    procedure cameraClosed; cdecl;
    procedure cameraError(exception: JException); cdecl;
    procedure previewSized; cdecl;
    procedure previewStarted; cdecl;
    procedure previewStopped; cdecl;
  end;
  TJCameraPreview_StateListener = class(TJavaGenericImport<JCameraPreview_StateListenerClass, JCameraPreview_StateListener>) end;

  JBarcodeViewClass = interface(JCameraPreviewClass)
    ['{941C761D-BAED-43E5-89B9-0D667E9108CA}']
    {class} function init(context: JContext): JBarcodeView; overload; cdecl;
    {class} function init(context: JContext; attributeSet: JAttributeSet): JBarcodeView; overload; cdecl;
    {class} function init(context: JContext; attributeSet: JAttributeSet; int: Integer): JBarcodeView; overload; cdecl;
  end;

  [JavaSignature('com/journeyapps/barcodescanner/BarcodeView')]
  JBarcodeView = interface(JCameraPreview)
    ['{1E5F0C5E-E85D-4260-973D-3BD20B6E0CD2}']
    procedure decodeContinuous(barcodeCallback: JBarcodeCallback); cdecl;
    procedure decodeSingle(barcodeCallback: JBarcodeCallback); cdecl;
    function getDecoderFactory: JDecoderFactory; cdecl;
    procedure pause; cdecl;
    procedure setDecoderFactory(decoderFactory: JDecoderFactory); cdecl;
    procedure stopDecoding; cdecl;
  end;
  TJBarcodeView = class(TJavaGenericImport<JBarcodeViewClass, JBarcodeView>) end;

  JBarcodeResultClass = interface(JObjectClass)
    ['{FEFED5D7-EEDE-45F5-B766-36FDFBE9C15A}']
    {class} function init(result: JResult; sourceData: JSourceData): JBarcodeResult; cdecl;
    {class} function transformResultPoints(list: JList; sourceData: JSourceData): JList; cdecl;
  end;

  [JavaSignature('com/journeyapps/barcodescanner/BarcodeResult')]
  JBarcodeResult = interface(JObject)
    ['{1689C40D-8C49-4810-933B-3F0809E6A40F}']
    function getBarcodeFormat: JBarcodeFormat; cdecl;
    function getBitmap: JBitmap; cdecl;
    function getBitmapScaleFactor: Integer; cdecl;
    function getBitmapWithResultPoints(int: Integer): JBitmap; cdecl;
    function getRawBytes: TJavaArray<Byte>; cdecl;
    function getResult: JResult; cdecl;
    function getResultMetadata: JMap; cdecl;
    function getResultPoints: TJavaObjectArray<JResultPoint>; cdecl;
    function getText: JString; cdecl;
    function getTimestamp: Int64; cdecl;
    function getTransformedResultPoints: JList; cdecl;
    function toString: JString; cdecl;
  end;
  TJBarcodeResult = class(TJavaGenericImport<JBarcodeResultClass, JBarcodeResult>) end;

  JBarcodeEncoderClass = interface(JObjectClass)
    ['{7F7325EE-9604-4E96-86F3-7800DB3A0390}']
    {class} function init: JBarcodeEncoder; cdecl;
  end;

  [JavaSignature('com/journeyapps/barcodescanner/BarcodeEncoder')]
  JBarcodeEncoder = interface(JObject)
    ['{004544EE-9677-4506-A69C-0607756B132E}']
    function createBitmap(bitMatrix: JBitMatrix): JBitmap; cdecl;
    function encode(string_1: JString; barcodeFormat: JBarcodeFormat; int: Integer; int_1: Integer; map: JMap): JBitMatrix; overload; cdecl;
    function encode(string_1: JString; barcodeFormat: JBarcodeFormat; int: Integer; int_1: Integer): JBitMatrix; overload; cdecl;
    function encodeBitmap(string_1: JString; barcodeFormat: JBarcodeFormat; int: Integer; int_1: Integer): JBitmap; overload; cdecl;
    function encodeBitmap(string_1: JString; barcodeFormat: JBarcodeFormat; int: Integer; int_1: Integer; map: JMap): JBitmap; overload; cdecl;
    procedure setBackgroundColor(int: Integer); cdecl;
    procedure setForegroundColor(int: Integer); cdecl;
  end;
  TJBarcodeEncoder = class(TJavaGenericImport<JBarcodeEncoderClass, JBarcodeEncoder>) end;

  JBarcodeCallbackClass = interface(IJavaClass)
    ['{17D73A58-7723-4B42-8BD4-8B805FABFD31}']
  end;

  [JavaSignature('com/journeyapps/barcodescanner/BarcodeCallback')]
  JBarcodeCallback = interface(IJavaInstance)
    ['{0793E177-3234-45C9-875D-8011EB917E6B}']
    procedure barcodeResult(barcodeResult: JBarcodeResult); cdecl;
    procedure possibleResultPoints(list: JList); cdecl;
  end;
  TJBarcodeCallback = class(TJavaGenericImport<JBarcodeCallbackClass, JBarcodeCallback>) end;

  JIntentResultClass = interface(JObjectClass)
    ['{7A777384-F191-4889-B364-8A20CF611B7D}']
  end;

  [JavaSignature('com/google/zxing/integration/android/IntentResult')]
  JIntentResult = interface(JObject)
    ['{EF95B3E2-7247-4EB7-BCC0-3B71A02D765C}']
    function getBarcodeImagePath: JString; cdecl;
    function getContents: JString; cdecl;
    function getErrorCorrectionLevel: JString; cdecl;
    function getFormatName: JString; cdecl;
    function getOrientation: JInteger; cdecl;
    function getOriginalIntent: JIntent; cdecl;
    function getRawBytes: TJavaArray<Byte>; cdecl;
    function toString: JString; cdecl;
  end;
  TJIntentResult = class(TJavaGenericImport<JIntentResultClass, JIntentResult>) end;

  JIntentIntegratorClass = interface(JObjectClass)
    ['{4221E4F4-3C93-48FD-8079-974C7065FF81}']
    {class} function _GetALL_CODE_TYPES: JCollection; cdecl;
    {class} function _GetCODE_128: JString; cdecl;
    {class} function _GetCODE_39: JString; cdecl;
    {class} function _GetCODE_93: JString; cdecl;
    {class} function _GetDATA_MATRIX: JString; cdecl;
    {class} function _GetEAN_13: JString; cdecl;
    {class} function _GetEAN_8: JString; cdecl;
    {class} function _GetITF: JString; cdecl;
    {class} function _GetONE_D_CODE_TYPES: JCollection; cdecl;
    {class} function _GetPDF_417: JString; cdecl;
    {class} function _GetPRODUCT_CODE_TYPES: JCollection; cdecl;
    {class} function _GetQR_CODE: JString; cdecl;
    {class} function _GetREQUEST_CODE: Integer; cdecl;
    {class} function _GetRSS_14: JString; cdecl;
    {class} function _GetRSS_EXPANDED: JString; cdecl;
    {class} function _GetUPC_A: JString; cdecl;
    {class} function _GetUPC_E: JString; cdecl;
    {class} function forFragment(fragment: JFragment): JIntentIntegrator; cdecl;
    {class} function forSupportFragment(fragment: Jfragment_app_Fragment): JIntentIntegrator; cdecl;
    {class} function init(activity: JActivity): JIntentIntegrator; cdecl;
    {class} function parseActivityResult(int: Integer; intent: JIntent): JIntentResult; overload; cdecl;
    {class} function parseActivityResult(int: Integer; int_1: Integer; intent: JIntent): JIntentResult; overload; cdecl;
    {class} property ALL_CODE_TYPES: JCollection read _GetALL_CODE_TYPES;
    {class} property CODE_128: JString read _GetCODE_128;
    {class} property CODE_39: JString read _GetCODE_39;
    {class} property CODE_93: JString read _GetCODE_93;
    {class} property DATA_MATRIX: JString read _GetDATA_MATRIX;
    {class} property EAN_13: JString read _GetEAN_13;
    {class} property EAN_8: JString read _GetEAN_8;
    {class} property ITF: JString read _GetITF;
    {class} property ONE_D_CODE_TYPES: JCollection read _GetONE_D_CODE_TYPES;
    {class} property PDF_417: JString read _GetPDF_417;
    {class} property PRODUCT_CODE_TYPES: JCollection read _GetPRODUCT_CODE_TYPES;
    {class} property QR_CODE: JString read _GetQR_CODE;
    {class} property REQUEST_CODE: Integer read _GetREQUEST_CODE;
    {class} property RSS_14: JString read _GetRSS_14;
    {class} property RSS_EXPANDED: JString read _GetRSS_EXPANDED;
    {class} property UPC_A: JString read _GetUPC_A;
    {class} property UPC_E: JString read _GetUPC_E;
  end;

  [JavaSignature('com/google/zxing/integration/android/IntentIntegrator')]
  JIntentIntegrator = interface(JObject)
    ['{0F146BAC-A53A-4E61-8392-62E29FAC9592}']
    function addExtra(string_1: JString; object_1: JObject): JIntentIntegrator; cdecl;
    function createScanIntent: JIntent; cdecl;
    function getCaptureActivity: Jlang_Class; cdecl;
    function getMoreExtras: JMap; cdecl;
    procedure initiateScan; overload; cdecl;
    procedure initiateScan(collection: JCollection); overload; cdecl;
    function setBarcodeImageEnabled(boolean: Boolean): JIntentIntegrator; cdecl;
    function setBeepEnabled(boolean: Boolean): JIntentIntegrator; cdecl;
    function setCameraId(int: Integer): JIntentIntegrator; cdecl;
    function setCaptureActivity(class_1: Jlang_Class): JIntentIntegrator; cdecl;
    function setDesiredBarcodeFormats(collection: JCollection): JIntentIntegrator; overload; cdecl;
    function setDesiredBarcodeFormats(strings: TJavaObjectArray<JString>): JIntentIntegrator; overload; cdecl;
    function setOrientationLocked(boolean: Boolean): JIntentIntegrator; cdecl;
    function setPrompt(string_1: JString): JIntentIntegrator; cdecl;
    function setRequestCode(int: Integer): JIntentIntegrator; cdecl;
    function setTimeout(long: Int64): JIntentIntegrator; cdecl;
    function setTorchEnabled(boolean: Boolean): JIntentIntegrator; cdecl;
  end;
  TJIntentIntegrator = class(TJavaGenericImport<JIntentIntegratorClass, JIntentIntegrator>) end;

  JOpenCameraInterfaceClass = interface(JObjectClass)
    ['{C4E8E72E-273B-4314-AB2D-2389C92F8CFC}']
    {class} function _GetNO_REQUESTED_CAMERA: Integer; cdecl;
    {class} function getCameraId(int: Integer): Integer; cdecl;
    {class} function open(int: Integer): JCamera; cdecl;
    {class} property NO_REQUESTED_CAMERA: Integer read _GetNO_REQUESTED_CAMERA;
  end;

  [JavaSignature('com/google/zxing/client/android/camera/open/OpenCameraInterface')]
  JOpenCameraInterface = interface(JObject)
    ['{C052CC92-9B6F-4D34-AF84-92A7580E6FE9}']
  end;
  TJOpenCameraInterface = class(TJavaGenericImport<JOpenCameraInterfaceClass, JOpenCameraInterface>) end;

  JIntentsClass = interface(JObjectClass)
    ['{F6ADB749-1005-4D01-9119-F9941A6C14B7}']
  end;

  [JavaSignature('com/google/zxing/client/android/Intents')]
  JIntents = interface(JObject)
    ['{79286080-5D6F-4FB5-AB37-85827962751A}']
  end;
  TJIntents = class(TJavaGenericImport<JIntentsClass, JIntents>) end;

  JIntents_ScanClass = interface(JObjectClass)
    ['{7C80E7F5-D1D1-43FE-962E-0B92347C2E8B}']
    {class} function _GetACTION: JString; cdecl;
    {class} function _GetAZTEC_MODE: JString; cdecl;
    {class} function _GetBARCODE_IMAGE_ENABLED: JString; cdecl;
    {class} function _GetBEEP_ENABLED: JString; cdecl;
    {class} function _GetCAMERA_ID: JString; cdecl;
    {class} function _GetCHARACTER_SET: JString; cdecl;
    {class} function _GetDATA_MATRIX_MODE: JString; cdecl;
    {class} function _GetFORMATS: JString; cdecl;
    {class} function _GetINVERTED_SCAN: Integer; cdecl;
    {class} function _GetMISSING_CAMERA_PERMISSION: JString; cdecl;
    {class} function _GetMISSING_CAMERA_PERMISSION_DIALOG_MESSAGE: JString; cdecl;
    {class} function _GetMIXED_SCAN: Integer; cdecl;
    {class} function _GetMODE: JString; cdecl;
    {class} function _GetNORMAL_SCAN: Integer; cdecl;
    {class} function _GetONE_D_MODE: JString; cdecl;
    {class} function _GetORIENTATION_LOCKED: JString; cdecl;
    {class} function _GetPDF417_MODE: JString; cdecl;
    {class} function _GetPRODUCT_MODE: JString; cdecl;
    {class} function _GetPROMPT_MESSAGE: JString; cdecl;
    {class} function _GetQR_CODE_MODE: JString; cdecl;
    {class} function _GetRESULT: JString; cdecl;
    {class} function _GetRESULT_BARCODE_IMAGE_PATH: JString; cdecl;
    {class} function _GetRESULT_BYTES: JString; cdecl;
    {class} function _GetRESULT_BYTE_SEGMENTS_PREFIX: JString; cdecl;
    {class} function _GetRESULT_ERROR_CORRECTION_LEVEL: JString; cdecl;
    {class} function _GetRESULT_FORMAT: JString; cdecl;
    {class} function _GetRESULT_ORIENTATION: JString; cdecl;
    {class} function _GetRESULT_UPC_EAN_EXTENSION: JString; cdecl;
    {class} function _GetSCAN_TYPE: JString; cdecl;
    {class} function _GetSHOW_MISSING_CAMERA_PERMISSION_DIALOG: JString; cdecl;
    {class} function _GetTIMEOUT: JString; cdecl;
    {class} function _GetTORCH_ENABLED: JString; cdecl;
    {class} property ACTION: JString read _GetACTION;
    {class} property AZTEC_MODE: JString read _GetAZTEC_MODE;
    {class} property BARCODE_IMAGE_ENABLED: JString read _GetBARCODE_IMAGE_ENABLED;
    {class} property BEEP_ENABLED: JString read _GetBEEP_ENABLED;
    {class} property CAMERA_ID: JString read _GetCAMERA_ID;
    {class} property CHARACTER_SET: JString read _GetCHARACTER_SET;
    {class} property DATA_MATRIX_MODE: JString read _GetDATA_MATRIX_MODE;
    {class} property FORMATS: JString read _GetFORMATS;
    {class} property INVERTED_SCAN: Integer read _GetINVERTED_SCAN;
    {class} property MISSING_CAMERA_PERMISSION: JString read _GetMISSING_CAMERA_PERMISSION;
    {class} property MISSING_CAMERA_PERMISSION_DIALOG_MESSAGE: JString read _GetMISSING_CAMERA_PERMISSION_DIALOG_MESSAGE;
    {class} property MIXED_SCAN: Integer read _GetMIXED_SCAN;
    {class} property MODE: JString read _GetMODE;
    {class} property NORMAL_SCAN: Integer read _GetNORMAL_SCAN;
    {class} property ONE_D_MODE: JString read _GetONE_D_MODE;
    {class} property ORIENTATION_LOCKED: JString read _GetORIENTATION_LOCKED;
    {class} property PDF417_MODE: JString read _GetPDF417_MODE;
    {class} property PRODUCT_MODE: JString read _GetPRODUCT_MODE;
    {class} property PROMPT_MESSAGE: JString read _GetPROMPT_MESSAGE;
    {class} property QR_CODE_MODE: JString read _GetQR_CODE_MODE;
    {class} property RESULT: JString read _GetRESULT;
    {class} property RESULT_BARCODE_IMAGE_PATH: JString read _GetRESULT_BARCODE_IMAGE_PATH;
    {class} property RESULT_BYTES: JString read _GetRESULT_BYTES;
    {class} property RESULT_BYTE_SEGMENTS_PREFIX: JString read _GetRESULT_BYTE_SEGMENTS_PREFIX;
    {class} property RESULT_ERROR_CORRECTION_LEVEL: JString read _GetRESULT_ERROR_CORRECTION_LEVEL;
    {class} property RESULT_FORMAT: JString read _GetRESULT_FORMAT;
    {class} property RESULT_ORIENTATION: JString read _GetRESULT_ORIENTATION;
    {class} property RESULT_UPC_EAN_EXTENSION: JString read _GetRESULT_UPC_EAN_EXTENSION;
    {class} property SCAN_TYPE: JString read _GetSCAN_TYPE;
    {class} property SHOW_MISSING_CAMERA_PERMISSION_DIALOG: JString read _GetSHOW_MISSING_CAMERA_PERMISSION_DIALOG;
    {class} property TIMEOUT: JString read _GetTIMEOUT;
    {class} property TORCH_ENABLED: JString read _GetTORCH_ENABLED;
  end;

  [JavaSignature('com/google/zxing/client/android/Intents$Scan')]
  JIntents_Scan = interface(JObject)
    ['{A5622E2A-02D7-49D8-B9DC-1E708E5D3E48}']
  end;
  TJIntents_Scan = class(TJavaGenericImport<JIntents_ScanClass, JIntents_Scan>) end;

  JInactivityTimerClass = interface(JObjectClass)
    ['{59108A45-6591-4F9F-91B6-BF20A73810C6}']
    {class} function init(context: JContext; runnable: JRunnable): JInactivityTimer; cdecl;
  end;

  [JavaSignature('com/google/zxing/client/android/InactivityTimer')]
  JInactivityTimer = interface(JObject)
    ['{CC7EA365-3785-4CFD-93C4-5117A69E9B62}']
    procedure activity; cdecl;
    procedure cancel; cdecl;
    procedure start; cdecl;
  end;
  TJInactivityTimer = class(TJavaGenericImport<JInactivityTimerClass, JInactivityTimer>) end;

  JDecodeHintManagerClass = interface(JObjectClass)
    ['{A13E197D-04BE-44F7-86B6-5013DD5312FA}']
    {class} function parseDecodeHints(intent: JIntent): JMap; cdecl;
  end;

  [JavaSignature('com/google/zxing/client/android/DecodeHintManager')]
  JDecodeHintManager = interface(JObject)
    ['{C236F42C-3F73-4F1C-8A88-0E19DAA6D8C8}']
  end;
  TJDecodeHintManager = class(TJavaGenericImport<JDecodeHintManagerClass, JDecodeHintManager>) end;

  JDecodeFormatManagerClass = interface(JObjectClass)
    ['{9FE83B73-D423-497E-8C9B-4A800D44079D}']
    {class} function parseDecodeFormats(intent: JIntent): JSet; cdecl;
  end;

  [JavaSignature('com/google/zxing/client/android/DecodeFormatManager')]
  JDecodeFormatManager = interface(JObject)
    ['{C2C8DB7F-789A-46FC-9EA5-961A9912F2BE}']
  end;
  TJDecodeFormatManager = class(TJavaGenericImport<JDecodeFormatManagerClass, JDecodeFormatManager>) end;

  JBeepManagerClass = interface(JObjectClass)
    ['{3A72A0AC-3075-4BAC-B984-FD7556240F0C}']
    {class} function init(activity: JActivity): JBeepManager; cdecl;
  end;

  [JavaSignature('com/google/zxing/client/android/BeepManager')]
  JBeepManager = interface(JObject)
    ['{41F0EB5C-BB7C-4286-92C7-20894F910BB3}']
    function isBeepEnabled: Boolean; cdecl;
    function isVibrateEnabled: Boolean; cdecl;
    function playBeepSound: JMediaPlayer; cdecl;
    procedure playBeepSoundAndVibrate; cdecl;
    procedure setBeepEnabled(boolean: Boolean); cdecl;
    procedure setVibrateEnabled(boolean: Boolean); cdecl;
  end;
  TJBeepManager = class(TJavaGenericImport<JBeepManagerClass, JBeepManager>) end;

  JAmbientLightManagerClass = interface(JObjectClass)
    ['{902BA38D-1237-40BD-B861-9F2356DFC069}']
    {class} function init(context: JContext; cameraManager: JCameraManager; cameraSettings: JCameraSettings): JAmbientLightManager; cdecl;
  end;

  [JavaSignature('com/google/zxing/client/android/AmbientLightManager')]
  JAmbientLightManager = interface(JObject)
    ['{AA1191B1-60B7-4FCF-BB7C-77EAD95F6F04}']
    procedure onAccuracyChanged(sensor: JSensor; int: Integer); cdecl;
    procedure onSensorChanged(sensorEvent: JSensorEvent); cdecl;
    procedure start; cdecl;
    procedure stop; cdecl;
  end;
  TJAmbientLightManager = class(TJavaGenericImport<JAmbientLightManagerClass, JAmbientLightManager>) end;

  JMixedDecoderClass = interface(JDecoderClass)
    ['{4416AEF2-00C7-4263-9D3A-D6C872F03826}']
    {class} function init(reader: JReader): JMixedDecoder; cdecl;
  end;

  [JavaSignature('com/journeyapps/barcodescanner/MixedDecoder')]
  JMixedDecoder = interface(JDecoder)
    ['{E4C8A03B-7164-46D6-AAD8-0155E234128F}']
  end;
  TJMixedDecoder = class(TJavaGenericImport<JMixedDecoderClass, JMixedDecoder>) end;

  JInvertedDecoderClass = interface(JDecoderClass)
    ['{FD062E7C-AE58-4500-86A5-5ADDE542707D}']
    {class} function init(reader: JReader): JInvertedDecoder; cdecl;
  end;

  [JavaSignature('com/journeyapps/barcodescanner/InvertedDecoder')]
  JInvertedDecoder = interface(JDecoder)
    ['{A28ABF12-3744-4064-8E9C-645A04323BC9}']
  end;
  TJInvertedDecoder = class(TJavaGenericImport<JInvertedDecoderClass, JInvertedDecoder>) end;

implementation

end.
