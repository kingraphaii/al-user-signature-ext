page 50146 "SGP Signature"
{
    PageType = Card;
    SourceTable = "SGP Signature";
    Caption = 'User Signature';
    RefreshOnActivate = true;

    layout
    {
        area(Content)
        {
            group(Signature)
            {
                field(User; User)
                {
                    ApplicationArea = All;
                    LookupPageID = "User Lookup";

                }
                field("User Signature"; "User Signature")
                {
                    ApplicationArea = All;
                }
            }
        }
    }

    actions
    {

    }
}