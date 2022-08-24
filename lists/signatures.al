page 50145 "SGP Signatures"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "SGP Signature";
    CardPageId = "SGP Signature";
    Caption = 'User Signatures';

    layout
    {
        area(Content)
        {
            repeater(All)
            {
                field(User; User)
                {
                    ApplicationArea = All;

                }
                field("User Signature"; "User Signature")
                {
                    ApplicationArea = All;
                }
            }
        }
        area(Factboxes)
        {

        }
    }

    actions
    {

    }
}