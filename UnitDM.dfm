object DM: TDM
  OldCreateOrder = False
  Height = 223
  Width = 435
  object Conexao: TFDConnection
    Params.Strings = (
      'Database=clinica'
      'User_Name=root'
      'Server=127.0.0.1'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 48
    Top = 16
  end
  object tbPaciente: TFDTable
    Active = True
    AfterInsert = tbPacienteAfterInsert
    IndexFieldNames = 'id'
    Connection = Conexao
    TableName = 'clinica.paciente'
    Left = 152
    Top = 24
    object tbPacienteid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ReadOnly = True
    end
    object tbPacientenome: TStringField
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      Size = 50
    end
    object tbPacientecpf: TStringField
      FieldName = 'cpf'
      Origin = 'cpf'
      Required = True
      EditMask = '###.###.###-##;1;_'
      Size = 14
    end
    object tbPacientecelular: TStringField
      FieldName = 'celular'
      Origin = 'celular'
      Required = True
      EditMask = '!\(99\)00000-0000;1;_'
      Size = 16
    end
    object tbPacientedata_cadastro: TDateField
      FieldName = 'data_cadastro'
      Origin = 'data_cadastro'
      Required = True
      EditMask = '!99/99/0000;1;_'
    end
  end
  object tbAgendamentos: TFDTable
    Active = True
    IndexFieldNames = 'id'
    Connection = Conexao
    TableName = 'clinica.agendamento'
    Left = 232
    Top = 24
    object tbAgendamentosid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object tbAgendamentosid_paciente: TIntegerField
      FieldName = 'id_paciente'
      Origin = 'id_paciente'
      Required = True
    end
    object tbAgendamentosdata: TDateField
      FieldName = 'data'
      Origin = 'data'
      Required = True
    end
    object tbAgendamentoshora: TStringField
      FieldName = 'hora'
      Origin = 'hora'
      Required = True
      Size = 50
    end
    object tbAgendamentosespecialidade: TStringField
      FieldName = 'especialidade'
      Origin = 'especialidade'
      Required = True
      Size = 80
    end
    object tbAgendamentosmedico: TStringField
      FieldName = 'medico'
      Origin = 'medico'
      Required = True
      Size = 80
    end
  end
  object dbPaciente: TDataSource
    DataSet = tbPaciente
    Left = 152
    Top = 80
  end
  object dbAgendamentos: TDataSource
    DataSet = tbAgendamentos
    Left = 232
    Top = 80
  end
end
