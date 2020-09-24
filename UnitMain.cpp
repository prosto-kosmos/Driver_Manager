// ---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "UnitMain.h"
#include "UnitLogin.h"
// ---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm1 *Form1;

// ---------------------------------------------------------------------------
__fastcall TForm1::TForm1(TComponent* Owner) : TForm(Owner) {
	RadioGroup1Click(NULL);
	DBGrid1->Columns->Items[0]->Title->Caption = "ID водителя";
	DBGrid1->Columns->Items[1]->Title->Caption = "Фамилия";
	DBGrid1->Columns->Items[2]->Title->Caption = "Имя";
	DBGrid1->Columns->Items[3]->Title->Caption = "Отчество";

	DBGrid2->Columns->Items[0]->Title->Caption = "ID водителя";
	DBGrid2->Columns->Items[1]->Title->Caption = "Дата и время";
	DBGrid2->Columns->Items[2]->Title->Caption = "Скорость";
	DBGrid2->Columns->Items[3]->Title->Caption = "Обороты двигателя";
}
// ---------------------------------------------------------------------------

void __fastcall TForm1::FormClose(TObject *Sender, TCloseAction &Action) {
	Application->Terminate();
}
// ---------------------------------------------------------------------------

void __fastcall TForm1::FormResize(TObject *Sender) {
	int idLen = 70;
	DBGrid1->Columns->Items[0]->Width = idLen;
	DBGrid1->Columns->Items[1]->Width = 0.30 * (DBGrid1->Width - idLen);
	DBGrid1->Columns->Items[2]->Width = 0.30 * (DBGrid1->Width - idLen);
	DBGrid1->Columns->Items[3]->Width = 0.30 * (DBGrid1->Width - idLen);

	DBGrid2->Columns->Items[0]->Width = idLen;
	DBGrid2->Columns->Items[1]->Width = 0.31 * (DBGrid2->Width - idLen);
	DBGrid2->Columns->Items[2]->Width = 0.31 * (DBGrid2->Width - idLen);
	DBGrid2->Columns->Items[3]->Width = 0.31 * (DBGrid2->Width - idLen);
}
// ---------------------------------------------------------------------------

void __fastcall TForm1::Button2Click(TObject *Sender) {
	if (Application->MessageBoxW(L"Сохранить изменения?",
		L"Подтверждение изменения записи", MB_YESNO + MB_ICONQUESTION) == IDYES)
	{
		ClientDataSet1->Edit();
		if (!LabeledEdit1->Text.IsEmpty()) {
			ClientDataSet1->FieldByName("driver_id")->AsString =
				LabeledEdit1->Text;
		}
		if (!LabeledEdit2->Text.IsEmpty()) {
			ClientDataSet1->FieldByName("surname")->AsString =
				LabeledEdit2->Text;
		}
		if (!LabeledEdit3->Text.IsEmpty()) {
			ClientDataSet1->FieldByName("first_name")->AsString =
				LabeledEdit3->Text;
		}
		if (!LabeledEdit4->Text.IsEmpty()) {
			ClientDataSet1->FieldByName("patronymic")->AsString =
				LabeledEdit4->Text;
		}
		if (ClientDataSet1->ApplyUpdates(0) != 0) {
			Application->MessageBoxW(L"Ошибка изменения данных",
				L"Данные не были изменены! Проверьте правильность заполнения полей и повторите попытку",
				MB_OK + MB_ICONWARNING);
		}
		ClientDataSet1->ApplyUpdates(0);
	}
}
// ---------------------------------------------------------------------------

void __fastcall TForm1::Button1Click(TObject *Sender) {
	ClientDataSet1->Insert();
	if (!LabeledEdit1->Text.IsEmpty()) {
		ClientDataSet1->FieldByName("driver_id")->AsString = LabeledEdit1->Text;
	}
	if (!LabeledEdit2->Text.IsEmpty()) {
		ClientDataSet1->FieldByName("surname")->AsString = LabeledEdit2->Text;
	}
	if (!LabeledEdit3->Text.IsEmpty()) {
		ClientDataSet1->FieldByName("first_name")->AsString =
			LabeledEdit3->Text;
	}
	if (!LabeledEdit4->Text.IsEmpty()) {
		ClientDataSet1->FieldByName("patronymic")->AsString =
			LabeledEdit4->Text;
	}
	if (ClientDataSet1->ApplyUpdates(0) != 0) {
		Application->MessageBoxW(L"Ошибка изменения данных",
			L"Данные не были изменены! Проверьте правильность заполнения полей и повторите попытку",
			MB_OK + MB_ICONWARNING);
	}
	ClientDataSet1->ApplyUpdates(0);
}
// ---------------------------------------------------------------------------

void __fastcall TForm1::Button3Click(TObject *Sender) {
	if (Application->MessageBoxW(L"Удалить запись?", L"Подтверждение удаления",
		MB_YESNO + MB_ICONQUESTION) == IDYES) {
		ClientDataSet1->Delete();
		ClientDataSet1->ApplyUpdates(0);
	}
}
// ---------------------------------------------------------------------------

void __fastcall TForm1::RadioGroup1Click(TObject *Sender) {
	if (RadioGroup1->ItemIndex == 0) {
		SearchBox1->Enabled = true;
		SearchBox2->Enabled = false;
		ClientDataSet1->IndexFieldNames = "driver_id";
	}
	if (RadioGroup1->ItemIndex == 1) {
		SearchBox1->Enabled = false;
		SearchBox2->Enabled = true;
		ClientDataSet1->IndexFieldNames = "surname";
	}
}
// ---------------------------------------------------------------------------

void __fastcall TForm1::SearchBox1Change(TObject *Sender) {
	if (SearchBox1->Text.IsEmpty()) {
		return;
	}
	TLocateOptions SearchOptions;
	ClientDataSet1->Locate("driver_id", SearchBox1->Text,
		SearchOptions << loPartialKey << loCaseInsensitive);
}

// ---------------------------------------------------------------------------
void __fastcall TForm1::SearchBox2Change(TObject *Sender) {
	if (SearchBox2->Text.IsEmpty()) {
		return;
	}
	TLocateOptions SearchOptions;
	ClientDataSet1->Locate("surname", SearchBox2->Text,
		SearchOptions << loPartialKey << loCaseInsensitive);
}
// ---------------------------------------------------------------------------
