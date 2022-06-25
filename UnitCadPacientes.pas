unit UnitCadPacientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ExtCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TformCadPacientes = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    txtID: TDBEdit;
    txtNomComplet: TDBEdit;
    txtCelular: TDBEdit;
    txtCPF: TDBEdit;
    txtData: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    gridPacientes: TDBGrid;
    DBNavigator1: TDBNavigator;
    Label7: TLabel;
    txtBuscar: TEdit;
    procedure txtBuscarChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formCadPacientes: TformCadPacientes;

implementation

{$R *.dfm}

uses UnitDM, UnitPrincipal, UnitCadAgendamentos;

procedure TformCadPacientes.txtBuscarChange(Sender: TObject);
begin
         DM.tbPaciente.Locate('nome', txtBuscar.Text,[loPartialKey]);
end;

end.
