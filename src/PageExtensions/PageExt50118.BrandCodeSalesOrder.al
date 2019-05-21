pageextension 50118 "Brand Code Sales Order" extends "Sales Order"
{
    layout
    {
        addafter("Sell-to E-Mail")
        {
            field("Brand Code"; "Brand Code")
            {
                ApplicationArea = All;
            }
        }
    }

    actions
    {
    }
}