// ------------------------------------------------------------------------------------------------
// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
// ------------------------------------------------------------------------------------------------
namespace Microsoft.Finance.EU3PartyTrade;

using Microsoft.Finance.VAT.Setup;

pageextension 4891 "EU3 VAT Setup" extends "VAT Setup"
{
    layout
    {
        addafter("Enable Non-Deductible VAT")
        {
            field("Enable EU 3 Party Trade"; Rec."Enable EU 3-Party Purchase")
            {
                ApplicationArea = VAT;
                ToolTip = 'Specifies whether EU 3 Trade Party Purchase functionality is enabled.';
                Visible = true;
                Enabled = true;
            }
        }
    }

    trigger OnOpenPage()
    begin
    end;
}