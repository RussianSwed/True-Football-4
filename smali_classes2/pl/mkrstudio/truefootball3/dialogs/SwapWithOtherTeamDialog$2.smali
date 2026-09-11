.class Lpl/mkrstudio/truefootball3/dialogs/SwapWithOtherTeamDialog$2;
.super Ljava/lang/Object;
.source "SwapWithOtherTeamDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/dialogs/SwapWithOtherTeamDialog;-><init>(Landroid/content/Context;Lpl/mkrstudio/truefootball3/objects/Team;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/dialogs/SwapWithOtherTeamDialog;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/dialogs/SwapWithOtherTeamDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 76
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/SwapWithOtherTeamDialog$2;->this$0:Lpl/mkrstudio/truefootball3/dialogs/SwapWithOtherTeamDialog;

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

    .line 78
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/SwapWithOtherTeamDialog$2;->this$0:Lpl/mkrstudio/truefootball3/dialogs/SwapWithOtherTeamDialog;

    iget-object p2, p1, Lpl/mkrstudio/truefootball3/dialogs/SwapWithOtherTeamDialog;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getWorld()Lpl/mkrstudio/truefootball3/objects/World;

    move-result-object p2

    iget-object p4, p0, Lpl/mkrstudio/truefootball3/dialogs/SwapWithOtherTeamDialog$2;->this$0:Lpl/mkrstudio/truefootball3/dialogs/SwapWithOtherTeamDialog;

    iget-object p4, p4, Lpl/mkrstudio/truefootball3/dialogs/SwapWithOtherTeamDialog;->leagues:Ljava/util/List;

    iget-object p5, p0, Lpl/mkrstudio/truefootball3/dialogs/SwapWithOtherTeamDialog$2;->this$0:Lpl/mkrstudio/truefootball3/dialogs/SwapWithOtherTeamDialog;

    iget-object p5, p5, Lpl/mkrstudio/truefootball3/dialogs/SwapWithOtherTeamDialog;->leagueSpinner:Landroid/widget/Spinner;

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

    iput-object p2, p1, Lpl/mkrstudio/truefootball3/dialogs/SwapWithOtherTeamDialog;->selectedTeam:Lpl/mkrstudio/truefootball3/objects/Team;

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
