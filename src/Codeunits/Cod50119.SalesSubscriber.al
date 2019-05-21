codeunit 50119 "BCT Sales Subscriber"
{
    trigger OnRun()
    begin

    end;

    [EventSubscriber(ObjectType::Table, Database::"Sales Header", 'OnAfterValidateEvent', 'Bill-to Customer No.', true, true)]
    local procedure OnAfterValidateEventOnAfterValidateCustomerNo_T36(var Rec: Record "Sales Header"; var xRec: Record "Sales Header"; CurrFieldNo: Integer);
    var
        Customer: Record Customer;
    begin
        IF Customer.GET(Rec."Bill-to Customer No.") THEN
            Rec."Brand Code" := Customer."Brand Code";
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Sales-Post", 'OnBeforeSalesInvHeaderInsert', '', false, false)]
    local procedure OnBeforeSalesInvHeaderInsert(var SalesInvHeader: Record "Sales Invoice Header"; SalesHeader: Record "Sales Header")
    begin
        CheckUseBrandOnInvoice(SalesInvHeader, SalesHeader);
    end;

    local procedure CheckUseBrandOnInvoice(var SalesInvHead: Record "Sales Invoice Header"; SalesHead: Record "Sales Header")
    var
        SalesReceivSetup: Record "Sales & Receivables Setup";
    begin
        SalesReceivSetup.Get();
        IF SalesReceivSetup."Use Brand on Invoice" THEN
            SalesInvHead."Brand Code" := SalesHead."Brand Code"
        ELSE
            SalesInvHead."Brand Code" := '';
    end;

    var
        myInt: Integer;
}
