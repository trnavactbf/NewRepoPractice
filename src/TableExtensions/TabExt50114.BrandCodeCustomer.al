tableextension 50114 "Brand Code" extends Customer
{
    fields
    {
        field(50000; "Brand Code"; Code[20])
        {
            Caption = 'Brand Code';
            TableRelation = Brand;
        }
    }

}