unit URepStrukSPBU_2;

interface

uses QuickRpt, QRCtrls, ExtCtrls, Controls, Classes;

type
  TFormRepStrukSPBU_2 = class(TQuickRep)
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
  FormRepStrukSPBU_2: TFormRepStrukSPBU_2;

implementation

{$R *.DFM}

end.
