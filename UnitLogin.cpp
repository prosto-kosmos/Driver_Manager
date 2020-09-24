//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "UnitLogin.h"
#include "UnitMain.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm2 *Form2;
//---------------------------------------------------------------------------
__fastcall TForm2::TForm2(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TForm2::Button1Click(TObject *Sender)
{
	Form1->SQLConnection1->Params->Values["HostName"]=Form2->LabeledEdit1->Text;
	Form1->SQLConnection1->Params->Values["User_Name"]=Form2->LabeledEdit2->Text;
	if (!Form2->LabeledEdit3->Text.IsEmpty()) {
		Form1->SQLConnection1->Params->Values["Password"]=Form2->LabeledEdit3->Text;
	}
	Form1->SQLConnection1->Connected=true;
	Form1->ClientDataSet1->Active=true;
	Form1->ClientDataSet2->Active=true;
	Form1->SQLTable1->Active=true;
    Form1->SQLTable2->Active=true;
	Form1->Visible=true;
    Form2->Visible=false;
}
//---------------------------------------------------------------------------
