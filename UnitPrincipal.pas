unit UnitPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.Imaging.jpeg;

type
  TformPincipal = class(TForm)
    MainMenu1: TMainMenu;
    Sistema1: TMenuItem;
    Sistema2: TMenuItem;
    Cadastros1: TMenuItem;
    Pacientes1: TMenuItem;
    Agendamentos1: TMenuItem;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Image1: TImage;
    procedure Sistema2Click(Sender: TObject);
    procedure Pacientes1Click(Sender: TObject);
    procedure Agendamentos1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formPincipal: TformPincipal;

implementation

{$R *.dfm}

uses UnitCadPacientes, UnitCadAgendamentos;

procedure TformPincipal.Agendamentos1Click(Sender: TObject);
begin
          formCadAgendamentos.ShowModal;
end;

procedure TformPincipal.BitBtn1Click(Sender: TObject);
begin
       formCadAgendamentos.ShowModal;
end;

procedure TformPincipal.BitBtn2Click(Sender: TObject);
begin
      formCadPacientes.ShowModal;
end;

procedure TformPincipal.Pacientes1Click(Sender: TObject);
begin
         formCadPacientes.ShowModal;
end;

procedure TformPincipal.Sistema2Click(Sender: TObject);
begin
        Application.Terminate;
end;

end.
