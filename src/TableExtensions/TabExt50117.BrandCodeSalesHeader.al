tableextension 50117 "Brand Code Sales Header" extends "Sales Header"
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