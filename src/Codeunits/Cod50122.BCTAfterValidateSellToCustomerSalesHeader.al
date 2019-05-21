codeunit 50122 "BCT Payment Method Mgt."
{
    trigger OnRun()
    begin

    end;

    [EventSubscriber(ObjectType::Table, Database::"Sales Header", 'OnAfterValidateEvent', 'Bill-to Customer No.', false, false)]
    local procedure OnAfterValidateSellToCustomerNo(var Rec: Record "Sales Header"; var xRec: Record "Sales Header"; CurrFieldNo: Integer)
    var
        Customer: Record Customer;
    begin
        IF Customer.GET(Rec."Sell-to Customer No.") then begin
            //IF (Rec."Sell-to Customer No." <> Rec."Bill-to Customer No.") then begin
            Rec.Validate("Payment Terms Code", Customer."Payment Terms Code");
            Rec.Validate("Payment Method Code", Customer."Payment Method Code");
            Rec.validate("Brand Code", Customer."Brand Code");
            Message('Poruka');//<B/>
        end;
    end;

    var
        myInt: Integer;
}