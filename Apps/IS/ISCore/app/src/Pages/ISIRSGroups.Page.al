
// ------------------------------------------------------------------------------------------------
// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
// ------------------------------------------------------------------------------------------------
namespace Microsoft.Finance.GeneralLedger.IRS;


page 14600 "IS IRS Groups"
{
    ApplicationArea = Basic, Suite;
    Caption = 'IRS Group';
    PageType = List;
    SourceTable = "IS IRS Groups";
    UsageCategory = Administration;

    layout
    {
        area(content)
        {
            repeater(Control1)
            {
                ShowCaption = false;
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the number for this group of Internal Revenue Service (IRS) tax numbers.';
                }
                field(Class; Rec.Class)
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Class';
                    ToolTip = 'Specifies a class of Internal Revenue Service (IRS) tax numbers.';
                }
            }
        }
    }

}
