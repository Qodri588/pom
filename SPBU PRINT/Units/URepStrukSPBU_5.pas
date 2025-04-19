Unit URepStrukSPBU_5;

interface

uses QuickRpt, QRCtrls, ExtCtrls, Controls, Classes;

type
  TFormRepStrukSPBU_5 = class(TQuickRep)
    QRBand1: TQRBand;
    QRImage1: TQRImage;
    qlSPBU: TQRLabel;
    qmHeader: TQRMemo;
    qlHari: TQRLabel;
    QRBandNota: TQRBand;
    qlNota: TQRLabel;
    QRBand4: TQRBand;
    qlPremium: TQRLabel;
    qlHarga: TQRLabel;
    qlLiter: TQRLabel;
    qlTotal: TQRLabel;
    qmFooter: TQRMemo;
    QRBandPompa: TQRBand;
    qlPompa: TQRLabel;
    qlSelang: TQRLabel;
  end;

var
  FormRepStrukSPBU_5: TFormRepStrukSPBU_5;

implementation

{$R *.DFM}

end.
