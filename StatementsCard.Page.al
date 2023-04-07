page 50102 "Statements Card"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    //SourceTable = TableName;

    layout
    {
        area(Content)
        {
            group(Entrée)
            {
                field(Difficulté; difficulté)
                {
                    ApplicationArea = All;
                    trigger OnValidate()
                    begin
                        GetSuggestion();
                    end;
                }
            }
            group(Sortie)
            {
                field(Suggestion; suggestion)
                {
                    ApplicationArea = All;
                    Editable = false;

                }
                field(Niveau; niveau)
                {
                    ApplicationArea = All;
                    Editable = false;
                }
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

    var
        difficulté: Integer;
        suggestion: Text[80];
        niveau: Text[30];

    local procedure GetSuggestion()
    begin
        niveau := '';
        Suggestion := '';

        case difficulté of
            1 .. 5:
                begin
                    niveau := 'Amateur';
                    Suggestion := 'Take e-Learning or remote training';
                end;
            6 .. 8:
                begin
                    niveau := 'Intermediaire';
                    Suggestion := 'Attend instructor-Led';
                end;
            9 .. 10:
                begin
                    niveau := 'Avancé';
                    Suggestion := 'Attend instructor-Led and self study';
                end;
        end;
    end;
}