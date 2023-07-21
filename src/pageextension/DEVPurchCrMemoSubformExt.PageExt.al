pageextension 14135101 "DEV PurchCrMemoSubformExt" extends "Purch. Cr. Memo Subform"
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
