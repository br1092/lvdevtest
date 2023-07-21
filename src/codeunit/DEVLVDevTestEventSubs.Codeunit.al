codeunit 14135100 "DEV LVDevTestEventSubs"
{
    [EventSubscriber(ObjectType::Table, Database::"G/L Entry", 'OnAfterCopyGLEntryFromGenJnlLine', '', false, false)]
    local procedure OnAfterOnAfterCopyGLEntryFromGenJnlLine(var GLEntry: Record "G/L Entry"; var GenJournalLine: Record "Gen. Journal Line")
    begin
        // Transfer custom comment from Gen. Journal Line to G/L Entry.
        GLEntry."Comment" := GenJournalLine."Comment";
    end;

    [EventSubscriber(ObjectType::Table, Database::"Invoice Posting Buffer", 'OnAfterBuildPrimaryKey', '', false, false)]
    local procedure OnAfterBuildPrimaryKey(var InvoicePostingBuffer: Record "Invoice Posting Buffer")
    begin
        // Append the custom comment field to the Group ID (PK) of the Invoice Posting Buffer record.
        InvoicePostingBuffer."Group ID" += InvoicePostingBuffer.PadField(Format(InvoicePostingBuffer."DEV Comment"), StrLen(Format(InvoicePostingBuffer."DEV Comment")));
    end;

    [EventSubscriber(ObjectType::Table, Database::"Invoice Posting Buffer", 'OnAfterCopyToGenJnlLine', '', false, false)]
    local procedure OnAfterCopyToGenJnlLine(var GenJnlLine: Record "Gen. Journal Line"; InvoicePostingBuffer: Record "Invoice Posting Buffer")
    begin
        // Transfer custom comment from Invoice Posting Buffer to Gen. Journal Line.
        GenJnlLine."Comment" := InvoicePostingBuffer."DEV Comment";
    end;

    [EventSubscriber(ObjectType::Table, Database::"Invoice Posting Buffer", 'OnAfterPreparePurchase', '', false, false)]
    local procedure OnAfterPreparePurchase(var PurchaseLine: Record "Purchase Line"; var InvoicePostingBuffer: Record "Invoice Posting Buffer")
    begin
        // Transfer custom comment from Purchase Line to Invoice Posting Buffer.
        InvoicePostingBuffer."DEV Comment" := PurchaseLine."DEV Comment";
    end;

    // [EventSubscriber(ObjectType::Table, Database::"Invoice Posting Buffer", 'OnUpdateOnBeforeModify', '', false, false)]
    // local procedure OnUpdateOnBeforeModify(var InvoicePostingBuffer: Record "Invoice Posting Buffer"; FromInvoicePostingBuffer: Record "Invoice Posting Buffer")
    // begin
    //     InvoicePostingBuffer."DEV Comment" := FromInvoicePostingBuffer."DEV Comment";
    // end;
}
