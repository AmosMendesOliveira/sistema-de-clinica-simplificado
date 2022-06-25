unit UnitDM;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TDM = class(TDataModule)
    Conexao: TFDConnection;
    tbPaciente: TFDTable;
    tbAgendamentos: TFDTable;
    dbPaciente: TDataSource;
    dbAgendamentos: TDataSource;
    tbPacienteid: TFDAutoIncField;
    tbPacientenome: TStringField;
    tbPacientecpf: TStringField;
    tbPacientecelular: TStringField;
    tbPacientedata_cadastro: TDateField;
    tbAgendamentosid: TFDAutoIncField;
    tbAgendamentosid_paciente: TIntegerField;
    tbAgendamentosdata: TDateField;
    tbAgendamentoshora: TStringField;
    tbAgendamentosespecialidade: TStringField;
    tbAgendamentosmedico: TStringField;
    procedure tbPacienteAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses UnitCadAgendamentos, UnitCadPacientes, UnitPrincipal;

{$R *.dfm}

procedure TDM.tbPacienteAfterInsert(DataSet: TDataSet);
begin
    tbPacientedata_cadastro.Value := date();
end;

end.
