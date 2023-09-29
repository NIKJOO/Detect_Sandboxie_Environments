unit UtMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Winapi.TlHelp32,Psapi;

type
  TfrmMain = class(TForm)
    btnCheck: TButton;
    Label1: TLabel;
    procedure btnCheckClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}


procedure CheckSandBoxie;
var
  ModuleList: array [0..1023] of HINST;
  ModuleCount: DWORD;
  I: Integer;
  ModuleName: array [0..MAX_PATH-1] of Char;
begin
  if EnumProcessModules(GetCurrentProcess, @ModuleList, SizeOf(ModuleList), ModuleCount) then
  begin
    for I := 0 to ModuleCount - 1 do
    begin
      if GetModuleFileNameEx(GetCurrentProcess, ModuleList[I], ModuleName, SizeOf(ModuleName)) > 0 then
      begin
        if Pos('SbieDll.dll',ModuleName) <> 0 then
         begin
          MessageBox(0,'App running  inside of sandboxie','Error',MB_ICONERROR);
          Halt(0);
         end;
      end;
    end;
  end;
end;
procedure TfrmMain.btnCheckClick(Sender: TObject);
begin
 CheckSandBoxie;
end;

end.
