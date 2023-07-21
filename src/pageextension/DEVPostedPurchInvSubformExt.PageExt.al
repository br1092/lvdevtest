pageextension 14135102 "DEV PostedPurchInvSubformExt" extends "Posted Purch. Invoice Subform"
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
