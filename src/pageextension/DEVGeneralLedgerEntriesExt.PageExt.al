pageextension 14135104 "DEV GeneralLedgerEntriesExt" extends "General Ledger Entries"
{
    layout
    {
        addafter(Description)
        {
            field("DEV Comment"; Rec.Comment)
            {
                ApplicationArea = All;
                ToolTip = 'Custom line-level comment field.';
            }
        }
    }
}
