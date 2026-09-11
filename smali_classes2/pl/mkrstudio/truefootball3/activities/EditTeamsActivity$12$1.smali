.class Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$12$1;
.super Ljava/lang/Object;
.source "EditTeamsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$12;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$12;

.field final synthetic val$scd:Lpl/mkrstudio/truefootball3/dialogs/SwapWithOtherTeamDialog;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$12;Lpl/mkrstudio/truefootball3/dialogs/SwapWithOtherTeamDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$scd"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 283
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$12$1;->this$1:Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$12;

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$12$1;->val$scd:Lpl/mkrstudio/truefootball3/dialogs/SwapWithOtherTeamDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dialog"
        }
    .end annotation

    .line 286
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$12$1;->val$scd:Lpl/mkrstudio/truefootball3/dialogs/SwapWithOtherTeamDialog;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/dialogs/SwapWithOtherTeamDialog;->isMove()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$12$1;->val$scd:Lpl/mkrstudio/truefootball3/dialogs/SwapWithOtherTeamDialog;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/dialogs/SwapWithOtherTeamDialog;->getSelectedTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 287
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$12$1;->this$1:Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$12;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$12;->this$0:Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->unsavedChanges:Z

    .line 288
    new-instance p1, Lpl/mkrstudio/truefootball3/objects/DivisionSwap;

    sget-object v0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->chosenTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Team;->getOriginalName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$12$1;->val$scd:Lpl/mkrstudio/truefootball3/dialogs/SwapWithOtherTeamDialog;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/dialogs/SwapWithOtherTeamDialog;->getSelectedTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Team;->getOriginalName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->chosenTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Team;->getLeagueId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$12$1;->val$scd:Lpl/mkrstudio/truefootball3/dialogs/SwapWithOtherTeamDialog;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/dialogs/SwapWithOtherTeamDialog;->getSelectedTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Team;->getLeagueId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p1, v0, v1, v2, v3}, Lpl/mkrstudio/truefootball3/objects/DivisionSwap;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$12$1;->this$1:Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$12;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$12;->this$0:Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getWorld()Lpl/mkrstudio/truefootball3/objects/World;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/World;->getEditedData()Lpl/mkrstudio/truefootball3/objects/EditedData;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/EditedData;->getEditedDivisionSwaps()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 291
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$12$1;->this$1:Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$12;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$12;->this$0:Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getWorld()Lpl/mkrstudio/truefootball3/objects/World;

    move-result-object v0

    sget-object v1, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->chosenTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Team;->getLeagueId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lpl/mkrstudio/truefootball3/objects/World;->getTeamGroupByCode(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$12$1;->val$scd:Lpl/mkrstudio/truefootball3/dialogs/SwapWithOtherTeamDialog;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/dialogs/SwapWithOtherTeamDialog;->getSelectedTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 292
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$12$1;->this$1:Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$12;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$12;->this$0:Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getWorld()Lpl/mkrstudio/truefootball3/objects/World;

    move-result-object v0

    sget-object v1, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->chosenTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Team;->getLeagueId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lpl/mkrstudio/truefootball3/objects/World;->getTeamGroupByCode(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->chosenTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 293
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$12$1;->this$1:Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$12;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$12;->this$0:Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getWorld()Lpl/mkrstudio/truefootball3/objects/World;

    move-result-object v0

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$12$1;->val$scd:Lpl/mkrstudio/truefootball3/dialogs/SwapWithOtherTeamDialog;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/dialogs/SwapWithOtherTeamDialog;->getSelectedTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Team;->getLeagueId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lpl/mkrstudio/truefootball3/objects/World;->getTeamGroupByCode(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->chosenTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 294
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$12$1;->this$1:Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$12;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$12;->this$0:Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getWorld()Lpl/mkrstudio/truefootball3/objects/World;

    move-result-object v0

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$12$1;->val$scd:Lpl/mkrstudio/truefootball3/dialogs/SwapWithOtherTeamDialog;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/dialogs/SwapWithOtherTeamDialog;->getSelectedTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Team;->getLeagueId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lpl/mkrstudio/truefootball3/objects/World;->getTeamGroupByCode(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$12$1;->val$scd:Lpl/mkrstudio/truefootball3/dialogs/SwapWithOtherTeamDialog;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/dialogs/SwapWithOtherTeamDialog;->getSelectedTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 295
    sget-object v0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->chosenTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/DivisionSwap;->getTeamToGroupCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lpl/mkrstudio/truefootball3/objects/Team;->setLeagueId(Ljava/lang/String;)V

    .line 296
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$12$1;->val$scd:Lpl/mkrstudio/truefootball3/dialogs/SwapWithOtherTeamDialog;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/dialogs/SwapWithOtherTeamDialog;->getSelectedTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v0

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/DivisionSwap;->getTeamFromGroupCode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lpl/mkrstudio/truefootball3/objects/Team;->setLeagueId(Ljava/lang/String;)V

    .line 297
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$12$1;->this$1:Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$12;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$12;->this$0:Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$12$1;->this$1:Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$12;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$12;->this$0:Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->leagueSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    iput v0, p1, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->leaguesSpinnerPosition:I

    .line 298
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$12$1;->this$1:Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$12;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$12;->this$0:Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$12$1;->this$1:Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$12;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$12;->this$0:Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->countrySpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    iput v0, p1, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->countriesSpinnerPosition:I

    .line 299
    new-instance p1, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$InitActivityProgressTask;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$12$1;->this$1:Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$12;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$12;->this$0:Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$12$1;->this$1:Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$12;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$12;->this$0:Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;

    invoke-direct {p1, v0, v1}, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$InitActivityProgressTask;-><init>(Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;)V

    const/4 v0, 0x0

    new-array v0, v0, [Landroid/content/Context;

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$InitActivityProgressTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method
