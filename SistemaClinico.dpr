program SistemaClinico;

uses
  Vcl.Forms,
  UnitPrincipal in 'UnitPrincipal.pas' {formPincipal},
  UnitCadPacientes in 'UnitCadPacientes.pas' {formCadPacientes},
  UnitCadAgendamentos in 'UnitCadAgendamentos.pas' {formCadAgendamentos},
  UnitDM in 'UnitDM.pas' {DM: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TformPincipal, formPincipal);
  Application.CreateForm(TformCadPacientes, formCadPacientes);
  Application.CreateForm(TformCadAgendamentos, formCadAgendamentos);
  Application.CreateForm(TDM, DM);
  Application.Run;
end.
