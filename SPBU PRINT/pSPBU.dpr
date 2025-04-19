program pSPBU;

uses
  Forms,
  UStrukSPBU in 'Units\UStrukSPBU.pas' {FormStrukSPBU},
  TextFade in 'Units\TextFade.pas',
  URepStrukSPBU_1 in 'Units\URepStrukSPBU_1.pas' {FormRepStrukSPBU_1: TQuickRep},
  URepStrukSPBU_2 in 'Units\URepStrukSPBU_2.pas' {FormRepStrukSPBU_2: TQuickRep},
  URepStrukSPBU_3 in 'Units\URepStrukSPBU_3.pas' {FormRepStrukSPBU_3: TQuickRep},
  URepStrukSPBU_4 in 'Units\URepStrukSPBU_4.pas' {FormRepStrukSPBU_4: TQuickRep},
  URepStrukSPBU_5 in 'Units\URepStrukSPBU_5.pas' {FormRepStrukSPBU_5: TQuickRep};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFormStrukSPBU, FormStrukSPBU);
  Application.CreateForm(TFormRepStrukSPBU_5, FormRepStrukSPBU_5);
  Application.Run;
end.
