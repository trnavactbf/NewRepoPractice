tableextension 50110 "Brand on Invoice" extends "Sales & Receivables Setup"
{
    fields
    {
        field(50000; "Use Brand on Invoice"; Boolean)
        {
            Caption = 'Use Brand on Invoice';
            DataClassification = ToBeClassified;
        }

    }

    var
        myInt: Integer;
}