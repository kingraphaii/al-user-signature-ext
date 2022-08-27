page 50145 "SGP Signatures"
{
    ApplicationArea = All;
    Caption = 'User Signatures';
    PageType = List;
    RefreshOnActivate = true;
    SourceTable = "SGP Signature";
    UsageCategory = Administration;

    CardPageId = "SGP Signature";


    layout
    {
        area(Content)
        {
            repeater(All)
            {
                field(User; User)
                {
                    ApplicationArea = Basic, Suite;
                }
                field("User Signature"; "User Signature")
                {
                    ApplicationArea = Basic, Suite;
                }
            }
        }
    }
}