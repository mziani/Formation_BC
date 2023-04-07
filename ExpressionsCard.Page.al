page 50101 "Fiche d’expressions"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Documents;
    //SourceTable = TableName;

    layout
    {
        area(Content)
        {
            group("Entrée")
            {
                Caption = 'Entrée';
                field("Valeur 1"; value1)
                {
                    ApplicationArea = All;
                }
                field("Valeur 2"; value2)
                {
                    ApplicationArea = All;
                }

            }
            group("Sortie")
            {
                Caption = 'Sortie';
                Editable = false;
                field("Resultat"; result)
                {
                    ApplicationArea = All;
                }
            }

        }
    }

    actions
    {
        area(Processing)
        {
            action(Calculer)
            {
                ApplicationArea = All;
                Caption = 'Calculer';
                Image = ExecuteBatch;

                trigger OnAction()
                begin
                    Result := value1 > value2;
                end;
            }
        }
    }

    var
        value1: Integer;
        value2: Integer;
        result: Boolean;
}