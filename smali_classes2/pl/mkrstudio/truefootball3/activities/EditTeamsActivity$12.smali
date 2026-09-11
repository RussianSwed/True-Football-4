.class Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$12;
.super Ljava/lang/Object;
.source "EditTeamsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 279
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$12;->this$0:Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 282
    new-instance p1, Lpl/mkrstudio/truefootball3/dialogs/SwapWithOtherTeamDialog;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$12;->this$0:Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;

    sget-object v1, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->chosenTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    sget-object v2, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->chosenTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v0, v1, v2}, Lpl/mkrstudio/truefootball3/dialogs/SwapWithOtherTeamDialog;-><init>(Landroid/content/Context;Lpl/mkrstudio/truefootball3/objects/Team;Ljava/lang/String;)V

    .line 283
    new-instance v0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$12$1;

    invoke-direct {v0, p0, p1}, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$12$1;-><init>(Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$12;Lpl/mkrstudio/truefootball3/dialogs/SwapWithOtherTeamDialog;)V

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/dialogs/SwapWithOtherTeamDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 303
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/dialogs/SwapWithOtherTeamDialog;->show()V

    return-void
.end method
