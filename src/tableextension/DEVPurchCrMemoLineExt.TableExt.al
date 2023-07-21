tableextension 14135102 "DEV PurchCrMemoLineExt" extends "Purch. Cr. Memo Line"
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
