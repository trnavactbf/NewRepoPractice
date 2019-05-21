pageextension 50121 "Brand Code Posted Sal Inv" extends "Posted Sales Invoice"
{
    layout
    {
        addafter("Bill-to Contact No.")
        {
            field("Brand Code"; "Brand Code")
            {
                ApplicationArea = All;
            }
        }
    }

    actions
    {
        // Add changes to page actions here
    }

    var
        myInt: Integer;
}