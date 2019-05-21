pageextension 50116 "Brand Code Customer Card" extends "Customer Card"
{
    layout
    {
        addafter("Home Page")
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