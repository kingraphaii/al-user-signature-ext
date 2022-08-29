table 50000 "SGP Signature"
{
    DataClassification = EndUserIdentifiableInformation;
    LookupPageID = "SGP Signatures";
    Caption = 'User Signatures';
    DrillDownPageId = "SGP Signatures";


    fields
    {
        field(1; "User"; Code[50])
        {
            Caption = 'User ID';
            DataClassification = EndUserIdentifiableInformation;
            NotBlank = true;
            TableRelation = User."User Name";
            ValidateTableRelation = false;

            trigger OnValidate()
            var
                UserSelection: Codeunit "User Selection";
            begin
                UserSelection.ValidateUserName("User");
            end;
        }
        field(3; "User Signature"; Blob)
        {
            DataClassification = EndUserIdentifiableInformation;
            Subtype = Bitmap;
            Caption = 'Signature';
        }
    }

    keys
    {
        key(PK; User)
        {
            Clustered = true;
        }
    }
}