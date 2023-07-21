pageextension 14135100 "DEV PurchInvoiceSubformExt" extends "Purch. Invoice Subform"
{
    layout
    {
        addafter(Description)
        {
            field("DEV Comment"; Rec."DEV Comment")
            {
                ApplicationArea = All;
                ToolTip = 'Custom line-level comment field.';
            }
        }
    }
}
