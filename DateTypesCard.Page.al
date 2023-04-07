page 50100 "Fiche de type de données"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    Caption = 'Fiche de type de données';
    //SourceTable = TableName;

    layout
    {
        area(Content)
        {
            group(GroupName)
            {

            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin

                end;
            }
        }
    }
    trigger OnOpenPage()
    begin
        YesOrNo := false;
        Amount := 1732.21;
        WhenWasIt := Today;
        WhatTime := Time;
        Description := 'Ceci est une description !';
        CodeNumber := 'azer1234';
        Ch := '$';
        Color := Color::Vert;
        Message('The value of %1 is %2', 'YesOrNo', YesOrNo);
        Message('The value of %1 is %2', 'Amount', Amount);
        Message('The value of %1 is %2', 'When Was It', "WhenWasIt");
        Message('The value of %1 is %2', 'What Time', "WhatTime");
        Message('The value of %1 is %2', 'Description', Description);
        Message('The value of %1 is %2', 'Code Number', "CodeNumber");
        Message('The value of %1 is %2', 'Ch', Ch);
        Message('The value of %1 is %2', 'Color', Color);
    end;

    var
        LoopNo: Integer;
        YesOrNo: Boolean;
        Amount: Decimal;
        WhenWasIt: Date;
        WhatTime: Time;
        Description: Text[30];
        CodeNumber: Code[10];
        Ch: Char;
        Color: Option Rouge,Vert,Blanc,Noir,Bleu;


}