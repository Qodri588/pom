unit URepStrukSPBU_4;

interface

uses QuickRpt, QRCtrls, ExtCtrls, Controls, Classes;

type
  TFormRepStrukSPBU_4 = class(TQuickRep)
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
    qlTunai: TQRLabel;
    qlKembali: TQRLabel;
    QRBandPompa: TQRBand;
    qlPompa: TQRLabel;
    qlSelang: TQRLabel;
  end;

var
  FormRepStrukSPBU_4: TFormRepStrukSPBU_4;

implementation

{$R *.DFM}

end.
