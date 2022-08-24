table 50144 "SGP Signature"
{
    DataClassification = ToBeClassified;
    LookupPageID = "SGP Signatures";
    Caption = 'User Signatures';

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
            DataClassification = ToBeClassified;
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

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}