// ------------------------------------------------------------------------------------------------
// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
// ------------------------------------------------------------------------------------------------

namespace Microsoft.DemoData.Inventory;

using Microsoft.Inventory.Item;
using Microsoft.DemoData.Finance;
codeunit 10802 "Create ES Item Template"
{
    SingleInstance = true;
    EventSubscriberInstance = Manual;
    InherentEntitlements = X;
    InherentPermissions = X;

    trigger OnRun()
    var
        CreateESVATPostingGroups: Codeunit "Create ES VAT Posting Groups";
        CreateItemTemplate: Codeunit "Create Item Template";
    begin
        UpdateItemTemplate(CreateItemTemplate.Item(), CreateESVATPostingGroups.Vat21());
        UpdateItemTemplate(CreateItemTemplate.Service(), CreateESVATPostingGroups.Vat21());
    end;

    local procedure UpdateItemTemplate(ItemTemplateCode: Code[20]; VatProdPostingGrp: Code[20])
    var
        ItemTemplate: Record "Item Templ.";
    begin
        ItemTemplate.Get(ItemTemplateCode);
        ItemTemplate.Validate("VAT Prod. Posting Group", VatProdPostingGrp);
        ItemTemplate.Modify(true);
    end;
}
