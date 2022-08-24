report 50149 "Signature Purchase Invoice"
{
    UsageCategory = Administration;
    ApplicationArea = All;
    Caption = 'Signature Purchase Invoice';
    WordLayout = './report-extensions/layouts/signature-pi.docx';
    RDLCLayout = './report-extensions/layouts/signature-pi.rdl';
    PreviewMode = PrintLayout;

    dataset
    {
        dataitem("Purch. Inv. Header"; "Purch. Inv. Header")
        {
            DataItemTableView = SORTING("No.");
            RequestFilterFields = "No.", "Buy-from Vendor No.", "No. Printed";
            RequestFilterHeading = 'Posted Purchase Invoice';
            column(No_PurchInvHeader; "No.")
            {
            }
            dataitem(CopyLoop; "Integer")
            {
                DataItemTableView = SORTING(Number);
                dataitem(PageLoop; "Integer")
                {
                    DataItemTableView = SORTING(Number) WHERE(Number = CONST(1));

                    dataitem("Purch. Inv. Line"; "Purch. Inv. Line")
                    {
                        DataItemLink = "Document No." = FIELD("No.");
                        DataItemLinkReference = "Purch. Inv. Header";
                        DataItemTableView = SORTING("Document No.", "Line No.");
                        column(LineAmt_PurchInvLine; "Line Amount")
                        {
                            AutoFormatExpression = GetCurrencyCode;
                            AutoFormatType = 1;
                        }
                        column(Desc_PurchInvLine; Description)
                        {
                        }
                    }
                }

                dataitem("Approval Entry"; "Approval Entry")
                {
                    DataItemLink = "Document No." = field("No.");
                    DataItemLinkReference = "Purch. Inv. Header";

                    dataitem("SGP Signature"; "SGP Signature")
                    {
                        DataItemLink = User = field("Approver ID");

                        column(User_Signature; "User Signature")
                        {

                        }
                    }

                }

            }
        }
    }

    requestpage
    {
        layout
        {
            area(Content)
            {
                group(Options)
                {
                    Caption = 'Options';

                }
            }
        }

        actions
        {
            area(processing)
            {
                action(ActionName)
                {
                    ApplicationArea = All;

                }
            }
        }
    }

    var
        myInt: Integer;
}

// reportextension 50148 MyExtension extends "Purchase - Invoice"
// {
//     dataset
//     {
//         // Add changes to dataitems and columns here
//     }

//     requestpage
//     {
//         // Add changes to the requestpage here
//     }
// }