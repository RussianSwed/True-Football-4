.class Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$10;
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

    .line 253
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$10;->this$0:Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;

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

    .line 257
    :cond_0
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$10;->this$0:Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->teamSpinner:Landroid/widget/Spinner;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result p1

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$10;->this$0:Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->teamSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getCount()I

    move-result v1

    const-string v2, " II"

    if-ge p1, v1, :cond_1

    .line 258
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$10;->this$0:Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->teamSpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$10;->this$0:Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->teamSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p1, v1, v0}, Landroid/widget/Spinner;->setSelection(IZ)V

    .line 259
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$10;->this$0:Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getWorld()Lpl/mkrstudio/truefootball3/objects/World;

    move-result-object p1

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$10;->this$0:Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->leagues:Ljava/util/List;

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$10;->this$0:Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->leagueSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/objects/World;->getTeamGroupByCode(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$10;->this$0:Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->teamSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getOriginalName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 262
    :cond_1
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$10;->this$0:Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->teamSpinner:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/widget/Spinner;->setSelection(IZ)V

    .line 263
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$10;->this$0:Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getWorld()Lpl/mkrstudio/truefootball3/objects/World;

    move-result-object p1

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$10;->this$0:Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->leagues:Ljava/util/List;

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$10;->this$0:Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->leagueSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/objects/World;->getTeamGroupByCode(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$10;->this$0:Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->teamSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getOriginalName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    :goto_0
    return-void
.end method
