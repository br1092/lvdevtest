tableextension 14135100 "DEV PurchaseLineExt" extends "Purchase Line"
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
