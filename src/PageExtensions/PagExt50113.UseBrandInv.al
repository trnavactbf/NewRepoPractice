pageextension 50113 "Brand on Invoice" extends "Sales & Receivables Setup"
{
    layout
    {
        addafter("Skip Manual Reservation")
        {
            field("Use Brand on Invoice"; "Use Brand on Invoice")
            {
                ApplicationArea = All;
            }
        }
    }

    actions
    {
    }
}