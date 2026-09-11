.class Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$7;
.super Ljava/lang/Object;
.source "EditPlayersActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 191
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$7;->this$0:Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;

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
            "arg0"
        }
    .end annotation

    .line 195
    :cond_0
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$7;->this$0:Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;->teamSpinner:Landroid/widget/Spinner;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result p1

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    const-string v1, " II"

    if-ltz p1, :cond_1

    .line 196
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$7;->this$0:Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;->teamSpinner:Landroid/widget/Spinner;

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$7;->this$0:Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;

    iget-object v2, v2, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;->teamSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {p1, v2, v0}, Landroid/widget/Spinner;->setSelection(IZ)V

    .line 197
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$7;->this$0:Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getWorld()Lpl/mkrstudio/truefootball3/objects/World;

    move-result-object p1

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$7;->this$0:Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;->leagues:Ljava/util/List;

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$7;->this$0:Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;

    iget-object v2, v2, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;->leagueSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/objects/World;->getTeamGroupByCode(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$7;->this$0:Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;->teamSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getOriginalName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 200
    :cond_1
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$7;->this$0:Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;->teamSpinner:Landroid/widget/Spinner;

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$7;->this$0:Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;

    iget-object v2, v2, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;->teamSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getCount()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {p1, v2, v0}, Landroid/widget/Spinner;->setSelection(IZ)V

    .line 201
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$7;->this$0:Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getWorld()Lpl/mkrstudio/truefootball3/objects/World;

    move-result-object p1

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$7;->this$0:Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;->leagues:Ljava/util/List;

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$7;->this$0:Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;

    iget-object v2, v2, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;->leagueSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/objects/World;->getTeamGroupByCode(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$7;->this$0:Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;->teamSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getOriginalName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    :goto_0
    return-void
.end method
