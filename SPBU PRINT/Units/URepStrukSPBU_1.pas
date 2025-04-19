unit URepStrukSPBU_1;

interface

uses QuickRpt, QRCtrls, ExtCtrls, Controls, Classes;

type
  TFormRepStrukSPBU_1 = class(TQuickRep)
    QRBand1: TQRBand;
    QRImage1: TQRImage;
    qlSPBU: TQRLabel;
    qmHeader: TQRMemo;
    qlHari: TQRLabel;
    qlNota: TQRLabel;
    qmFooter: TQRMemo;
    qlTotal: TQRLabel;
    qlPremium: TQRLabel;
    qlPompa: TQRLabel;
    qlLiter: TQRLabel;
    qlHarga: TQRLabel;
  end;

var
  FormRepStrukSPBU_1: TFormRepStrukSPBU_1;

implementation

{$R *.DFM}

end.
