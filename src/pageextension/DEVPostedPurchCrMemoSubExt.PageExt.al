pageextension 14135103 "DEV PostedPurchCrMemoSubExt" extends "Posted Purch. Cr. Memo Subform"
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
