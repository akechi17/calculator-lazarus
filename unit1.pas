unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    btnBagi: TButton;
    btnHasil: TButton;
    btnClear: TButton;
    btnKurang: TButton;
    btnKali: TButton;
    Button1: TButton;
    Button10: TButton;
    Button11: TButton;
    btnTambah: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    edtHasil: TEdit;
    procedure btnBagiClick(Sender: TObject);
    procedure btnClearClick(Sender: TObject);
    procedure btnHasilClick(Sender: TObject);
    procedure btnKaliClick(Sender: TObject);
    procedure btnKurangClick(Sender: TObject);
    procedure btnTambahClick(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private

  public
    bilanganPertama, bilanganKedua, hasil: Extended;
    perintahTerakhir: String;
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.FormCreate(Sender: TObject);
begin

end;

procedure TForm1.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState
  );
begin
  if key = 27 then Close;
end;

procedure TForm1.Button10Click(Sender: TObject);
begin

end;

procedure TForm1.btnTambahClick(Sender: TObject);
begin
  bilanganPertama:= StrToFloat(edtHasil.Text);
  edtHasil.Clear;
  perintahTerakhir := 'tambah';
end;

procedure TForm1.btnHasilClick(Sender: TObject);
begin
  if perintahTerakhir = 'tambah' then
  begin
    bilanganKedua := StrToFloat(edtHasil.Text);
    hasil := bilanganPertama + bilanganKedua;
    edtHasil.Text := FloatToStr(hasil);
  end;
  if perintahTerakhir = 'kurang' then
  begin
    bilanganKedua := StrToFloat(edtHasil.Text);
    hasil := bilanganPertama - bilanganKedua;
    edtHasil.Text := FloatToStr(hasil);
  end;
  if perintahTerakhir = 'kali' then
  begin
    bilanganKedua := StrToFloat(edtHasil.Text);
    hasil := bilanganPertama * bilanganKedua;
    edtHasil.Text := FloatToStr(hasil);
  end;
  if perintahTerakhir = 'bagi' then
  begin
    bilanganKedua := StrToFloat(edtHasil.Text);
    hasil := bilanganPertama / bilanganKedua;
    edtHasil.Text := FloatToStr(hasil);
  end;
  bilanganPertama := StrToFloat(edtHasil.Text);
end;

procedure TForm1.btnKaliClick(Sender: TObject);
begin
  bilanganPertama:= StrToFloat(edtHasil.Text);
  edtHasil.Clear;
  perintahTerakhir := 'kali';
end;

procedure TForm1.btnClearClick(Sender: TObject);
begin
  edtHasil.Clear;
end;

procedure TForm1.btnBagiClick(Sender: TObject);
begin
  bilanganPertama:= StrToFloat(edtHasil.Text);
  edtHasil.Clear;
  perintahTerakhir := 'bagi';
end;

procedure TForm1.btnKurangClick(Sender: TObject);
begin
  bilanganPertama:= StrToFloat(edtHasil.Text);
  edtHasil.Clear;
  perintahTerakhir := 'tambah';
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  if edtHasil.Text = '0' then edtHasil.Clear;
  edtHasil.Text := edtHasil.Text + TButton(Sender).Caption;
end;

procedure TForm1.Button9Click(Sender: TObject);
begin

end;

end.

