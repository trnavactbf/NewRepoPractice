tableextension 50120 "Brand Code Sales Inv Header" extends "Sales Invoice Header"
{
    fields
    {
        field(50000; "Brand Code"; Code[20])
        {
            Caption = 'Brand Code';
            TableRelation = Brand;
        }
    }

    var
        myInt: Integer;
}