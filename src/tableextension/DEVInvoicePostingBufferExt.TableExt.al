tableextension 14135103 "DEV InvoicePostingBufferExt" extends "Invoice Posting Buffer"
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
