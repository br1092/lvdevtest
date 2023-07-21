tableextension 14135101 "DEV PurchInvLineExt" extends "Purch. Inv. Line"
{
    fields
    {
        field(14135100; "DEV Comment"; Text[250])
        {
            Caption = 'Comment';
            DataClassification = CustomerContent;
        }
    }
}
