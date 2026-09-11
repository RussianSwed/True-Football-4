.class Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment$13;
.super Ljava/lang/Object;
.source "OpponentsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;->initButtons(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 350
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment$13;->this$0:Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 353
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment$13;->this$0:Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;->teamsList:Ljava/util/List;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment$13;->this$0:Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;->teamSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 354
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getPlayers()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getPlayers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 355
    :cond_0
    new-instance v1, Lpl/mkrstudio/truefootball3/generators/PlayerGenerator;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment$13;->this$0:Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {v1, v0}, Lpl/mkrstudio/truefootball3/generators/PlayerGenerator;-><init>(Landroid/content/Context;)V

    .line 356
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 357
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 358
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment$13;->this$0:Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTime()Lpl/mkrstudio/truefootball3/objects/Time;

    move-result-object v3

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment$13;->this$0:Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v4

    const/4 v5, 0x0

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment$13;->this$0:Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getWorld()Lpl/mkrstudio/truefootball3/objects/World;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/World;->getEditedData()Lpl/mkrstudio/truefootball3/objects/EditedData;

    move-result-object v6

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment$13;->this$0:Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->isUseEditedData()Z

    move-result v7

    invoke-virtual/range {v1 .. v7}, Lpl/mkrstudio/truefootball3/generators/PlayerGenerator;->generatePlayers(Ljava/util/List;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/activities/NewGameActivity$InitNewGameProgressTask;Lpl/mkrstudio/truefootball3/objects/EditedData;Z)V

    .line 361
    :cond_1
    sget-object v0, Lpl/mkrstudio/truefootball3/enums/CompetitionType;->LEAGUE:Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    invoke-static {p1, v0}, Lpl/mkrstudio/truefootball3/objects/AI;->selectStartingLineup(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/enums/CompetitionType;)V

    .line 362
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment$13;->this$0:Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;

    invoke-virtual {v0, p1}, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;->showTeam(Lpl/mkrstudio/truefootball3/objects/Team;)V

    return-void
.end method
