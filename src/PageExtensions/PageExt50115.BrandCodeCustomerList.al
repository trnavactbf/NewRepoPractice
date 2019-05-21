pageextension 50115 "Brand Code" extends "Customer List"
{
    layout
    {
        addafter("Phone No.")
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