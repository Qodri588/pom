{
dibuat oleh Bocah Genius, @2015

s/w gratis, boleh dimodifikasi sesuai dengan kebutuhan Anda

tertarik program ini dan ingin konsultasi maupun berdonasi, hubungi email dibawah
ato di nomer : nol lapan lima enam dua lapan enam lapan lima tiga lapan

USE WITH YOUROWN RISK
BocahGenius tidak bertanggung-jawab atas dan segala akibat yang muncul dari peggunaan program ini,
maupun aspek hukun karena penyalah-gunaan program ini

ABOUT ME
email  : geniusbocah@gmail.com
profil : https://www.facebook.com/bocahgenius16/
blog   : http://bocahgenius.mlblogs.com/
}

unit UStrukSPBU;

interface

uses
  SysUtils, Classes, Controls, Forms, ExtCtrls, StdCtrls, ComCtrls, RKEdit,
  Graphics, Dialogs, ExtDlgs;

type
  TFormStrukSPBU = class(TForm)
    tglCetak: TDateTimePicker;
    jamCetak: TDateTimePicker;
    leNomorSPBU: TLabeledEdit;
    Label1: TLabel;
    mHeader: TMemo;
    leNoSelang: TLabeledEdit;
    cbPompa: TCheckBox;
    cbNoStruk: TCheckBox;
    UpDown1: TUpDown;
    UpDown2: TUpDown;
    mFooter: TMemo;
    opdLogo: TOpenPictureDialog;
    btPreview: TButton;
    btPrint: TButton;
    tcBensol: TTabControl;
    rkleHPokok: TRKLEdit;
    rkeBeliRp: TRKLEdit;
    rkeBeliLtr: TRKLEdit;
    StatusBar1: TStatusBar;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    cbFTgl: TComboBox;
    cbWarna: TColorBox;
    cbFCetak: TComboBox;
    Label4: TLabel;
    cbLogo: TCheckBox;
    cbSWarnai: TCheckBox;
    Panel1: TPanel;
    Image1: TImage;
    eNoPompa: TEdit;
    eNoStruk: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure cbPompaClick(Sender: TObject);
    procedure cbNoStrukClick(Sender: TObject);
    procedure tcBensolChange(Sender: TObject);
    procedure rkleHPokokChange(Sender: TObject);
    procedure rkeBeliRpChange(Sender: TObject);
    procedure rkleHPokokExit(Sender: TObject);
    procedure rkeBeliLtrChange(Sender: TObject);
    procedure btPreviewClick(Sender: TObject);
    procedure rkeBeliRpEnter(Sender: TObject);
    procedure rkeBeliLtrEnter(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure tcBensolChanging(Sender: TObject; var AllowChange: Boolean);
    procedure FormActivate(Sender: TObject);
    procedure cbLogoClick(Sender: TObject);
    procedure cbSWarnaiClick(Sender: TObject);
    procedure rkleHPokokKeyPress(Sender: TObject; var Key: Char);
    procedure cbFCetakChange(Sender: TObject);
    procedure cbWarnaChange(Sender: TObject);
    procedure cbFTglChange(Sender: TObject);
  end;

var
  FormStrukSPBU: TFormStrukSPBU;

implementation

uses IniFiles, DateUtils, QRCtrls, QuickRpt, TextFade, URepStrukSPBU_1,
     URepStrukSPBU_2, URepStrukSPBU_3, URepStrukSPBU_4, URepStrukSPBU_5;

{$R *.dfm}

function angka(str:string):string;
var i:integer;
    s:string;
begin
     s:=str; i:=1;
     while i<length(s) do if s[i]='.'then delete(s,i,1) else inc(i);
     result:=s;
end;

function ribuan(str:string):string;
var i:integer;
    s:string;
begin
     s:=angka(str); i:=length(s);
     while i>1 do begin
           dec(i,3); if i>0 then insert('.',s,i+1);
     end; result:=s;
end;

var TFader       : TTextFader;
    ini          : TIniFile;

    cd,fr,hr,tab   : string;
    kop            : string;
    warna          : integer;
    mode,cetak,ftgl: byte;

procedure ganti_warna;
var i,j:integer;
begin
     with FormStrukSPBU do begin
          for i:=0 to ComponentCount-1 do
              if Components[i] is TLabeledEdit then
                 (Components[i] as TLabeledEdit).Font.Color:=warna;
          for i:=0 to ComponentCount-1 do
              if Components[i] is TEdit then
                 (Components[i] as TEdit).Font.Color:=warna;
          for i:=0 to ComponentCount-1 do
              if Components[i] is TRKEdit then
                 (Components[i] as TRKEdit).Font.Color:=warna;
          for i:=0 to ComponentCount-1 do
              if Components[i] is TMemo then
                 (Components[i] as TMemo).Font.Color:=warna;

          with Image1.Picture do begin
               for i:=0 to Bitmap.Height-1 do
                   for j:=0 to Bitmap.Width-1 do
                       if Bitmap.Canvas.Pixels[j,i]<$FFFFFF
                          then Bitmap.Canvas.Pixels[j,i]:=warna;
end; end; end;

const f0 ='d M yyyy';
      f1 ='d/M/yyyy';
      f2 ='d-M-yyyy';
      f3 ='d MMM yyyy';
      f4 ='d MMMM yyyy';

procedure TFormStrukSPBU.FormCreate(Sender: TObject);
begin
     cd:=GetCurrentDir+'\SPBU.INI';
     fr:=GetCurrentDir+'\footer.INI';
     hr:=GetCurrentDir+'\header.INI';

     ini:=TIniFile.Create(cd);
     leNomorSPBU.Text :=ini.ReadString('ID','nomor','44.561.19');
     tglCetak.Date    :=ini.ReadDate  ('ID','tgl',date);
     jamCetak.Time    :=ini.ReadTime  ('ID','jam',Time);
     cbPompa.Checked  :=ini.ReadBool  ('ID','pompa',true);
     cbNoStruk.Checked:=ini.ReadBool  ('ID','nostruk',true);
     eNoStruk.Text    :=ini.ReadString('ID','struk','12345');
     cbLogo.Checked   :=ini.ReadBool  ('ID','logo',true);
     cbSWarnai.Checked:=ini.ReadBool  ('ID','uw',true);
     tcBensol.TabIndex:=ini.ReadInteger('ID','tab',0);
     tab              :=tcBensol.Tabs.Strings[tcBensol.TabIndex];
     rkleHPokok.Text  :=ini.ReadString('ID',tab,'0');
     rkeBeliRp.Text   :=ini.ReadString('ID','beli','25.000');
     kop              :=ini.ReadString('ID','kop','.\support\logo.bmp');
     cetak            :=ini.ReadInteger('OPSI','cetak',0);
     ftgl             :=ini.ReadInteger('OPSI','ftgl',1);
     warna            :=ini.ReadInteger('OPSI','warna',0);
     ini.Free; mode:=0;

     cbFTgl.Clear;
     cbFTgl.Items.Add(FormatDateTime(f0,date));
     cbFTgl.Items.Add(FormatDateTime(f1,date));
     cbFTgl.Items.Add(FormatDateTime(f2,date));
     cbFTgl.Items.Add(FormatDateTime(f3,date));
     cbFTgl.Items.Add(FormatDateTime(f4,date));

     cbFTgl.ItemIndex  :=ftgl;
     cbWarna.Selected  :=warna;
     cbFCetak.ItemIndex:=cetak;
     cbWarna.Items.Delete(cbWarna.Items.Count-1); // white

     if FileExists(hr) then mHeader.Lines.LoadFromFile(hr);
     if FileExists(fr) then mFooter.Lines.LoadFromFile(fr);

     TFader:=TTextFader.Create(self);
end;

procedure TFormStrukSPBU.FormDestroy(Sender: TObject);
begin
     ini:=TIniFile.Create(cd);
     ini.WriteString('ID','nomor',leNomorSPBU.Text);
     ini.WriteDate  ('ID','tgl',tglCetak.Date);
     ini.WriteTime  ('ID','jam',jamCetak.Time);
     ini.WriteBool  ('ID','pompa',cbPompa.Checked);
     ini.WriteBool  ('ID','nostruk',cbNoStruk.Checked);
     ini.WriteString('ID','struk',eNoStruk.Text);
     ini.WriteBool  ('ID','logo',cbLogo.Checked);
     ini.WriteBool  ('ID','uw',cbSWarnai.Checked);
     ini.WriteInteger('ID','tab',tcBensol.TabIndex);
     ini.WriteString ('ID','kop',kop);
     ini.WriteString ('ID','beli',rkeBeliRp.Text);
     ini.WriteInteger('OPSI','cetak',cetak);
     ini.WriteInteger('OPSI','ftgl',ftgl);
     ini.WriteInteger('OPSI','warna',warna);
     ini.UpdateFile; ini.Free; TFader.Free;

     mHeader.Lines.SaveToFile(hr);
     mFooter.Lines.SaveToFile(fr);
end;

procedure TFormStrukSPBU.cbPompaClick(Sender: TObject);
begin
     if cbPompa.Checked then eNoPompa.SetFocus;
end;

procedure TFormStrukSPBU.cbNoStrukClick(Sender: TObject);
begin
     if cbNoStruk.Checked then eNoStruk.SetFocus;
end;

procedure TFormStrukSPBU.tcBensolChange(Sender: TObject);
begin
     tab:=tcBensol.Tabs.Strings[tcBensol.TabIndex];
     rkleHPokok.EditLabel.Caption:='Harga &'+tab+' / liter   ';

     ini:=TIniFile.Create(cd);
     rkleHPokok.Text:=ini.ReadString('HARGA',tab,'7100');
     ini.Free;

     if mode=0 then rkeBeliRpChange(rkeBeliRp) else rkeBeliLtrChange(rkeBeliLtr);
end;

procedure TFormStrukSPBU.rkleHPokokChange(Sender: TObject);
begin
     if Length(text)<3 then exit;
     with (sender as TRKLEdit) do begin
          text:=ribuan(text); SelStart:=length(Text);
     end;
     if (mode=0)and(rkeBeliRp.Text<>'') then rkeBeliRpChange(rkeBeliRp)
     else if (mode=1)and(rkeBeliLtr.Text<>'') then rkeBeliLtrChange(rkeBeliLtr);
end;

var harga,rupiah,liter:currency;

procedure TFormStrukSPBU.rkeBeliRpChange(Sender: TObject);
begin
     if Length(text)<3 then exit;
     with (sender as TRKLEdit) do begin
          text:=ribuan(text); SelStart:=length(Text);
     end;

     if mode<>0 then exit;
     harga :=strtocurrdef(angka(rkleHPokok.text),0);
     rupiah:=strtocurrdef(angka(rkeBeliRp.text),0);
     if harga>0 then begin
        liter:=rupiah/harga; rkeBeliLtr.Text:=FormatCurr('#.#0',liter);
end; end;

procedure TFormStrukSPBU.rkeBeliLtrChange(Sender: TObject);
begin
     if mode<>1 then exit;
     harga:=strtocurrdef(angka(rkleHPokok.text),0);
     liter:=strtocurrdef(angka(rkeBeliLtr.text),0);
     if harga>0 then begin
        rupiah:=liter*harga; rkeBeliRp.Text:=FormatCurr('#',rupiah);
end; end;

procedure TFormStrukSPBU.rkleHPokokExit(Sender: TObject);
begin
     ini:=TIniFile.Create(cd);
     ini.WriteString('HARGA',tab,rkleHPokok.Text);
     ini.UpdateFile; ini.Free;
end;

procedure TFormStrukSPBU.btPreviewClick(Sender: TObject);
var i :integer;
    qr:TQuickRep;
    s :string;

    function fx:string;
    begin
         case ftgl of
              0:result:=f0;
              1:result:=f1;
              2:result:=f2;
              3:result:=f3;
              4:result:=f4;
    end; end;

    function shift:string;
    begin
         if hourof(jamCetak.Time)>=15 then result:='2'
         else result:='1';
    end;

    var bayar,kmbali:string;

    function etung:string;
    var beli,byr :integer;
    begin
         beli:=StrToIntDef(angka(rkeBeliRp.Text),0);
         byr :=round(beli);
         if (byr mod 10000)<>0 then repeat
            inc(byr);
         until (byr mod 10000)=0;
         kmbali:=ribuan(inttostr(byr-beli)); bayar:=ribuan(IntToStr(byr));
    end;

const hari : array[1..7]of string=('Minggu','Senin','Selasa','Rabu','Kamis','Jum''at','Sabtu');

begin
     case cetak of
          0:qr:=TFormRepStrukSPBU_1.Create(self);
          1:qr:=TFormRepStrukSPBU_2.Create(self);
          2:qr:=TFormRepStrukSPBU_3.Create(self);
          3:qr:=TFormRepStrukSPBU_4.Create(self);
          4:qr:=TFormRepStrukSPBU_5.Create(self);
     end;

     with qr do begin
          if cetak=3 then begin etung;
             for i:=0 to ComponentCount-1 do begin
                 if Components[i].Name='qlTunai'then (Components[i] as TQRLabel).Caption:=bayar;
                 if Components[i].Name='qlKembali'then (Components[i] as TQRLabel).Caption:=kmbali;
          end; end;
          ///
          for i:=0 to ComponentCount-1 do
              if Components[i] is TQRLabel then
                 (Components[i] as TQRLabel).Font.Color:=warna;

          for i:=0 to ComponentCount-1 do
              if Components[i] is TQRMemo then
                 (Components[i] as TQRMemo).Font.Color:=warna;

          for i:=0 to ComponentCount-1 do
              if Components[i] is TQRImage then
                 if cbLogo.Checked then (Components[i] as TQRImage).Picture:=Image1.Picture
                 else (Components[i] as TQRImage).Picture:=nil;

          for i:=0 to ComponentCount-1 do
              if Components[i].Name='qlSPBU' then (Components[i] as TQRLabel).Caption:=leNomorSPBU.Text;

          for i:=0 to ComponentCount-1 do
              if Components[i].Name='qmHeader' then (Components[i] as TQRMemo).Lines.Text:=mHeader.Lines.Text;

          s:=hari[DayOfWeek(tglCetak.Date)]+', '+formatdatetime(fx,tglCetak.Date)+' '+formatdatetime('h:mm:ss',jamCetak.Date);
          for i:=0 to ComponentCount-1 do
              if Components[i].Name='qlHari' then
                 if cetak>0 then (Components[i] as TQRLabel).Caption:=s
                 else (Components[i] as TQRLabel).Caption:='Waktu: '+s;

          if cbNoStruk.Checked then
             for i:=0 to ComponentCount-1 do
                 if Components[i].Name='qlNota' then
                    if cetak>0 then (Components[i] as TQRLabel).Caption:=eNoStruk.Text
                    else (Components[i] as TQRLabel).Caption:='Shift: '+shift+'  No.Trans: '+eNoStruk.Text;

          if cbPompa.Checked then
             for i:=0 to ComponentCount-1 do begin
                 if Components[i].Name='qlPompa' then
                    if cetak>0 then (Components[i] as TQRLabel).Caption:=eNoPompa.Text
                    else (Components[i] as TQRLabel).Caption:='['+eNoPompa.Text+'] / '+leNoSelang.Text;
                 if Components[i].Name='qlSelang' then (Components[i] as TQRLabel).Caption:=leNoSelang.Text;
             end;

          for i:=0 to ComponentCount-1 do
              if Components[i].Name='qlPremium' then (Components[i] as TQRLabel).Caption:=tcBensol.Tabs.Strings[tcBensol.TabIndex];

          for i:=0 to ComponentCount-1 do
              if Components[i].Name='qlLiter' then (Components[i] as TQRLabel).Caption:=FormatCurr('#.#0',liter);

          for i:=0 to ComponentCount-1 do
              if Components[i].Name='qlHarga' then (Components[i] as TQRLabel).Caption:=ribuan(rkleHPokok.Text);

          for i:=0 to ComponentCount-1 do
              if Components[i].Name='qlTotal' then (Components[i] as TQRLabel).Caption:=ribuan(currtostr(rupiah));

          for i:=0 to ComponentCount-1 do
              if Components[i].Name='qmFooter' then (Components[i] as TQRMemo).Lines.Text:=mFooter.Lines.Text;

          for i:=0 to ComponentCount-1 do
              if Components[i].Name='QRBandNota'then (Components[i] as TQRBand).Enabled:=(cbNoStruk.Checked)and(cetak>0);

          for i:=0 to ComponentCount-1 do
              if Components[i].Name='QRBandPompa'then (Components[i] as TQRBand).Enabled:=cbPompa.Checked;

          if sender=btPreView then PreviewModal else Print; Free;
end; end;

procedure TFormStrukSPBU.rkeBeliRpEnter(Sender: TObject);
begin
     mode:=0;
end;

procedure TFormStrukSPBU.rkeBeliLtrEnter(Sender: TObject);
begin
     mode:=1;
end;

procedure TFormStrukSPBU.Image1Click(Sender: TObject);
begin
     if opdLogo.Execute then begin
        kop:=opdLogo.FileName; image1.Picture.LoadFromFile(kop);
        if cbSWarnai.Enabled then if cbSWarnai.Checked then ganti_warna;
end; end;

procedure TFormStrukSPBU.tcBensolChanging(Sender: TObject; var AllowChange: Boolean);
begin
     if rkleHPokok.Focused then rkleHPokokExit(rkleHPokok);
end;

procedure TFormStrukSPBU.FormActivate(Sender: TObject);
begin
     if cbSWarnai.Enabled then if cbSWarnai.Checked then begin
        image1.Picture.LoadFromFile(kop); ganti_warna;
     end; tcBensolChange(tcBensol);
     
     with TFader do begin
          Parent:=StatusBar1;
          top   :=3;
          Left  :=2;
          Active:=true;
end; end;

procedure TFormStrukSPBU.cbLogoClick(Sender: TObject);
begin
     cbSWarnai.Enabled:=cbLogo.Checked;
     image1.Visible   :=cbLogo.Checked; 
end;

procedure TFormStrukSPBU.cbSWarnaiClick(Sender: TObject);
begin
     if cbSWarnai.Checked then ganti_warna;
end;

procedure TFormStrukSPBU.rkleHPokokKeyPress(Sender: TObject; var Key: Char);
begin
     if not(key in['0'..'9',#8,'.',','])then key:=#0;
end;

procedure TFormStrukSPBU.cbFCetakChange(Sender: TObject);
begin
     cetak:=cbFCetak.ItemIndex;
     if cetak=2 then cbPompa.Caption:='N&o. Printer' else cbPompa.Caption:='N&o. Pompa';
end;

procedure TFormStrukSPBU.cbWarnaChange(Sender: TObject);
begin
     warna:=cbWarna.Selected;
     if cbSWarnai.Enabled then if cbSWarnai.Checked then cbSWarnaiClick(self);
end;

procedure TFormStrukSPBU.cbFTglChange(Sender: TObject);
begin
     ftgl:=cbFTgl.ItemIndex;
end;

end.
