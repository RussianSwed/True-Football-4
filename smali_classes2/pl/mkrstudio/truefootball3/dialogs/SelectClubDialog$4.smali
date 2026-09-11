.class Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog$4;
.super Ljava/lang/Object;
.source "SelectClubDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog;-><init>(Landroid/content/Context;Lpl/mkrstudio/truefootball3/objects/Team;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog;

.field final synthetic val$confirm:Landroid/widget/Button;

.field final synthetic val$fromClub:Lpl/mkrstudio/truefootball3/objects/Team;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog;Lpl/mkrstudio/truefootball3/objects/Team;Landroid/widget/Button;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$fromClub",
            "val$confirm"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 130
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog$4;->this$0:Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog;

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog$4;->val$fromClub:Lpl/mkrstudio/truefootball3/objects/Team;

    iput-object p3, p0, Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog$4;->val$confirm:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "parentView",
            "selectedItemView",
            "position",
            "id"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 132
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog$4;->this$0:Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog;

    iget-object p2, p1, Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getWorld()Lpl/mkrstudio/truefootball3/objects/World;

    move-result-object p2

    iget-object p4, p0, Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog$4;->this$0:Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog;

    iget-object p4, p4, Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog;->leagues:Ljava/util/List;

    iget-object p5, p0, Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog$4;->this$0:Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog;

    iget-object p5, p5, Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog;->leagueSpinner:Landroid/widget/Spinner;

    invoke-virtual {p5}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result p5

    invoke-interface {p4, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    invoke-virtual {p2, p4}, Lpl/mkrstudio/truefootball3/objects/World;->getTeamGroupByCode(Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lpl/mkrstudio/truefootball3/objects/Team;

    iput-object p2, p1, Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog;->selectedTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    .line 133
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog$4;->this$0:Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog;->selectedTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    iget-object p2, p0, Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog$4;->val$fromClub:Lpl/mkrstudio/truefootball3/objects/Team;

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog$4;->val$confirm:Landroid/widget/Button;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 134
    :cond_0
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog$4;->val$confirm:Landroid/widget/Button;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
