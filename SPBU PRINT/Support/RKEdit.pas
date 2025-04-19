unit RKEdit;

interface

uses
  Windows, Classes, Controls, StdCtrls, ExtCtrls;

type
  TRKEdit = class(TEdit)
  private
    { Private declarations }
  protected
    procedure CreateParams(var Params: TCreateParams); override;
  public
    Constructor Create(AOwner : TComponent); override;
  published
    { Published declarations }
  end;

  TRKLEdit = class(TLabeledEdit)
  private
    { Private declarations }
  protected
    procedure CreateParams(var Params: TCreateParams); override;
  public
    Constructor Create(AOwner : TComponent); override;
  published
    { Published declarations }
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('Samples', [TRKEdit,TRKLEdit]);
end;

constructor TRKEdit.Create(Aowner : TComponent);
begin
   inherited Create(AOwner);
end;

procedure TRKEdit.CreateParams(var Params: TCreateParams);
begin
  inherited;
  Params.Style := Params.Style or ES_RIGHT;
end;

constructor TRKLEdit.Create(Aowner : TComponent);
begin
   inherited Create(AOwner);
end;

procedure TRKLEdit.CreateParams(var Params: TCreateParams);
begin
  inherited;
  Params.Style := Params.Style or ES_RIGHT;
end;

end.
